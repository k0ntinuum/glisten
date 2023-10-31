

function encrypt(p, q, r)
    R = vec(q)
    l =  length(R)
    for i in 1:r
        #k = spin(q,i)
        p = encode(p,k,R[guard(i,l)])
        p = reverse(p)
    end
    p
end

function decrypt(p, q, r)
    R = vec(q)
    l =  length(R)
    for i in 1:r
        #k = spin(q,r + 1 - i)
        p = reverse(p)
        p = decode(p,k,R[guard(r + 1 - i,l)])
    end
    p
end