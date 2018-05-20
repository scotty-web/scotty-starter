{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}


module Controllers.Home
    ( home
    , login
    , post
    ) where

import           Views.Home (homeView)
import           Web.Scotty (ScottyM, get, html, json)
import           Data.Aeson (ToJSON)
import           GHC.Generics

home :: ScottyM ()
home = get "/" homeView

login :: ScottyM ()
login = get "/login" $ html "login"

{-
  Example data structure to demonstrate JSON serialization
-}
data Post = Post
  { postId    :: Int
  , postTitle :: String } deriving Generic

instance ToJSON Post

post :: ScottyM()
post = get "/post" $ json $ Post 1 "Yello world"
