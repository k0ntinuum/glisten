using Random
using Printf
using LinearAlgebra
include("settings.jl")
include("print.jl")
include("key.jl")
include("code.jl")
include("crypt.jl")
include("demo.jl")

r = 100
#alph ="O|23456789ABCDEF"
alph = "~ABCDEFGHIJKLMNOPQRSTUVWXYZ"
n = length(alph)
k = key(n)