import argparse
import math
import numpy as np
import struct

vector_cases = [{'step':5, 'N':52}, {'step':1/8.0,'N':2041}, {'step':1/1024.0, 'N':261121}]

def hex(num, format='!f'):
    return ''.join('{:0>2X}'.format(c) for c in struct.pack(format, num))

def hexToNum ( string, format='!f'):
  return struct.unpack(format, bytes.fromhex(string))[0]

def gen_vector (args):
  return [x * args['step'] for x in range(0,args['N'])]

def cosine_func(x, cos = np.cos):  
  res =  0.5 * x + np.power(x,2) * cos((x-128)/128)
  return res

def task3_func(x):
  return x + x**2

def compute_func(vec, func, type=np.double):
  vals = vec.astype(type)
  return (func(vals)).sum(-1)
  # return sum([func(x) for x in np.array(vec, dtype=type)])

if __name__ == '__main__':
  # Instantiate the parser
  parser = argparse.ArgumentParser(description='Test accuracy for test cases')

  parser.add_argument('task_num', type=int)
  parser.add_argument('--fpga-val', type=str)
  
  
  args = parser.parse_args()
  
  test_vector = gen_vector(vector_cases[args.task_num - 1]) 
  
  # print(test_vector)
  double_res = compute_func(test_vector, cosine_func, type=np.float64)
  single_res = compute_func(test_vector, cosine_func, type=np.float32)
  
  print('float64',hex(double_res, '!d'), double_res)
  print('float32',hex(single_res), single_res)
  
  if (args.fpga_val is not None) :
    measured_val = hexToNum(args.fpga_val)
    
    print('float32 abs err', abs(single_res - measured_val), 'rel', abs(single_res - measured_val)/single_res)
    print('float64 abs err', abs(double_res - measured_val), 'rel', abs(double_res - measured_val)/double_res)
    
  
  
  
  
  

