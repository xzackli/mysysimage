
import Pkg
Pkg.add("PackageCompiler")
using PackageCompiler

packages = [
    :Revise, :OhMyREPL,
    :LaTeXStrings, :Plots, :IJulia, :PyPlot,
    :FileIO, :JLD2, :DataFrames,
    :CSV, :BenchmarkTools,
    :StaticArrays, :CairoMakie
]

Pkg.update()
for package in packages
    Pkg.add(string(package))
end



using Pkg
packages = [:PyCall]

Pkg.update()
Pkg.add("PyCall")

pythonbin = read(`which python`, String)
pythonbin = replace(pythonbin, "\n" => "")
ENV["PYTHON"] = pythonbin
Pkg.build("PyCall")
println("Python ", ENV["PYTHON"])

