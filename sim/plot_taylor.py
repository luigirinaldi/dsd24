import numpy as np
import argparse
import matplotlib.pyplot as plt
import tikzplotlib
import sim as simFuncs
   
from functools import partial
# matplotlib.use("pgf")
# matplotlib.rcParams.update({
#     "pgf.texsystem": "pdflatex",
#     'font.family': 'serif',
#     'text.usetex': True,
#     'pgf.rcfonts': False,
# })

def savefigs(filename):
  plt.savefig(filename+ '.pdf')
  # plt.savefig(filename+ '.pgf')
  plt.savefig(filename+ '.eps', format='eps')
  # tikzplotlib.save(filename+ '.tex')

def macTerm(x, n):
  return_val = np.divide((np.power(-1,n, dtype=np.float32) * np.power(x,n*2, dtype=np.float32) ),(np.math.factorial(n*2)), dtype=np.float32)
  # print(return_val.dtype)
  return return_val

def MacLaurinCos(x, terms = 4):
  return np.sum(np.vectorize(macTerm)(x, np.arange(0,terms)))

macLaurCosVec = np.vectorize(MacLaurinCos)

if __name__=='__main__' :
  # Instantiate the parser
  parser = argparse.ArgumentParser(description='Taylor Series testing')
  parser.add_argument('--samples', type=int, default=100)
  
  parser.add_argument('--saveimg', type=bool, default=False)
  
  args = parser.parse_args()
  
  rng = np.random.default_rng()
  
  random_samples = rng.random(size=args.samples) * 2 - 1
  
  
  
  # Taylor for different number of terms
  
  msefs = []
  mseds = []
  
  terms_tested = range(1,12)
  
  for num_terms in terms_tested:
    correct_cos_f = np.cos(random_samples.astype(np.float32))
    correct_cos_d = np.cos(random_samples.astype(np.float64))
    
    taylor_cos = macLaurCosVec(random_samples.astype(np.float32), num_terms)
    
    # print(correct_cos_f.dtype, correct_cos_d.dtype, taylor_cos.dtype)
    # print(np.stack((correct_cos_d, correct_cos_f,taylor_cos),axis=1))
    
    msef = np.sum(np.power(correct_cos_f - taylor_cos, 2)) / args.samples
    msed = np.sum(np.power(correct_cos_d - taylor_cos, 2)) / args.samples
    
    msefs.append(msef)
    mseds.append(msed)

    print(num_terms, msef, f'{msef * 100:.4f}%', msed, f'{msed * 100:.4f}%')
  
  fig, ax = plt.subplots()
  
  ax.plot(terms_tested, msefs, '-o', label='float32')
  ax.plot(terms_tested, mseds, '-o', label='float64')
  
  ax.set_title('MSE of cosine function vs number of Taylor Expansion terms')
  ax.legend()
  ax.set_yscale('log')
  ax.set_xticks(terms_tested)
  ax.grid()

  if args.saveimg : savefigs('./img/cos_vs_terms')
  
  plt.show()
  
  test_input = simFuncs.gen_vector(simFuncs.vector_cases[2])
  terms_tested = range(1,5)
  
  test3_errs = [
 -0.22827409,
 0.012379428,
 -0.000303999,
 4.320685e-06
  ]
  
  ## Testing entire function vs number of terms in Taylor Expansion
  
  # for n_terms in terms_tested:
  #   resf = simFuncs.compute_func(
  #     test_input, 
  #     simFuncs.cosine_func,
  #     type=np.float32)
  #   rest = simFuncs.compute_func(
  #     test_input, 
  #     partial(simFuncs.cosine_func, cos=partial(macLaurCosVec, terms=n_terms)),
  #     type=np.float32)
    
  #   rel_err = (resf - rest)/resf
  #   test3_errs.append(rel_err)
  #   print(n_terms, resf, rest, rel_err)
  # terms_tested = range(1,7)
  
  # mse_abss = []
  # mse_rels = []
  
  # for n_terms in terms_tested:
  #   test_input = np.random.randint(0,256, size=(args.samples, 1000))
  #   resf = simFuncs.compute_func(
  #     test_input, 
  #     simFuncs.cosine_func,
  #     type=np.float32)
  #   rest = simFuncs.compute_func(
  #     test_input, 
  #     partial(simFuncs.cosine_func, cos=partial(macLaurCosVec, terms=n_terms)),
  #     type=np.float32)
    
  #   mse_abs = np.sum(np.power(resf - rest, 2)) / args.samples
  #   mse_rel = np.sum(np.power((resf - rest) / resf, 2)) / args.samples
    
  #   mse_abss.append(mse_abs)
  #   mse_rels.append(mse_rel)
    
  #   print(n_terms, mse_abs, mse_rel)
  

  # fig, ax = plt.subplots()
  
  # ax.plot(terms_tested, mse_rels, '-o', label='1000 random samples')
  # ax.plot(terms_tested, np.abs(test3_errs), '-o', label='test3')
  
  # ax.set_title('Relative Error vs. number of Taylor Expansion Terms')
  # ax.legend()
  # ax.set_yscale('log')
  # ax.set_xticks(terms_tested)
  # ax.grid()

  # if args.saveimg : savefigs('./img/relerr_vs_terms')
  
  # plt.show()
