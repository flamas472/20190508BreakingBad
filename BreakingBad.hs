module BreakingBad where

    data Meta = UnaMeta {
        color :: String,
        peso :: Float,
        pureza :: Int
    }deriving (Show)

    data Personaje = UnPersonaje {
        nombre :: String,
        estado :: String,
        aguante :: Float,
        purezaDeFabricacionMax :: Int,
        meta :: Meta,
        dinero :: Dinero
    }deriving (Show)

    data Dinero = UnDinero {
        montoSucio :: Int,
        montoLimpio :: Int
    }deriving (Show)

    consumir :: Meta -> Personaje -> Personaje
    consumir meta personaje
     |(aguante personaje < peso meta) = personaje {estado = "durisimo"}
     |(aguante personaje == peso meta) = personaje {estado = "duro"}
     |(aguante personaje > peso meta) = personaje {estado = "no tan duro"}
    
    lavarDinero :: Dinero -> Dinero
    lavarDinero dinero = UnDinero 0 ((montoLimpio dinero) + (montoSucio dinero))

    -- prueba branch
