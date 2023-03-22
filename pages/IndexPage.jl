module IndexPage
    using JSServe
    app = App() do session
        return DOM.div(JSServe.TailwindCSS, DOM.h1("Hello There", class="bg-red-500"))
    end
    
    export app
end