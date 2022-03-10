-- Primera definición: Con condicionales
fact1 :: Integer -> Integer
fact1 n = if n == 0 then 1
            else n * fact1(n-1)

-- Segunda definición: Mediante patrones
fact2 :: Integer -> Integer
fact2 0 = 1
fact2 n = n * fact2(n-1)

-- Tercera definición: Mediante predefinidas
fact3 :: Integer -> Integer
fact3 n = product[1..n]