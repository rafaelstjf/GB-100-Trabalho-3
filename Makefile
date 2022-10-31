Opt:
	g++ -Wall -O2 -c -fopt-info-vec -ftree-vectorize -fopt-info-vec-missed main_opt.cpp
	g++ -o main_nopt main_nopt.o
	
Opt_intel:
	icc -O2 -qopt-report=1 -qopt-report-phase=vec -vec main_opt.cpp -o main_opt_intel

Opt_omp:
	g++ -Wall -fopenmp -O2 -c -fopt-info-vec -ftree-vectorize -fopt-info-vec-missed main_opt_omp.cpp
	g++ -o main_opt_omp main_opt_omp.o
	
Opt_intel_omp:
	icc -O2 -openmp -qopt-report=1 -qopt-report-phase=vec -vec main_opt_omp.cpp -o main_opt_omp_intel

Nopt:
	g++ -Wall -O2 -c -fopt-info-vec -ftree-vectorize -fopt-info-vec-missed main_nopt.cpp
	g++ -o main_nopt main_nopt.o

Nopt_intel:
	icc -O2 -qopt-report=1 -qopt-report-phase=vec -vec main_nopt.cpp -o main_nopt_intel

Nopt_omp:
	g++ -Wall -O2 -fopenmp -c -fopt-info-vec -ftree-vectorize -fopt-info-vec-missed main_nopt_omp.cpp
	g++ -o main_nopt_omp main_nopt_omp.o

Nopt_intel_omp:
	icc -O2 -openmp -qopt-report=1 -qopt-report-phase=vec -vec main_nopt_omp.cpp -o main_nopt_omp_intel