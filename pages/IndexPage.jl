module IndexPage
include("../components/tailwind.jl")
using JSServe
using .TW

app = App() do session
    return TW.Wrapper(
        class = "container mx-auto px-2",
        DOM.h1("Hello World", class="text-3xl font-bold mb-4 mt-2"), 
        TW.Button("Default"),
        TW.Button("Small Button", size="sm"),
        TW.Button("Extra Small Button", size="xs"),
        TW.Button("Custom", class="border-2 border-red-500"),
    )
end
    
export app
end