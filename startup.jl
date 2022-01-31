ENV["JULIA_REVISE_POLL"] = "1"

using Revise
using OhMyREPL

ENV["PLOTS_DEFAULT_BACKEND"] = "PyPlot"

# ENV["PLOTS_DEFAULT_BACKEND"] = "GR"
# ENV["GKSwstype"]="nul"
using Plots
using Plots.PlotMeasures: mm

default(
    fontfamily = "Fira Sans", 
    dpi=200,
    linewidth=1.5, label="",
    titlefontsize=(16+8), guidefontsize=(12+4), 
    tickfontsize=(8+4), legendfontsize=(12+4),
    left_margin=15mm, right_margin=20mm, 
    top_margin=20mm, bottom_margin=15mm)


# default(
#     fontfamily = "Computer Modern", linewidth=1.5, label="",
#     titlefontsize=(16+8), guidefontsize=(11+5), 
#     tickfontsize=(8+4), legendfontsize=(8+4),
#     left_margin=5mm, right_margin=5mm)


enable_autocomplete_brackets(false)
# user_defaults = Plots._plots_defaults()
# Plots.theme(pop!(user_defaults, :theme); user_defaults...)
