using Documenter, Winds

makedocs(
    modules = [Winds],
    format = Documenter.HTML(),
    checkdocs = :exports,
    sitename = "Winds.jl",
    pages = Any["index.md"]
)

deploydocs(
    repo = "github.com/yakir12/Winds.jl.git",
)
