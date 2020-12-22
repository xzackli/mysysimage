## my julia sysimage for general science use

* I put this repository in `$HOME/Projects`.
* To compile, run `julia make.jl`. 
* vscode settings are to find the kernel generally in `$HOME/Projects/mysysimage`


To install the IJulia kernel, it can be convenient to run
```julia
using IJulia
installkernel("Julia sysimg", "--sysimage=/home/zequnl/Projects/mysysimage/mysys.dylib", env=Dict("JULIA_NUM_THREADS"=>"32"))
```

On my windows machine:

```julia
using IJulia
installkernel("Julia sysimg", "-J/home/zequnl/src/mysysimage/mysys.dylib", env=Dict("JULIA_NUM_THREADS"=>"6"))
```


### Aliases

```bash
alias julia0="/home/zequnl/Installs/bin/julia-1.5.3/bin/julia"
alias julia="/home/zequnl/Installs/bin/julia-1.5.3/bin/julia --sysimage=/home/zequnl/Projects/mysysimage/mysys.dylib"
```