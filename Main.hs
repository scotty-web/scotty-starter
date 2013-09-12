module Main where

import           Control.Applicative                  ((<$>))
import           Controllers.Home                     (home, login)
import           Network.Wai.Middleware.RequestLogger (logStdoutDev)
import           Network.Wai.Middleware.Static        (addBase, noDots,
                                                       staticPolicy, (>->))
import           System.Environment                   (getEnv)
import           Web.Scotty                           (middleware, scotty)

main :: IO ()
main = do
  port <- read <$> getEnv "PORT"
  scotty port $ do
         middleware $ staticPolicy (noDots >-> addBase "static/images") -- for favicon.ico
         middleware logStdoutDev
         home >> login


