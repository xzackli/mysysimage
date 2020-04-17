#!/usr/bin/env julia 

using Pkg
Pkg.add("PackageCompiler")
using PackageCompiler

packages = [
    :Revise, :OhMyREPL, :IJulia,
    :PyPlot,
    :FileIO, :JLD2, :CSV, :DataFrames
]

Pkg.update()
for package in packages
    Pkg.add(string(package))
end
Pkg.precompile()

create_sysimage(
    packages; 
    precompile_statements_file = "ohmyrepl_precompile.jl",
    precompile_execution_file = "precompile_execution.jl", 
    sysimage_path = "mysys.dylib"
)
