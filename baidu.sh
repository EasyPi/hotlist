#!/bin/bash
#
# baidu hotlist
#

curl -s 'https://top.baidu.com/board?tab=realtime' |
  grep -oP '(?<=<!--s-data:).*?(?=-->)' |
    jq '.data.cards[].content[]|{index,query,desc,hotScore,img,isTop:(.isTop//false)}'
