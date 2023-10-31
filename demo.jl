function nth_word(n :: Int64)
    s = string(n, base = length(alph))
    a =  zeros(Int64, length(s))
    for i in eachindex(a)
        a[i] = parse(Int64, s[i:i], base = length(alph)) + 1
    end
    a
end

function demo()
    k = key(n)
    printkey(k)
    p = text(t)
    c  = encrypt(p,k,r)
    d  = decrypt(c,k,r)
    @printf "p        "
    printvec(p)
    @printf "c        "
    printvec(c)
    # @printf "d        "
    # printvec(d)
    # @printf "p == d   "
    # printvec(p .== d)
    # @printf "p != c   "
    # printvec(p .!= c)
    if p != d @printf "ERROR" end
end

function codedemo()

    printkey(k)
    for i in 500000000:500000200
        #p = text(t)
        p = nth_word(i)
        c  = encrypt(p,k,r)
        d  = decrypt(c,k,r)
        # c  = encode(p,k,1)
        # d  = decode(c,k,1)
        @printf "f "
        printvec(p)
        @printf " = "
        printvec(c)
        @printf "\n"
        # @printf "d        "
        # printvec(d)
        if p != d @printf "ERROR" end
    end
end