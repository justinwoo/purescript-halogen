module Halogen.Query.Input where

import Prelude

import Data.Maybe (Maybe)
import Data.Newtype (class Newtype)
import Web.DOM (Element)

newtype RefLabel = RefLabel String

derive instance newtypeRefLabel :: Newtype RefLabel _
derive newtype instance eqRefLabel :: Eq RefLabel
derive newtype instance ordRefLabel :: Ord RefLabel

data Input act
  = RefUpdate RefLabel (Maybe Element)
  | Action act

derive instance functorInput :: Functor Input
