from fxpmath import Fxp
import numpy as np
import math

def cordic_cos (theta, n_iter = 10):
    DATA = Fxp(None, True, n_frac=10,n_int=1)
    angles = Fxp(np.array([math.atan(math.pow(2,-n)) for n in range(n_iter)])).like(DATA)
    print('angles:', angles)
    x = Fxp(np.zeros(n_iter+1)).like(DATA)
    y = Fxp(np.zeros(n_iter+1)).like(DATA)
    z = Fxp(np.zeros(n_iter+1)).like(DATA)
    
    x[0] = 1
    y[0] = 0
    z[0] = theta
    
    for i in range(0,n_iter):
        d = -1 if z[i] >= 0 else 1
        
        x[i+1]= x[i] - d * math.pow(2,-i) * y[i]
        y[i+1]= y[i] + d * math.pow(2,-i) * x[i]
        z[i+1]= z[i] + d * angles[i]
    
   
    # x = np.array(x)
    # y = np.array(y)
    # z = np.array(z)

    print('x',x,'y',y,'z',z)
    
    coeff = np.prod([1/math.sqrt(1+ math.pow(2,-2*i)) for i in range(n_iter)])
    print(coeff)
    print(x*coeff, y*coeff, z*coeff)
    
    return x[-1]*coeff

def main():
    val = -math.pi/6
    # val = 0
    print(math.cos(val), cordic_cos(val,15))
    
if __name__ == "__main__":
    main()