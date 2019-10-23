using Documenter, ComputationalBiologyCourse

makedocs(
    sitename = "Computational Biology Course",
    pages = [
        "Home" => "index.md",
        "Syllabus" => "Syllabus.md",
        "Lesson 1 - Getting Started" => [
            "Lesson1/index.md",
            "Windows Users" => "Lesson1/0_windows.md",
            "Using the Terminal" => "Lesson1/1_terminal.md",
            "Git for Version Control" => "Lesson1/2_git.md"
            ]
    ],
    authors = "Kevin Bonham, PhD",
    format = Documenter.HTML(
        prettyurls = get(ENV, "CI", nothing) == "true")
)

deploydocs(
    repo = "github.com/wellesley-bisc195/computing_bio_course.git",
    target = "build",
    deps = nothing,
    make = nothing
)