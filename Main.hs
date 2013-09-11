module Main where

import           Control.Applicative                  ((<$>))
import           Controllers.Home                     (home, login)
import           Network.Wai.Middleware.RequestLogger (logStdoutDev)
import           System.Environment                   (getEnv)
import           Web.Scotty                           (middleware, scotty)


main :: IO ()
main = do
  port <- read <$> getEnv "PORT"
  scotty port $ do
         middleware logStdoutDev
         home >> login









