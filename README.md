
<!-- README.md is generated from README.Rmd. Please edit that file -->

# anticonf

<!-- badges: start -->
<!-- badges: end -->

The goal of anticonf is to explore *configure* … particularly
[autoconf](https://en.wikipedia.org/wiki/Autoconf) which is widely used
in R for *generating a configure script* for building from source
against a system library installation, and a (lighthearted? and)
informal (?) modern unpacking of that referred to as
[anticonf](https://github.com/r-dbi/odbc/blob/main/configure) that just
creates a configure script manually, with some templated patterns.

## What is this

All that’s here is a script to obtain a bunch of examples, these exist
on CRAN but we only use that to obtain the links on github to the
*configure* raw script. For autoconf examples (the file is called
*configure.ac*) we just hardcode the key examples of interest (to me).

In **./configure/** (all the *configure* scripts) and in
**./configure.ac/** (all the *configure.ac* scripts) the files has the
name of the package they come from. They can’t be used as scripts
outside of their package context …

I just use them to read, and experiment with in bash. It’s easier than
scanning github source links constantly, and I can search them for
various patterns etc.

## Code of Conduct

Please note that the anticonf project is released with a [Contributor
Code of
Conduct](https://contributor-covenant.org/version/2/0/CODE_OF_CONDUCT.html).
By contributing to this project, you agree to abide by its terms.
