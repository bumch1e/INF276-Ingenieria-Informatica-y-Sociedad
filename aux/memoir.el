;; -*- lexical-binding: t; -*-

(TeX-add-style-hook
 "memoir"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("memoir" "")))
   (TeX-run-style-hooks
    "latex2e"
    "preamble"
    "sections/frontmatter/cover"
    "sections/frontmatter/preface"
    "sections/backmatter/appendix"
    "sections/backmatter/references"
    "sections/mainmatter/content/projects"
    "sections/mainmatter/content/definitions"
    "sections/mainmatter/content/reasoning"
    "sections/mainmatter/content/cognitive_bias"
    "sections/mainmatter/content/critical_thinking"
    "sections/mainmatter/content/solve_problems"
    "sections/mainmatter/content/moral_and_ethics"
    "memoir10"))
 :latex)

