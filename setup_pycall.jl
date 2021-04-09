using Pkg
packages = [:PyCall]

Pkg.update()
Pkg.add("PyCall")

pythonbin = read(`which python`, String)
pythonbin = replace(pythonbin, "\n" => "")
ENV["PYTHON"] = pythonbin
Pkg.build("PyCall")
println("Python ", ENV["PYTHON"])
Pkg.precompile()

