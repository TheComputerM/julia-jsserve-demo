module TW

import JSServe: DOM, TailwindCSS, Asset
using Hyperscript

function Wrapper(args...; class="", attributes...)
    ResetCSS = DOM.link(rel="stylesheet", href="https://cdn.jsdelivr.net/npm/@unocss/reset/tailwind.min.css")
    Fonts = DOM.link(rel="stylesheet", href="https://fonts.bunny.net/css?family=inter:300,400,500,600,700")
    UnoCSS = DOM.script(src="https://cdn.jsdelivr.net/npm/@unocss/runtime/uno.global.js")
    FontsCSS = DOM.style("body {font-family: 'Inter', sans-serif;}")
    return DOM.div(ResetCSS, Fonts, FontsCSS, UnoCSS, args...; attributes..., class)
end
export Wrapper

function Button(args...; class="", as="button", type="default", size="md", attributes...)
    type_class = get(
        Dict(
            "default" => "bg-indigo-600 hover:bg-indigo-700 font-medium text-white"
        ),
        type,
        "default"
    )

    size_class = get(
        Dict(
            "xs" => "px-3 py-2 text-xs rounded-sm",
            "sm" => "px-3 py-2 text-sm rounded-md",
            "md" => "px-5 py-2.5 text-sm rounded-lg"
        ),
        size,
        ""
    )

    return DOM.um(as, args...; class="$class $type_class $size_class", attributes...)
end
export Button

end