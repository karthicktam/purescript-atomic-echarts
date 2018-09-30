module Dummy where

type Grid = 
 {    id :: String
    , show :: Boolean -- default ::    false
    , zlevel :: Number -- default  ::   0
    , z :: Number -- default  ::   2
    , left :: String -- default  ::   10%
    --, left :: Number
    , top :: String -- default ::    60
    --, top :: Number
    , right :: String -- default ::    10%
    --, right :: Number
    , bottom :: String -- default ::    60
    --, bottom    Number
    , width :: String -- default  ::   auto
    --, width :: Number
    , height :: String -- default   ::  auto
    --, height :: Number
    , containLabel :: Boolean --default  ::   false
    , backgroundColor :: Color --default   ::  transperant
    , borderColor :: Color --default  ::   #ccc
    , borderWidth :: Number  --default  ::   1
    , shadowBlur :: Number
    , shadowColor :: Color
    , shadowOffsetX :: Number --default   ::  0
    , shadowOffsetY :: Number --default  ::   0
    , tooltip :: 
     {  show :: Boolean -- default ::    true
      , trigger :: String --[ default: 'item' ]
      , axisPointer :: 
       { type :: String --[ default: 'line' ]
       , axis :: String --[ default: 'auto' ]
       , snap :: Boolean
       , z :: Numnber
       , label :: 
        { show :: Boolean -- default ::    false
        , precison :: Number --[ default: 'auto' 
        --, precision :: String
        , formatter  :: String --default ::   null 
        --, formatter :: Function
        , margin :: Boolean --[ default: 3 ]
        , color :: Color -- [ default: '#fff' ]
        , fontStyle :: String --[ default  ::  'normal' ]
        , fontWeight :: String --[ default ::   'normal' ]
        , fontFamily :: String --[ default ::   'sans-serif' ]
        , fontSize :: Number --[ default  ::  12 ]
        , lineHeight :: Number 
        , width :: String -- default  ::   auto
        -- , width :: Number
        , height :: String -- default  ::   auto
        -- , height :: Number
        , textBorderColor :: String --[ default ::   'transparent' ]
        , textBorderWidth :: Number --[ default  ::  0 ]
        , textShadowColor :: String --[ default  ::  'transparent' ]
        , textShadowBlur :: Number --[ default  ::  0 ]
        , textShadowOffsetX :: Number --[ default  ::  0 ]
        , textShadowOffsetY :: Number --[ default ::   0 ]
        , padding :: String --[ default: [5, 7, 5, 7] ]
         --, padding :: Array
        , backgroundColor :: String --[ default ::   'auto' ]
        , borderColor :: String --[ default  ::  'null' ]
        , borderWidth :: String --[ default  ::  0 ]
        , shadowColor :: Color --[ default: #aaa ]
        , shadowBlur :: Number --[ default  ::  3 ]
        , shadowOffsetX :: Number -- [ default ::   0 ]
        , shadowOffsetY :: Number -- [ default  ::  0 ]
        }
       , lineStyle :: 
        { color :: Color -- default: #555 ]
        , width :: Number -- default: 1 
        , type :: String --[ default: solid ]
        , shadowBlur :: Number
        , shadowColor :: Color
        , shadowOffsetX :: Number --default :: 0
        , shadowOffsetY :: Number --default :: 0
        , opacity :: Number
        }
       , shadowStyle :: 
        { color :: Color -- default: 'rgba(150,150,150,0.3) ]
        , shadowBlur :: Number
        , shadowColor :: Color
        , shadowOffsetX :: Number --default :: 0
        , shadowOffsetY :: Number --default :: 0
        , opacity :: Number 
        }
       , crossStyle :: 
        { color :: Color -- default: #555 ]
        , width :: Number -- default: 1 
        , type :: String --[ default: dashed ]
        , shadowBlur :: Number
        , shadowColor :: Color
        , shadowOffsetX :: Number --default :: 0
        , shadowOffsetY :: Number --default :: 0
        , opacity :: Number
        }  
       }
      , position :: Array 
      --, position :: String
      , formatter :: Function 
      --, formatter :: String 
      , backgroundColor :: Color -- [ default ::   'rgba(50,50,50,0.7)' ]
      , borderColor :: Color -- [ default  ::  '#333' ]
      , borderWidth :: Number -- [ default ::   0 ]
      , padding :: Number --default ::   5
      , textStyle :: {}
      , extraCssText :: String 
     }
}