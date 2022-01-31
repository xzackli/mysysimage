@time begin
using Plots

x = 0:0.01:4.0
y = sin.(x) .* exp.(x) .+ 0.1
p = plot(x, y, label="polarization", legend=:bottomleft)
plot!(x, y .* 2, label="temperature",
xlabel=raw"$\mathrm{1}\ell$")
ylabel!(raw"$\mathrm{Beam},\, B_{\!\ell}$")
end

##
histogram(randn(1000), bins = :scott, weights = repeat(1:5, outer = 200))

##
l = @layout([a{0.1h}; b [c; d e]])
plot(randn(100, 5), layout = l, t = [:line :histogram :scatter :steppre :bar], leg = false, ticks = nothing, border = :none)

##
plot(Plots.fakedata(100, 10), layout = 4, palette = cgrad.([:grays :blues :heat :lightrainbow]), bg_inside = [:orange :pink :darkblue :black])

##
z = rand(4,10)
heatmap(z, aspect_ratio = 1)
