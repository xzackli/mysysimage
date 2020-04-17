using Pkg

Pkg.add("PackageCompiler")
using PackageCompiler

packages = [
    :Revise, :OhMyREPL, 
    :Plots, :StatsPlots, 
    :FileIO, :JLD2, :CSV, :DataFrames
]

Pkg.update()
for package in packages:
    Pkg.add(string(package))
Pkg.precompile()

create_sysimage(
    packages; 
    precompile_execution_file = "precompile_training.jl", 
    # sysimage_path = "sysimage_plots.dylib",  # not used due to replace_default
    replace_default = true)
