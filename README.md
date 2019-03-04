Author : Souradeep Dutta

Contact: souradeep.dutta@colorado.edu

This directory contains some sample benchmarks systems for the ARCH 2019 AI Model
Verification category. The models used here were a part of the HSCC 2019 paper on
'Reachability Analysis for Neural Feedback Systems using Regressive Polynomial Rule Inference'

In total there are 11 benchmarks in the directory : ./Benchmarks/Ex_XXX/
The benchmarks are present as Matlab simulation scripts to produce trajectories starting
from some initial set.
To produce the trajectories run the script : 'simulate_with_NN.m' inside each folder.
The details of the ODE model can be found inside : 'system_eq_dis.m'

For verification purpose, we wish to compute reach sets over some bounded
horizon. The initial sets, and the bounded time horizon can be found in the files
'./Benchmarks/Ex_XXX/simulate_with_NN.m'


The description of the network format, in case it is required to be exported to
some other format can be found in :
https://github.com/souradeep-111/sherlock/blob/master/sherlock-network-format.pdf

Please feel free to reach out if you have further questions !

Cite the following paper if you use these benchmarks :

Reachability Analysis for Neural Feedback Systems using Regressive Polynomial Rule Inference,
by Souradeep Dutta, Xin Chen and Sriram Sankaranarayanan
HSCC 2019, Montreal, Canada

Bibtex:

@inproceedings{Dutta_Others__2019__Reachability,
author = { Souradeep Dutta and Xin Chen and Sriram Sankaranarayanan },
title = { Reachability Analysis for Neural Feedback Systems using Regressive Polynomial Rule Inference },
booktitle = { Hybrid Systems: Computation and Control (HSCC) },
year = { 2019 },
pages = { TBA },
publisher = { ACM Press }}
