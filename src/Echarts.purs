module ECharts where

type Option = 
  { title :: Title
  , legend :: Legend
  , grid :: Grid
  , xAxis :: XAxis
  , yAxis :: YAxis
  , polar ::  polar
  , radiusAxis :: RadiusAxis
  , angleAxis :: AngleAxis
  , radar :: Radar
  --, dataZoom :: Array DataZoom 
  --, visualMap :: Array VisualMap
  , tooltip :: ToolTip
  , axisPointer :: AxisPointer
  , toolbox :: ToolBox
  , brush :: Brush
  , geo :: Geo
  , parallel :: Parallel
  , parallelAxis :: ParallelAxis
  , singleAxis :: SingleAxis
  , timeline :: TimeLine
  , graphic :: Graphic
  , calendar :: Calendar
  , dataset :: DataSet
  , aria :: Aria
  , series :: Series
  , color :: Array Color -- Defaults ['#c23531','#2f4554', '#61a0a8', '#d48265', '#91c7ae','#749f83',  '#ca8622', '#bda29a','#6e7074', '#546570', '#c4ccd3']
  , backgroundColor :: Color
  , textStyle :: TextStyle
  , animation :: Boolean -- default :: true
  , animationThreshold :: Number -- default :: 2000
  , animationDuration  :: Number  -- default :: 1000
  --, animationDuration :: Function
  , animationEasing :: String -- default :: cubicOut
  , animationDelay :: Number -- dafault :: 0
  --, animationDelay :: Function
  , animationDurationUpdate :: Number -- default :: 300
  --, animationDurationUpdate :: Function
  , animationEasingUpdate :: String -- default :: cubicOut
  , animationDelayUpdate :: Number -- default :: 0
  --, animationDelayUpdate :: Function
  , useUTC :: Boolean -- default :: false
  }

