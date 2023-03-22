include("./serve.jl")

function main()
    input = readline()
    if input === "r"
        close(server)
        @info "Reloading ..."
        include("./serve.jl")
        main()
    else
        close(server)
    end
end

main()