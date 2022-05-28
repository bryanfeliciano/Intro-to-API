module Main where

import Data.Text 
import Network.Wreq


import Lib

data TranslateRequest = TranslateRequest {
    q:: Text,
    source:: Text,
    target:: Text,
    format:: Text
} deriving (Show)

main :: IO ()
main = do 
    rsp <- post "https://translate.argospentech.com/translate" 
    print rsp