type Title = 
    { id :: String
    , show :: Boolean -- default :: true
    , text :: String
    , target :: String -- default     blank
    , textStyle :: 
     { color :: Color -- default: '#333' ]
     , fontStyle :: String --[ default  ::  'normal' ]
     , fontWeight :: String --[ default ::   'normal' ]
     , fontFamily :: String --[ default ::   'sans-serif' ]
     , fontSize :: Number --[ default  ::  18 ]
     , align :: String
     , verticalAlign :: String
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
     , rich :: {}
     }
    , subtext :: String
    , sublink :: String
    , subtarget :: String --default :: blank
    , subtextStyle :: 
     { color :: Color --[ default: '#aaa' ]
     , fontStyle :: String --[ default  ::  'normal' ]
     , fontWeight :: String --[ default ::   'normal' ]
     , fontFamily :: String --[ default ::   'sans-serif' ]
     , fontSize :: Number --[ default  ::  12 ]
     , align :: String
     , verticalAlign :: String
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
     , rich :: {}
     } 
    , padding :: Number --default ::   5
    , itemGap :: Number --default ::  10
    , zlevel :: Number -- default  ::   0
    , z :: Number -- default  ::   2
    , left :: String -- default :: auto
    -- , left :: Number
    , top :: String -- default :: auto
    -- , top :: Number
    , right :: String -- default :: auto
    -- , right :: Number
    , bottom :: String -- default :: auto
    -- , bottom :: Number,
    , backgroundColor :: Color --default :: transperant
    , borderColor :: Color --default  ::   #ccc
    , borderWidth :: Number  --default ::    1
    , borderRadius :: Number --default  ::   0
    , borderRadius ::  Array
    , shadowBlur :: Number
    , shadowColor :: Color
    , shadowOffsetX :: Number --default :: 0
    , shadowOffsetY :: Number --default :: 0
}
type Legend = 
    { "type" :: String
    , id :: String
    , show :: Boolean -- default :: true
    , zlevel :: Number -- default ::    0
    , z :: Number -- default ::    2
    , left :: String -- default ::    auto
    -- , left :: Number
    , top :: String -- default :: auto
    -- , top :: Number,
    , right :: String -- default :: auto
    -- , right :: Number
    , bottom :: String -- default ::    auto
    --bottom :: Number
    , width :: String -- default  ::   auto
    -- , width :: Number
    , height :: String -- default  ::   auto
    -- , height :: Number
    , orient :: String -- default ::   horizontal
    , align :: String -- default  ::   auto
    , padding :: Number --default  ::  5
    , itemGap :: Number --default   ::  10
    , itemWidth :: Number --default  :: 25
    , itemHeight :: Number --default ::    14
    , symbolKeepAspect :: Boolean --default  ::   true
    , formatter  :: String --default ::   null 
    --, formatter :: Function
    , selectedMode  :: String 
    --, selectedMode :: boolean --default ::    true
    , inactiveColor :: Color --default ::    #ccc
    , selected  :: {}
    , textStyle :: 
     { color :: Color --[ default: "#fff" ]
     , fontStyle :: String --[ default  ::  'normal' ]
     , fontWeight :: String --[ default ::   'normal' ]
     , fontFamily :: String --[ default ::   'sans-serif' ]
     , fontSize :: Number --[ default  ::  12 ]
     , align :: String
     , verticalAlign :: String
     , lineHeight :: Number 
     , backgroundColor :: String --[ default ::   'transparent' ]
     --, backgroundColor :: {}
     , borderColor :: String --[ default  ::  'transparent' ]
     , borderWidth :: Number --[ default  ::  0 ]
     , borderRadius :: Number --[ default ::   0 ]
     , padding :: Number --[ default  ::  0 ]
     --, padding :: Array
     , shadowColor :: String --[ default  ::  'transparent' ]
     , shadowBlur :: Number --[ default  ::  0 ]
     , shadowOffsetX :: Number -- [ default ::   0 ]
     , shadowOffsetY :: Number -- [ default  ::  0 ]
     , width :: Number 
     --, width :: String
     , height :: Number 
     --, height :: String
     , textBorderColor :: String --[ default ::   'transparent' ]
     , textBorderWidth :: Number --[ default  ::  0 ]
     , textShadowColor :: String --[ default  ::  'transparent' ]
     , textShadowBlur :: Number --[ default  ::  0 ]
     , textShadowOffsetX :: Number --[ default  ::  0 ]
     , textShadowOffsetY :: Number --[ default ::   0 ]
     , rich :: {}
     }
    , tooltip :: {}
    , "data" :: 
     { name :: String
     , icon :: String
     , textStyle :: {}
     }
    , backgroundColor :: Color --default ::    transperant
    , borderColor :: Color --default  ::   #ccc
    , borderWidth :: Number  --default  ::   1
    , borderRadius :: Number --default  ::   0
    , borderRadius :: Array
    , shadowBlur :: Number
    , shadowColor :: Color
    , shadowOffsetX :: Number --default  ::   0
    , shadowOffsetY :: Number --default  ::   0
    , scrollDataIndex :: Number --default  ::   0
    , pageButtonItemGap :: Number --default  ::   5
    , pageButtonGap :: Number --default  ::   null
    , pageButtonPosition :: String --default ::    end
    , pageFormatter :: String --  default ::   '{current}/{total}' 
   --,  pageFormatter :: Function
   , pageIcons :: 
    { horizontal :: Array
    , vertical :: Array
    }
   , pageIconColor :: String -- default  ::  '#2f4554' ,
   , pageIconInactiveColor :: String -- default ::   '#aaa'
   , pageIconSize :: Number -- default   ::  15
   --, pageIconSize :: Array 
   , pageTextStyle :: 
    {  color :: Color -- default: '#333' ]
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
    }
   , animation :: boolean
   , animationDurationUpdate :: Number --default ::   800
}
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
type XAxis = 
 {    id :: String
    , show :: Boolean -- default     true
    , gridIndex :: Number -- default     0
    , position :: String
    , offset :: Number -- default :: 0
    , "type" :: String -- default   ::  category
    , name :: String
    , nameLocation :: String --default  ::   start
    , nameTextStyle :: 
     { color :: Color 
     , fontStyle :: String --[ default  ::  'normal' ]
     , fontWeight :: String --[ default ::   'normal' ]
     , fontFamily :: String --[ default ::   'sans-serif' ]
     , fontSize :: Number --[ default  ::  12 ]
     , align :: String
     , verticalAlign :: String
     , lineHeight :: Number 
     , backgroundColor :: String --[ default ::   'transparent' ]
     --, backgroundColor :: {}
     , borderColor :: String --[ default  ::  'transparent' ]
     , borderWidth :: Number --[ default  ::  0 ]
     , borderRadius :: Number --[ default ::   0 ]
     , padding :: Number --[ default  ::  0 ]
     --, padding :: Array
     , shadowColor :: String --[ default  ::  'transparent' ]
     , shadowBlur :: Number --[ default  ::  0 ]
     , shadowOffsetX :: Number -- [ default ::   0 ]
     , shadowOffsetY :: Number -- [ default  ::  0 ]
     , width :: Number 
     --, width :: String
     , height :: Number 
     --, height :: String
     , textBorderColor :: String --[ default ::   'transparent' ]
     , textBorderWidth :: Number --[ default  ::  0 ]
     , textShadowColor :: String --[ default  ::  'transparent' ]
     , textShadowBlur :: Number --[ default  ::  0 ]
     , textShadowOffsetX :: Number --[ default  ::  0 ]
     , textShadowOffsetY :: Number --[ default ::   0 ]
     , rich :: {}
     }
    , nameGap :: String --default  ::   15
    , nameRotate :: String --default ::    null
    , inverse  :: Boolean --default   ::  false
    , boundaryGap :: Boolean
   --,  boundaryGap :: Array
    , min :: Number -- default  ::   null
    --, min :: String
    , max :: Number -- default  ::   null
    --, max :: String
    , scale :: Boolean --default  ::   false
    , splitNumber :: Number -- default ::    5
    , minInterval :: Number
    , interval :: Number
    , logBase :: Number -- default ::    10
    , silent :: Boolean --default   ::  false
    , triggerEvent :: Boolean --default ::    false
    , axisLine :: 
     { show :: Boolean -- default  ::   true
     , onZero :: Boolean -- default  ::   true
     , onZeroAxisIndex :: Number
     , symbol :: String --[ default  ::  'none' ]
     --, symbol :: Array
     , symbolSize :: Array --[ default: [10, 15] ]
     , symbolOffset :: Array --[ default: [0, 0] ]
     --, symbolOffset :: Number
     , lineStyle :: {}
     }
    , axisTick :: 
     { show :: Boolean -- default  ::   true
     , alignWithLabel :: Boolean -- default  ::   false
     , interval :: Number -- default: 'auto' ]
     --, interval :: Function
     , inside :: Boolean -- default  ::   false
     , length :: Number --[ default: 5 ]
     , lineStyle :: {} 
     }
    , axisLabel :: 
     { show :: Boolean -- default  ::   true
     , interval :: Number -- default: 'auto' ]
     --, interval :: Function
     , inside :: Boolean -- default  ::   false
     , rotate :: Number --[ default: 0 ]
     , margin :: Number --[ default: 8 ]
     , formatter :: Function --[ default: null ]
     --, formatter :: String
     , showMinLabel :: Boolean -- default  :: null 
     , showMaxLabel :: Boolean -- default  :: null 
     , color :: Color
     --, color :: Function 
     , fontStyle :: String --[ default  ::  'normal' ]
     , fontWeight :: String --[ default ::   'normal' ]
     , fontFamily :: String --[ default ::   'sans-serif' ]
     , fontSize :: Number --[ default  ::  12 ]
     , align :: String
     , verticalAlign :: String
     , lineHeight :: Number
     , backgroundColor :: String --[ default ::   'transparent' ]
     --, backgroundColor :: {}
     , borderColor :: String --[ default  ::  'transparent' ]
     , borderWidth :: Number --[ default  ::  0 ]
     , borderRadius :: Number --[ default ::   0 ]
     , padding :: Number --[ default  ::  0 ]
     --, padding :: Array
     , shadowColor :: String --[ default  ::  'transparent' ]
     , shadowBlur :: Number --[ default  ::  0 ]
     , shadowOffsetX :: Number -- [ default ::   0 ]
     , shadowOffsetY :: Number -- [ default  ::  0 ]
     , width :: Number 
     --, width :: String
     , height :: Number 
     --, height :: String
     , textBorderColor :: String --[ default ::   'transparent' ]
     , textBorderWidth :: Number --[ default  ::  0 ]
     , textShadowColor :: String --[ default  ::  'transparent' ]
     , textShadowBlur :: Number --[ default  ::  0 ]
     , textShadowOffsetX :: Number --[ default  ::  0 ]
     , textShadowOffsetY :: Number --[ default ::   0 ]
     , rich :: {}
     }
    , splitLine :: 
     { show :: Boolean -- default  ::   true
     , interval :: Number -- default: 'auto' ]
     --, interval :: Function
     , lineStyle :: {}
     }
    , splitArea :: 
     { show :: Boolean -- default  ::   false
     , interval :: Number -- default: 'auto' ]
     --, interval :: Function
     , areaStyle :: 
      { color :: Array --[ default: ['rgba(250,250,250,0.3)','rgba(200,200,200,0.3)'] ]
       , shadowBlur :: Number
       , shadowColor :: Color
       , shadowOffsetX :: Number --default :: 0
       , shadowOffsetY :: Number --default :: 0
       , opacity :: Number 
      }
     }
    , "data" :: 
     { value :: String 
     , textStyle :: {}
     }
    , axisPointer :: 
     { triggerTooltip :: Boolean -- default  ::   true
     , value :: Number --[ default: null ]
     , status :: Boolean 
     , handle :: 
      { show :: Boolean -- default  ::   false
      , icon :: {}
      , symbol :: Number --[ default  ::  45 ]
      --, symbol :: Array
      , margin :: Number -- default: 50 ]
      , color :: String --[ default: '#333' ]
      , throttle :: Number --[ default: 40
      , shadowColor :: Color --[ default: #aaa ]
      , shadowBlur :: Number --[ default  ::  3 ]
      , shadowOffsetX :: Number -- [ default ::   2 ]
      , shadowOffsetY :: Number -- [ default  ::  1 ]
      }
     }
    , zlevel :: Number -- default ::  0
    , z :: Number -- default ::    0
}

