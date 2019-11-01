# Winds.jl

![Lifecycle](https://img.shields.io/badge/lifecycle-experimental-orange.svg)<!--
![Lifecycle](https://img.shields.io/badge/lifecycle-maturing-blue.svg)
![Lifecycle](https://img.shields.io/badge/lifecycle-stable-green.svg)
![Lifecycle](https://img.shields.io/badge/lifecycle-retired-orange.svg)
![Lifecycle](https://img.shields.io/badge/lifecycle-archived-red.svg)
![Lifecycle](https://img.shields.io/badge/lifecycle-dormant-blue.svg) -->
[![Build Status](https://travis-ci.com/yakir12/Winds.jl.svg?branch=master)](https://travis-ci.com/yakir12/Winds.jl)
[![codecov.io](http://codecov.io/github/yakir12/Winds.jl/coverage.svg?branch=master)](http://codecov.io/github/yakir12/Winds.jl?branch=master)


This is a package for controlling fans.


## How to install
1. If you haven't already, install the current release of [Julia](https://julialang.org/downloads/) -> you should be able to launch it (some icon on the Desktop or some such).
2. Start Julia -> a Julia-terminal popped up.
3. type closed-square-bracket `]` once, you'll see the promt changing from `julia>` to `(v1.2) pkg>`
3. Copy: 
   ```julia
   add https://github.com/yakir12/COBS.jl https://github.com/yakir12/Winds.jl
   ```
   and paste it in the newly opened Julia-terminal (make sure you ), press Enter (this may take some time), and when it's done press BackSpace (or Delete) until the promt changes back to `julia>`.

## How to run
1. Copy: 
   ```julia
   using Winds
   main()
   ```
   and paste it in the newly opened Julia-terminal (make sure you ), press Enter (this may take some time).
2. A GUI-window will pop up, use this to control your fans. Note that you can call `main` with 1 or 2 optional
arguments, `min` and `max`, that set the range of the slider, preventing you from setting speeds outside that range.
