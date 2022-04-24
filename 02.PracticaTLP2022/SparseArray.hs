module SparseArray 
where

data Value a = Null | Value a 
  deriving (Eq,Read,Show)
data SparseArray a = Vacio | Nodo (Value a) (SparseArray a) (SparseArray a)
  deriving (Eq,Read,Show)

-- Función num2bin: recibe un Int y devuelve una lista con los dí­gitos de su representación en binario --
num2bin :: Int -> [Bool]
num2bin 0 = [False]
num2bin n = num2binAux n
  where num2binAux :: Int -> [Bool]
        num2binAux 0 = []
        num2binAux n = (num2binAux (div n 2))++[(mod n 2)==1]

-- Función newSparseArray: devuelve un SparseArray vacío --
newSparseArray :: Eq a => SparseArray a
newSparseArray = Vacio


-- Función set: recibe un SparseArray, una posición y un elemento y cambia el valor del SparseArray de dicha posición --
set :: Eq a => SparseArray a -> Int -> a -> SparseArray a
set sa idx elem = setAuxiliar sa (num2bin(idx)) elem

setAuxiliar :: Eq a => SparseArray a -> [Bool] -> a -> SparseArray a
-- Patrón para árbol vacío y lista vacía

-- Patrón para árbol vacío y lista llena

-- Patrón para árbol lleno y lista vacía

-- Patrón para árbol lleno y lista llena
setAuxiliar (Nodo i izq der) (x:xs) elem
  | x == False = (Nodo i (setAuxiliar izq xs elem) der)
  | x == True = (Nodo i izq (setAuxiliar der xs elem))


-- Función get: recibe un SparseArray y una posición y devuelve el elemento del SparseArray en dicha posición --
get :: Eq a => SparseArray a -> Int -> (Value a)
get Vacio idx = Null
get (Nodo nsa sa1 sa2) idx 
  | idx <= 10 = nsa 
  | idx > 10 =  nsa
 

-- Función delete: recibe un SparseArray y una posición y devuelve el SparseArray resultado de eliminar dicha posición --
--                 También elimina todos los nodos vacios que resulten de la eliminación                               --
delete :: Eq a => SparseArray a -> Int -> SparseArray a
delete a idx 
  = Vacio
