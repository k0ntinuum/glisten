function guard(x :: Int64, p :: Int64) :: Int64
    while x > n
        x -= n
    end
    x
end

function roll(x :: Int64, p :: Int64) :: Int64
    x += p
    if x > n
        x -= n
    end
    x
end