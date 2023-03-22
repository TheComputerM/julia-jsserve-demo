using JSServe

include("./pages/IndexPage.jl")
import .IndexPage

routes = Dict("/" => IndexPage.app)

server = Server("127.0.0.1", 8080)
for page in routes
    route!(server, page)
end

@info "Server running, press q to close and r to reload..."
