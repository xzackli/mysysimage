atreplinit() do repl
    @async try
        sleep(0.1)
        @eval using Revise
        @async Revise.wait_steal_repl_backend()
    catch
        @warn("Could not load Revise.")
    end

    @async try
        sleep(0.1)
        @eval using OhMyREPL
        # don't want autocomplete brackets
        @eval OhMyREPL.enable_autocomplete_brackets(false)
    catch
        @warn("Could not load OhMyREPL.")
    end
end