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