# Comandos GHCi

:load - Cargar archivos .hs
:reload - Recargar archivos
:quit - Salir
:cd - Cambiar de directorio


# Comentarios
Single line: --
Multilinea: {-      -}


# Funciones
Es como declarar expresiones, pero poniendo *argumentos* antes del igual.


# ¿Cómo evaluaría GHCi la expresión quadruple 5?

quadruple x = double (double x)
double x = 2 * x

quadruple 5 
double(double 5)
double (2 * 5)
2 * (2 * 5)
2 * 10
20


# Where
Sirve para declarar variables locales con expresiones intermedias
que hacen falta para evaluar una función.


# Boolean
Con mayúscula: True, False.


# Evaluar tipos
Usando :type

El operador :: se traduce por "es de tipo".
Por ejemplo, si calculo :type True, me dice True :: Bool,
que se puede leer como True es de tipo Bool.


# Ejercicios

1. negate :: Int -> Int
2. (||) :: Bool -> Bool -> Bool
3. monthLength :: Bool -> Int -> Int
4. f :: Bool -> Bool -> Bool
5. g :: Int -> Int


# Strings
String es una lista de caracteres.
Se concatenan con ++, no se concatenan con +.


# Listas y pares

* Listas. Deben tener el mismo tipo.
* : => concatenar por la izquierda.

* Tuplas. Entre paréntesis  tipos diversos, pero no crecen.

* fst: primer elemento de una 2-tupla
* snd: segundo elemento de una 2-tupla

* head / tail: para listas.


# Typeclasses
Numéricos
Tipos: Int, Integer, Double, Float
Tipoclases: Num, Fractional

fromIntegral: Convierte Integral a Num, lo cual es importante porque si le pasas un Integral a una función que espera un Num, falla.


# Ejercicios de listas

Listas de listas 1
1. 1:2:3:[]:[]
2. 1:[2,3]:4:[]
3. [1,2,3]:[]:[]

Listas de listas 2
1. [[], [1, 2, 3], [1, 2, 3]]
2. [[]]
3. [[1], []]
4. []
5. ["Hi", 1]

# 