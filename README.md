## my julia sysimage for general science use

* I put this repository in `$HOME/Projects`.
* To compile, run `julia make.jl`. 
* vscode settings are to find the kernel generally in `$HOME/Projects/mysysimage`

To install the IJulia kernel, it can be convenient to run
```julia
using IJulia
installkernel("Julia sysimg", "--sysimage=/home/zequnl/Projects/mysysimage/mysys.dylib")
```
