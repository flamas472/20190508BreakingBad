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
