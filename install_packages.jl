using Pkg
packages = [:Revise, :OhMyREPL, :PyCall, :FileIO, :JLD2, :CSV, :DataFrames]

Pkg.update()
for package in packages
    Pkg.add(string(package))
end

Pkg.develop(url="git@github.com:xzackli/IJulia.jl.git")
Pkg.develop(url="git@github.com:xzackli/PyPlot.jl.git")

pythonbin = read(`which python`, String)
pythonbin = replace(pythonbin, "\n" => "")
ENV["PYTHON"] = pythonbin
Pkg.build("PyCall")
println("Python ", ENV["PYTHON"])
Pkg.precompile()

