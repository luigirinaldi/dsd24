from fxpmath import Fxp
import numpy as np
import math
import threading

def cordic_cos (theta, n_iter = 21):    
    DATA = Fxp(None, True, n_frac=30,n_int=1)
    angles = Fxp(np.array([math.atan(math.pow(2,-n)) for n in range(n_iter)])).like(DATA)
    # print('angles:', angles)
    x = Fxp(np.zeros((n_iter+1, theta.shape[-1]))).like(DATA)
    y = Fxp(np.zeros((n_iter+1, theta.shape[-1]))).like(DATA)
    z = Fxp(np.zeros((n_iter+1, theta.shape[-1]))).like(DATA)
    
    x[0] = np.ones(theta.shape[-1])
    z[0] = theta
    
    for i in range(0,n_iter):
        # if > 0 -1 else 1
        d = ((z[i] >= 0).astype(int) - 0.5) * -2
    
        x[i+1]= x[i] - d * (y[i] >> i)
        y[i+1]= y[i] + d * (x[i] >> i)
        z[i+1]= z[i] + d * angles[i]
       
    coeff = np.prod([1/math.sqrt(1+ math.pow(2,-2*i)) for i in range(n_iter)])
    
    return x[-1]*coeff

def mean_error_cos (c_iter, num_samples = 1000):
    
    sample_in = np.random.uniform(-1,1,size=num_samples)
    golden_out = np.cos(sample_in)
    
    # v_cordic = np.vectorize(cordic_cos)
    
    # sample_out = np.array([v_cordic(x,c_iter) for x in sample_in])
    sample_out = cordic_cos(sample_in,c_iter)
    error = (golden_out - sample_out).astype(np.float64)
    
    sample_mean = np.average(error)
    sample_std = np.average(np.square(error - sample_mean))
    
    conf95 = (sample_mean - 1.96*sample_std / math.sqrt(num_samples), sample_mean + 1.96*sample_std / math.sqrt(num_samples))
    abs_bound = (np.min(error), np.max(error))
    
    return sample_mean, sample_std, conf95, abs_bound

def thread_func(iter_num, sample_num, filename):
    mean, std, (c95l,c95h), (al,ah) = mean_error_cos(iter_num,sample_num)
    print(iter_num,  mean, std, (c95l,c95h), (al,ah))

    with open(filename,'a+') as f:
        f.write(f'{iter_num},{mean}, {std}, {c95l},{c95h}, {al},{ah}\n')

def main():
    data_save = 'data/cordic_mean_err_10e5_samples.csv'
    
    iter_range = range(1,40)
    num_samples = int(10e5)
    
    threads = [threading.Thread(target=thread_func,args=(i,num_samples,data_save)) for i in iter_range]
    
    with open(data_save,'a+') as f:
        f.write('num_iters,mean,std,c95l,c95h,al,ah\n')
    
    for iter_val in iter_range:
        mean, std, (c95l,c95h), (al,ah) = mean_error_cos(iter_val,num_samples)
        print(iter_val,  mean, std, (c95l,c95h), (al,ah))
    
        with open(data_save,'a+') as f:
            f.write(f'{iter_val},{mean}, {std}, {c95l},{c95h}, {al},{ah}\n')
    
    # res = cordic_cos(np.array([math.pi/4]))
    # print(res[0], res[0].bin(frac_dot=True))
    # res[0].info(verbose=5)
if __name__ == "__main__":
    main()