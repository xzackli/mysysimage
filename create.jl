using PackageCompiler

create_sysimage(
    [:Revise, :OhMyREPL, :Plots, :StatsPlots, :JLD2]; 
#   sysimage_path = "sysimage_plots.dylib",
    precompile_execution_file = "precompile_plot.jl", 
    replace_default = true)
