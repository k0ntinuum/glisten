

function encode(p,q,m)
    k = copy(q)
    c = zeros(Int64,length(p))
    for i in eachindex(p)
        c[i] = k[m,p[i]]
        #k[m,:] = map(x -> roll(x,p[i]), k[m,:])
        k[p[i],:] = map(x -> roll(x,p[i]), k[p[i],:])
        m = c[i]
    end
    c
end

function decode(c,q,m)
    k = copy(q)
    p = zeros(Int64,length(c))
    for i in eachindex(c)
        p[i] =  findfirst(isequal(c[i]),k[m,:])
        #k[m,:] = map(x -> roll(x,p[i]), k[m,:])
        k[p[i],:] = map(x -> roll(x,p[i]), k[p[i],:])
        m = c[i]
    end
    p
end
