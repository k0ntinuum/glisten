using Random
using Printf
using LinearAlgebra
include("settings.jl")
include("print.jl")
include("util.jl")
include("key.jl")
include("code.jl")
include("crypt.jl")
include("demo.jl")

r = 16
#alph ="O|23456789ABCDEF"
#alph = "~ABCDEFGHIJKLMNOPQRSTUVWXYZ"
alph = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
#alph = "0123456789"
#alph = "O|"
n = length(alph)
k = key(n)