type YAxis = 
 {    id  :: String
    , show :: Boolean -- default  ::   true
    , gridIndex :: Number -- default ::    0
    , position :: String
    , offset :: Number -- default ::    0
    , "type" :: String -- default   ::  value
    , name :: String
    , nameLocation :: String --default  :: start
    , nameTextStyle :: {}
    , nameGap :: String --default   ::  15
    , nameRotate :: String --default  ::   null
    , inverse :: Boolean --default  :: false
    , boundaryGap :: Boolean
    --,  boundaryGap :: Array
    , min :: Number -- default   ::  null
    --, min :: String
    , max :: Number -- default  ::   null
    --, max :: String
    , scale :: Boolean --default   ::  false
    , splitNumber :: Number -- default ::    5
    , minInterval :: Number
    , interval :: Number
    , logBase :: Number -- default  ::   10
    , silent :: Boolean --default   ::  false
    , triggerEvent :: Boolean --default ::    false
    , axisLine :: {}
    , axisTick :: {}
    , axisLabel :: {}
    , splitLine :: {}
    , splitArea :: {}
    , data :: {}
    , axisPointer :: {}
    , zlevel :: Number -- default ::    0
    , z :: Number -- default   ::  0
}
type Polar = 
 {     id :: String
    , zlevel :: Number -- default ::    0
    , z :: Number -- default   ::  2
    , center :: Array -- default ::   ['50%', '50%']
    , radius :: Array
}
type RadiusAxis = 
 {    id :: String
    , polarIndex :: Number -- default  ::   0
    , "type" :: String -- default   ::  value
    , name :: String
    , nameLocation :: String --default  ::   start
    , nameTextStyle :: {}
    , nameGap :: String --default   ::  15
    , nameRotate :: String --default ::    null
    , inverse :: Boolean --default   ::  false
    , boundaryGap :: Boolean
    --,  boundaryGap :: Array
    , min :: Number -- default   ::  null
    --, min :: String
    , max :: Number -- default ::    null
    --, max :: String
    , scale :: Boolean --default :: false
    , splitNumber :: Number -- default ::    5
    , minInterval :: Number
    , interval :: Number
    , logBase :: Number -- default  ::   10
    , silent :: Boolean --default   ::  false
    , triggerEvent :: Boolean --default   ::  false
    , axisLine :: {}
    , axisTick :: {}
    , axisLabel :: {}
    , splitLine :: {}
    , splitArea :: {}
    , data :: {}
    , axisPointer :: {}
    , zlevel :: Number -- default ::    0
    , z :: Number -- default  ::   0
}
type AngleAxis = 
 {    id :: String
    , polarIndex :: Number -- default  ::   0
    , startAngle :: Number -- default   ::  90
    , clockwise :: Boolean --default   ::  true
    , type :: String -- default  ::   category
    , boundaryGap :: Boolean
    --,  boundaryGap :: Array
    , min :: Number -- default ::    null
    --, min :: String
    , max :: Number -- default  ::   null
    --, max :: String
    , scale :: Boolean --default  ::   false
    , splitNumber :: Number -- default ::    5
    , minInterval :: Number
    , interval :: Number
    , logBase :: Number -- default  ::   10
    , silent :: Boolean --default   ::  false
    , triggerEvent :: Boolean --default ::    false
    , axisLine :: {}
    , axisTick :: {}
    , axisLabel :: {}
    , splitLine :: {}
    , splitArea :: {}
    , data :: {}
    , axisPointer :: {}
    , zlevel :: Number -- default ::    s
    , z :: Number -- default ::    0
}
type Radar = 
 {    id :: String
    , zlevel :: Number -- default ::    0
    , z :: Number -- default    :: 2
    , center :: Array -- default  ::  ['50%', '50%']
    , radius :: Number -- default  ::  75%
    --, radius :: String
    , startAngle :: Number -- default ::    90
    , name :: {}
    , nameGap :: Number --default   ::  15
    , splitNumber :: Number -- default ::    5
    , shape :: String -- default   :: 'polygon'
    , scale :: Boolean --default   ::  false
    , silent :: Boolean --default   ::  false
    , triggerEvent :: Boolean --default ::    false
    , axisLine :: {}
    , axisTick :: {}
    , axisLabel :: {}
    , splitLine :: {}
    , splitArea :: {}
    , indicator :: 
     { name :: String
     , min :: Number
     , max :: Number
     }
    , color :: String
}
--type DataZoom = 
--type VisualMap =  
type ToolTip = 
 {    show :: Boolean -- default  ::   true
    , trigger :: String -- default  ::   item
    , axisPointer :: {}
    , showContent :: Boolean -- default    :: true
    , alwaysShowContent :: Boolean --default  ::   false
    , triggerOn :: String -- [ default  ::  'mousemove|click' ]
    , showDelay :: Number -- [ default  ::  0 ]
    , hideDelay :: Number -- [ default  ::  100 ]
    , enterable :: Boolean -- default   ::  true
    , transitionDuration :: Number -- [ default ::   0.4 ]
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
type AxisPointer = 
 {     id :: String
    , show :: Boolean -- default ::   false
    , "type" :: String --[ default ::   'line' ]
    , snap :: boolean
    , z :: Number
    , label :: {}
    , lineStyle :: {}
    , shadowStyle :: {}
    , triggerTooltip :: Boolean -- default ::    true
    , value :: Number -- [ default  ::  null ]
    , status :: Boolean
    , handle :: {}
    , link :: Array
    , triggerOn :: String -- [ default  ::  'mousemove|click' ]

}
type ToolBox = 
 {    id :: String
    , show :: Boolean -- default    :: true
    , orient :: String -- [ default   :: 'horizontal' ]
    , itemSize :: Number -- [ default  ::  15 ]
    , itemGap :: Number -- [ default  ::  10 ]
    , showTitle :: Boolean -- default ::    true
    , feature :: 
     { saveAsImage :: 
      { type :: String --[ default: 'png' ]
      , name :: String
      , backgroundColor :: Color --[ default: 'auto' ]
      , excludeComponents :: Array --[ default: ['toolbox'] ]
      , show :: Boolean -- default  ::   true
      , title :: Boolean --[ default: 'save as image' ]
      , icon :: {}
      , iconStyle :: 
       { color :: Color --[ default: null ]
       , borderColor :: Color --[ default  ::  '#666' ]
       , borderWidth :: Number --[ default  ::  1 ]
       , borderType :: String --[ default: 'solid' ]
       , shadowColor :: Color 
       , shadowBlur :: Number 
       , shadowOffsetX :: Number -- [ default ::   0 ]
       , shadowOffsetY :: Number -- [ default  ::  0 ]
       , opacity :: Number 
       , textPosition :: String 
       , textAlign :: String 
       , emphasis :: 
        { color :: Color --[ default: null ]
        , borderColor :: Color --[ default  ::  '#000' ]
        , borderWidth :: Number --[ default  ::  0 ]
        , borderType :: String --[ default: 'solid' ]
        , shadowColor :: Color 
        , shadowBlur :: Number 
        , shadowOffsetX :: Number -- [ default ::   0 ]
        , shadowOffsetY :: Number -- [ default  ::  0 ]
        , opacity :: Number 
        } 
       }
       , pixelRatio :: Number --[ default: 1 ]
      }
     , restore :: 
      { show :: Boolean -- default  ::   true
      , title :: Boolean --[ default: 'restore' ]
      , icon :: {}
      , iconStyle :: {}
      }
     , dataView :: 
      { show :: Boolean -- default  ::   true
      , title :: Boolean --[ default: 'data view' ]
      , icon :: {}
      , iconStyle :: {}
      , readOnly :: Boolean -- default  ::   false
      , optionToContent :: Function 
      , contentToOption :: Function 
      , lang :: Array --[ default: ['data view', 'turn off', 'refresh'] ]
      , backgroundColor :: String --[ default: '#fff' ]
      , textareaColor :: String --[ default: '#fff' ]
      , textareaBorderColor :: String --[ default: '#333' ]
      , textColor :: String --[ default: '#000' ]
      , buttonolor :: String --[ default: '#c23531' ]
      , buttonTextColor :: String --[ default: '#fff' ]
      }
     , dataZoom :: 
      { show :: Boolean -- default  ::   true
      , title :: 
       { zoom :: String --[ default: 'area zooming' ]
       , back :: String --[ default: 'restore area zooming' ]
       }
      , icon :: 
       { zoom :: String
       , back :: String
       }
      , iconStyle :: {}
      , xAxisIndex :: Number
      --, xAxisIndex :: Array
      --, xAxisIndex :: Boolean
      , yAxisIndex :: {}
      --, yAxisIndex :: Array
      --, yAxisIndex :: Boolean
      }
     , magicType :: 
      { show :: Boolean -- default  ::   true
      , type :: Array 
      , title :: 
       { line :: String --[ default: 'for line charts' ]
       , bar :: String  --[ default: 'for bar charts' ]
       , stack :: String --[ default: 'for stacked charts' ]
       , tiled :: String --[ default: 'for tiled charts' ]
       }
      , icon :: 
       { line :: String 
       , bar :: String  
       , stack :: String 
       , tiled :: String 
       }
      , iconStyle :: {}
      , option :: 
       { line :: {} 
       , bar :: {}  
       , stack :: {} 
       , tiled :: {}
       }
      , seriesIndex :: 
        { line :: Array 
        , bar :: Array 
        , stack :: Array 
        , tiled :: Array
        }
      }
     , brush :: 
      { type :: Array
      , icon :: 
       { rect :: String
       , polygon :: String
       , lineX :: String
       , lineY :: String
       , keep :: String
       , clear :: String
       }
      , title :: 
       { rect :: String --[ default: 'Rectangle selection' ]
       , polygon :: String --[ default: 'Polygon selection' ]
       , lineX :: String --[ default: 'Horizontal selection' ]
       , lineY :: String --[ default: 'Vertical selection' ]
       , keep :: String --[ default: 'Keep previous selection' ]
       , clear :: String --[ default: 'Clear selection' ]
       }
      }
     }
    , iconStyle :: {}
    , color :: Color -- [ default ::   null ]
    , zlevel :: Number -- default ::    0
    , z :: Number -- default  ::   2
    , left :: String -- default  ::   auto
    --, left :: Number 
    , top :: String -- default ::    auto
    --, top :: Number
    , bottom :: String -- default  ::   auto
    --, bottom :: Number
    , right :: String -- default ::    auto
    --, right :: Number
    , width :: String -- default   ::  auto
    --, width :: Number
    , height :: String -- default  ::   auto
    --, height :: Number
}
type Brush = 
  {   id :: String
    , toolbox :: Array    --[ default  ::  ['rect', 'polygon', 'keep', 'clear'] ]
    , brushLink :: Array   -- [ default ::   null ]
    --, brushLink :: String
    , seriesIndex :: Array   -- [ default  ::  all ]
    --, seriesIndex :: String 
    --, seriesIndex :: Number
    , geoIndex :: Array   -- [ default  ::  null ]
    --, geoIndex :: String 
    --, geoIndex :: Number
    , xAxisIndex :: Array   -- [ default  ::  null ]
    --, xAxisIndex :: String 
    --, xAxisIndex :: Number
    , yAxisIndex :: Array   -- [ default  ::  null ]
    --, yAxisIndex :: String 
    --, yAxisIndex :: Number
    , brushType :: String --[ default  ::  'rect' ]
    , brushMode :: String --[ default ::   'single'] 
    , transformable :: Boolean -- default ::    true
    , brushStyle :: {}
    , throttleType :: String --[ default ::    'fixRate' ]
    , throttleDelay :: Number -- default  ::  0
    , removeOnClick :: Number -- [ default ::   true ]
    , inBrush :: {}
    , outOfBrush :: {}
    , z :: Number -- [ default  ::  10000 ]

}
type Geo = 
 {    id :: String
    , show :: Boolean -- default  :: true
    , map :: String
    , roam :: Boolean -- default  ::   true
    , center :: Array
    , aspectScale :: Number -- [ default ::   0.75 ]
    , boundingCoords :: Array -- [ default ::   null ]
    , zoom :: Number --[ default  ::  1 ]
    , scaleLimit :: 
     { min :: Number
     , max :: String
     }
    , nameMap :: {}
    , selectedMode :: String --[ default  ::  'false'] 
    , selectedMode :: Boolean --[ default  ::  'false']
    , label :: {}
    , itemStyle :: 
     { areaColor :: 
      { color :: Color --[ default: null ]
      , borderColor :: Color --[ default  ::  '#000' ]
      , borderWidth :: Number --[ default  ::  0 ]
      , borderType :: String --[ default: 'solid' ]
      , shadowColor :: Color 
      , shadowBlur :: Number   
      , shadowOffsetX :: Number -- [ default ::   0 ]
      , shadowOffsetY :: Number -- [ default  ::  0 ]
      , opacity :: Number  
      } --[ default: '#eee' ]
     , emphasis :: {}
     }
    , zlevel :: Number -- default   ::  0
    , z :: Number -- default   ::  2
    , left :: String -- default  ::   auto
    --, left :: Number 
    , top :: String -- default  ::   auto
    --, top :: Number
    , bottom :: String -- default ::    auto
    --, bottom :: Number
    , right :: String -- default    :: auto
    --, right :: Number
    , layoutCenter :: Array -- [ default ::   null ]
    , layoutSize :: Number 
    --, layoutSize :: String
    , regions :: 
     { name :: String
     , selected :: Boolean --[ default: false ]
     }
    , silent :: Boolean -- default   ::  false
}
type Parallel = 
 {    id :: String
    , zlevel :: Number -- default   ::  0
    , z :: Number -- default   ::  2
    , left :: String -- default   ::  80
    --, left :: Number
    , top :: String -- default   ::  60
    --, top :: Number
    , right :: String -- default  ::   80
    --, right :: Number
    , bottom :: String -- default ::     60
    --, bottom :: Number
    , width :: String -- default   ::  auto
    --, width :: Number
    , height :: String -- default ::    auto
    --, height :: Number
    , layout :: String -- [ default  ::  'horizontal' ]
    , axisExpandable :: Boolean --[ default ::   'false']
    , axisExpandCenter :: Number --[ default  ::  null ]
    , axisExpandCount :: Number --[ default   :: 0 ]
    , axisExpandWidth :: Number --[ default   :: 50 ]
    , axisExpandTriggerOn :: String --[ default ::   'click' ]
    , parallelAxisDefault :: 
     { type :: String --[ default: value ]
     , name :: String 
     , nameLocation :: String --[ default: 'start' ]
     , nameGap :: String --[ default   :: 15 ]
     , nameRotate :: Number --[ default ::   null ]
     , inverse :: Boolean --[ default ::   false ]
     , boundaryGap :: Boolean
     --, boundaryGap :: Array
     , min :: Number -- default   ::  null
     --, min :: String
     , max :: Number -- default ::    null
     --, max :: String
     , scale :: Boolean --default   ::  false
     , splitNumber :: Number -- default ::    5
     , minInterval :: Number
     , interval :: Number
     , logBase :: Number -- default   ::  10
     , silent :: Boolean --default    :: false
     , triggerEvent :: Boolean --default :: false
     , axisLine :: {}
     , axisTick :: {}
     , axisLabel :: {}
     , "data" :: {}
     }
}
type ParallelAxis = 
 {    id :: String
    , dim :: Number
    , parallelIndex :: Number --[ default  ::  0 ]
    , realtime :: Boolean -- default ::    true
    , areaSelectStyle :: 
     { width :: Number --[ default: 20 ]
     , borderWidth :: Number --[ default: 1 ]
     , borderColor :: Color --[ default: 'rgba(160,197,232)' ]
     , color :: Color --[ default: 'rgba(160,197,232)' ]
     , opacity :: Number --[ default: 0.3 ]
     }
    , "type" :: String -- default  ::  value
    , name :: String
    , nameLocation :: String --[ default ::   'start' ]
    , nameTextStyle :: {}
    , nameGap :: String --[ default   :: 15 ]
    , nameRotate :: Number --[ default ::   null ]
    , inverse :: Boolean --[ default ::   false ]
    , boundaryGap :: Boolean
    --, boundaryGap :: Array
    , min :: Number -- default   ::  null
    --, min :: String
    , max :: Number -- default ::    null
    --, max :: String
    , scale :: Boolean --default   ::  false
    , splitNumber :: Number -- default ::    5
    , minInterval :: Number
    , interval :: Number
    , logBase :: Number -- default   ::  10
    , silent :: Boolean --default    :: false
    , triggerEvent :: Boolean --default :: false
    , axisLine :: {}
    , axisTick :: {}
    , axisLabel :: {}
    , "data" :: {}
}
type SingleAxis = 
  {   id :: String
    , zlevel :: Number -- default ::  0
    , z :: Number -- default  :: 2
    , left :: String -- default ::  5%
    --, left :: Number
    , top :: String -- default  ::   5%
    --, top :: Number
    , right :: String -- default  ::   5%
    --, right :: Number
    , bottom :: String -- default   ::  5%
    --, bottom :: Number
    , width :: String -- default ::    auto
    --, width :: Number
    , height :: String -- default  ::   auto
    --, height :: Number
    , orient :: String -- [ default  ::  'horizontal' ]
    , type :: String -- default ::   value
    , name :: String   
    , nameLocation :: String --default ::    start
    , nameTextStyle :: {}
    , nameGap :: String --default   ::  15
    , nameRotate :: String --default  ::   null
    , inverse :: Boolean --default   ::  false
    , boundaryGap :: Boolean
    --,  boundaryGap :: Array
    , min :: Number -- default ::    null
    --, min :: String
    , max :: Number -- default   ::  null
    --, max :: String
    , scale :: Boolean --default   ::  false
    , splitNumber :: Number -- default  ::   5
    , minInterval :: Number
    , interval :: Number
    , logBase :: Number -- default ::    10
    , silent :: Boolean --default   ::  false
    , triggerEvent :: Boolean --default ::    false
    , axisLine :: {}
    , axisTick :: {}
    , axisLabel :: {}
    , splitLine :: {}
    , splitArea :: {}
    , data :: {}
    , axisPointer :: {}
    , tooltip :: {}
}
type TimeLine = 
 {     show :: Boolean -- default  ::   true
    , "type" :: String -- [ default   :: 'slider' ]
    , axisType :: String --[ default  ::  'time' ]
    , currentIndex :: Number --[ default  ::  0 ]
    , autoPlay :: Boolean -- [ default  ::  false ]
    , rewind :: Boolean -- [ default  ::  false ]
    , loop :: Boolean -- [ default   :: true ]
    , playInterval :: Number -- [ default ::   2000 ]
    , reatTime :: Boolean -- [ default ::   true ]
    , controlPosition :: String --[ default   :: 'left' ]
    , zlevel :: Number -- default ::    0
    , z :: Number -- default   ::  2
    , left :: String -- default  ::   auto
    --left :: Number 
    , top :: String -- default   ::  auto
    --, top :: Number
    , bottom :: String -- default  ::   auto
    --, bottom :: Number
    , right :: String -- default   ::  auto
    --, right :: Number
    , padding :: Number --default  ::  5
    , orient :: String -- [ default  ::  'horizontal' ]
    , inverse :: Boolean --default   ::  false
    , symbol :: String --[ default  ::  'emptyCircle' ]
    , symbolSize :: Number --[ default ::   10 ]
    --, symbolSize :: Array
    , symbolRotate :: Number
    , symbolKeepAspect :: Boolean --default ::    false
    , symbolOffset :: Array -- [ default   :: [0, 0] ]
    , lineStyle :: {}
    , label :: {}
    , itemStyle::  {}
    , checkpointStyle :: 
     { symbol  :: String --[ default: 'circle' ]
     , symbolSize :: Number --[ default ::   13 ]
     --, symbolSize :: Array
     , symbolRotate :: Number
     , symbolKeepAspect :: Boolean --default ::    false
     , symbolOffset :: Array -- [ default   :: [0, 0] ]
     , color :: Color --[ default: '#c23531' ]
     , borderColor :: Color --[ default: 'rgba(194,53,49, 0.5)' ]
     , borderWidth :: Number  --default  ::   5
     , animation :: Boolean --[ default: true ]
     , animationDuration :: Number --default: 300
     , animationEasing :: String --[ default: 'quinticInOut' ]
     }
    , controlStyle :: 
     { show :: Boolean -- default  ::   true
     , showPlayBtn :: Boolean -- default  ::   true
     , showPrevBtn :: Boolean -- default  ::   true
     , showNextBtn :: Boolean -- default  ::   true
     , itemSize :: Number --[ default: 22 ]
     , itemGap :: Number --[ default: 12 ]
     , position :: String --[ default: 'left' ]
     , playIcon :: String 
     , stopIcon :: String 
     , prevIcon :: String 
     , nextIcon :: String 
     , color :: Color --[ default: '#304654' ]
     , borderColor :: Color --[ default: #304654' ]
     , borderWidth :: Number  --default  ::   1
     , emphasis :: {}
     }
    , "data" :: Array

}
type Graphic = 
 { id :: String
 , elements :: {}
 }
type Calendar = 
 {    id :: String
    , zlevel :: Number -- default ::  0
    , z :: Number -- default  :: 2
    , left :: String -- default ::  80
    --, left :: Number 
    , top :: String -- default :: 60
    --, top :: Number
    , bottom :: String -- default :: auto
    --, bottom :: Number
    , right :: String -- default :: auto
    --, right :: Number
    , width :: String -- default   ::  auto
    --, width :: Number
    , height :: String -- default ::    auto
    --, height :: Number
    , range :: Number 
    --, range :: String
    --, range  ::  Array
    , cellSize :: Number --[ default  ::  20 ]
    --, cellSize :: Array
    , orient :: String -- [ default ::   'horizontal' ]
    , splitLine :: {}
    , itemStyle :: {}
    , dayLabel :: 
     { show :: Boolean -- default   ::  true
     , firstDay :: Number --[ default ::   0 ]
     , margin :: Number --[ default  ::  0 ]
     , position :: String --[ default  ::  'start' ]
     , nameMap :: String -- [ default ::   'en' ]
     --, nameMap :: Array
     , color :: Color --[ default   :: #000 ]
     , fontStyle :: String --[ default  ::  'normal' ]
     , fontWeight :: String --[ default ::   'normal' ]
     , fontFamily :: String --[ default ::   'sans-serif' ]
     , fontSize :: Number --[ default  ::  12 ]
     , align :: String
     , verticalAlign :: String
     , lineHeight :: Number
     , backgroundColor :: String --[ default ::   'transparent' ]
     --, backgroundColor :: {}
     , borderColor :: String --[ default  ::  'transparent' ]
     , borderWidth :: Number --[ default  ::  0 ]
     , borderRadius :: Number --[ default ::   0 ]
     , padding :: Number --[ default  ::  0 ]
     --, padding :: Array
     , shadowColor :: String --[ default  ::  'transparent' ]
     , shadowBlur :: Number --[ default  ::  0 ]
     , shadowOffsetX :: Number -- [ default ::   0 ]
     , shadowOffsetY :: Number -- [ default  ::  0 ]
     , width :: Number 
     --, width :: String
     , height :: Number 
     --, height :: String
     , textBorderColor :: String --[ default ::   'transparent' ]
     , textBorderWidth :: Number --[ default  ::  0 ]
     , textShadowColor :: String --[ default  ::  'transparent' ]
     , textShadowBlur :: Number --[ default  ::  0 ]
     , textShadowOffsetX :: Number --[ default  ::  0 ]
     , textShadowOffsetY :: Number --[ default ::   0 ]
     , rich :: {}
     }
    , monthLabel :: 
     { show :: Boolean -- default   ::  true
     , align :: String
     , margin :: Number --[ default  ::  5
     , position :: String --[ default  ::  'start' ]
     , nameMap :: String -- [ default ::   'en' ]
     --, nameMap :: Array
     , formatter  :: String --default ::   null 
     --, formatter :: Function
     , color :: Color --[ default: '#000' ]
     , fontStyle :: String --[ default  ::  'normal' ]
     , fontWeight :: String --[ default ::   'normal' ]
     , fontFamily :: String --[ default ::   'sans-serif' ]
     , fontSize :: Number --[ default  ::  12 ]
     , verticalAlign :: String
     , lineHeight :: Number 
     , backgroundColor :: String --[ default ::   'transparent' ]
     --, backgroundColor :: {}
     , borderColor :: String --[ default  ::  'transparent' ]
     , borderWidth :: Number --[ default  ::  0 ]
     , borderRadius :: Number --[ default ::   0 ]
     , padding :: Number --[ default  ::  0 ]
     --, padding :: Array
     , shadowColor :: String --[ default  ::  'transparent' ]
     , shadowBlur :: Number --[ default  ::  0 ]
     , shadowOffsetX :: Number -- [ default ::   0 ]
     , shadowOffsetY :: Number -- [ default  ::  0 ]
     , width :: Number 
     --, width :: String
     , height :: Number 
     --, height :: String
     , textBorderColor :: String --[ default ::   'transparent' ]
     , textBorderWidth :: Number --[ default  ::  0 ]
     , textShadowColor :: String --[ default  ::  'transparent' ]
     , textShadowBlur :: Number --[ default  ::  0 ]
     , textShadowOffsetX :: Number --[ default  ::  0 ]
     , textShadowOffsetY :: Number --[ default ::   0 ]
     , rich :: {}
     }
    , yearLabel :: 
     { show :: Boolean -- default   ::  true
     , margin :: Number --[ default  ::  30
     , position :: String
     , formatter  :: String --default ::   null 
     --, formatter :: Function
     , color :: Color --[ default: '#fff' ]
     , fontStyle :: String --[ default  ::  'normal' ]
     , fontWeight :: String --[ default ::   'normal' ]
     , fontFamily :: String --[ default ::   'sans-serif' ]
     , fontSize :: Number --[ default  ::  12 ]
     , verticalAlign :: String
     , lineHeight :: Number 
     , backgroundColor :: String --[ default ::   'transparent' ]
     --, backgroundColor :: {}
     , borderColor :: String --[ default  ::  'transparent' ]
     , borderWidth :: Number --[ default  ::  0 ]
     , borderRadius :: Number --[ default ::   0 ]
     , padding :: Number --[ default  ::  0 ]
     --, padding :: Array
     , shadowColor :: String --[ default  ::  'transparent' ]
     , shadowBlur :: Number --[ default  ::  0 ]
     , shadowOffsetX :: Number -- [ default ::   0 ]
     , shadowOffsetY :: Number -- [ default  ::  0 ]
     , width :: Number 
     --, width :: String
     , height :: Number 
     --, height :: String
     , textBorderColor :: String --[ default ::   'transparent' ]
     , textBorderWidth :: Number --[ default  ::  0 ]
     , textShadowColor :: String --[ default  ::  'transparent' ]
     , textShadowBlur :: Number --[ default  ::  0 ]
     , textShadowOffsetX :: Number --[ default  ::  0 ]
     , textShadowOffsetY :: Number --[ default ::   0 ]
     , rich :: {}
     }
    , silent :: Boolean --[ default  ::  false ]

}
type DataSet = 
 {    id :: String
    , source :: Array
    , source :: {}
    , dimensions :: Array
    , sourceHeader :: Boolean
}
type Aria = 
 {    show :: Boolean --- [ default   :: false ]
    , description :: String --[ default ::   null ]
    , general :: 
     { withTitle :: String --[ default: '这是一个关于“{title}”的图表。' ]
     , withoutTitle :: String --[ default: '这是一个图表，' ]
     }
    , series :: 
     { maxCount :: Number --[ default: 10 ]
     , single :: 
      { prefix :: String
      , withName :: String --[ default: '图表类型是{seriesType}，表示{seriesName}。' ]
      , withoutName :: String --[ default: '图表类型是{seriesType}。' ]
      }
     , multiple :: 
      { prefix :: String
      , withName :: String --[ default: '图表类型是{seriesType}，表示{seriesName}。' ]
      , withoutName :: String --[ default: '图表类型是{seriesType}。' ]
      , seperator :: 
       { middle :: String --[ default: '；' ]
       , end :: String --[ default: '。' ]
       }
      }
     }
    , data :: 
     { maxCount :: Number --[ default: 10 ]
     , allData :: String --[ default: '其数据是——' ]
     , partialData :: String --[ default: '其中，前{displayCnt}项是——' ]
     , withName :: String --[ default: '{name}的数据是{value}' ]
     , withoutName :: String --[ default: '{value}' ]
     , seperator :: 
      { middle :: String --[ default: '{value}' ]
      , end :: String --[ default: '{value}' 
      }
     }
}

type Series = {}
type Color = String
type TextStyle = {}