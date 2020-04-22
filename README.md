## my julia sysimage for general science use

My `settings.json`. I put this repository in `$HOME/Projects`.

Run `julia make.jl`. It will choose the Python for PyCall that `which python` returns. To install the IJulia kernel, it can be convenient to run
```julia
using IJulia
installkernel("Julia sysimg", "--sysimage=/home/zequnl/Projects/mysysimage/mysys.dylib")
```
