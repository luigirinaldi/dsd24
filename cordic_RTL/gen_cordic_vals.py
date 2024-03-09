import argparse
import math
import sys

def get_angles(iter_n):
    angles = [math.atan(math.pow(2.0,-i)) for i in range(iter_n)]
    final_coeff = math.prod([1/math.sqrt(1+ math.pow(2,-2*i)) for i in range(iter_n)])
    return angles, final_coeff

def convert_to_hex(num, prec):
    num_i = int(num*(2.0**prec))
    return f"{prec+2}'h{num_i:x}"

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("cos_file")
    parser.add_argument("tb_file")
    args = parser.parse_args()
    
    FRAC_PREC = None
    NUM_ITER = None
    iter_string = 'localparam ITER ='
    frac_string = 'localparam F ='
    
    with open(args.tb_file,'r') as fp:
        for l_no, line in enumerate(fp):
            if iter_string in line:
                n_iter_str = line[line.find(iter_string) + len(iter_string):line.find(';')]
                NUM_ITER = int(n_iter_str)
            elif frac_string in line:
                frac_str = line[line.find(frac_string)+ len(frac_string):line.find(';')]
                FRAC_PREC = int(frac_str)
    
    if NUM_ITER is None or FRAC_PREC is None:
        print("couldn't find NUM_ITER or FRAC_PREC")
        sys.exit(-1)
    else :
        print(NUM_ITER,FRAC_PREC)
        angles, coeff = get_angles(NUM_ITER)
        print(angles, coeff)        
        coeff = convert_to_hex(coeff,FRAC_PREC)
        angles = '{' + ', '.join([convert_to_hex(a,FRAC_PREC) for a in angles]) + '}'
        print(angles, coeff)
        
        angles_str = 'ANGLES [0:NUM_ITER-1] ='
        angle_sum_str = 'ANGLE_SUM ='
        
        file_copy = None
        with open(args.cos_file,'r') as fp:
            file_copy = fp.readlines()
        
        with open(args.cos_file,'w') as fp:
            
            for l_no, line in enumerate(file_copy):
                if angles_str in line:
                    newline = line[:line.find(angles_str) + len(angles_str)] + '\''+angles + ';\n'
                    file_copy[l_no] = newline
                elif angle_sum_str in line:
                    newline = line[:line.find(angle_sum_str) + len(angle_sum_str)] + ' ' + coeff + ';\n'
                    file_copy[l_no] = newline
                    
            fp.write(''.join(file_copy))