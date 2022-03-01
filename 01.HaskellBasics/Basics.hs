{-
    Primer archivo Haskell,
    y primer comentario de cabecera.
-}


area r = pi * r ^ 2   -- longitud del circulo

quita12 x = (x / 2) - 12

volumen ancho largo alto = ancho * largo * alto



-- Error where
heron a b c = sqrt (s * (s - a) * (s - b) * (s - c))
    where s = (a + b + c) / 2



-- Guards
absolute x
    | x < 0 = -x
    | otherwise = x



-- Typeclasses
x = 2
y = x + 3.1



-- Cons
cons8 :: (Num a) => [a] -> [a]
cons8 l = l ++ [8]



myCons :: [a] -> a -> [a]
myCons list thing = thing:list



-- Fifth element
-- fifthelement :: [a] -> a
-- fifthelement_s :: (Num b) => [a] -> b -> a