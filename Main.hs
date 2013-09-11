module Main where

import           Controllers.Home                     (home, login)
import           Network.Wai.Middleware.RequestLogger
import           System.Environment
import           Web.Scotty

main :: IO ()
main = scotty 3000 $ do
         middleware logStdoutDev
         home >> login









