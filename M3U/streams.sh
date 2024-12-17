#!/bin/bash

cd M3U

# TVI - update the stream URL of TVI

sed -i "/live_tvi\/live_tvi/ c https://video-auth6.iol.pt/live_tvi/live_tvi/playlist.m3u8?wmsAuthSign=$(wget https://services.iol.pt/matrix?userId= -o /dev/null -O -)/" M3UPT.m3u

# CNN Portugal - update the stream URL of CNN Portugal

sed -i "/live_cnn/ c https://video-auth7.iol.pt/live_cnn/live_cnn/playlist.m3u8?wmsAuthSign=$(wget https://services.iol.pt/matrix?userId= -o /dev/null -O -)/" M3UPT.m3u

# TVI Internacional - update the stream URL of TVI Internacional

sed -i "/live_tvi_internacional/ c https://video-auth6.iol.pt/live_tvi_internacional/live_tvi_internacional/playlist.m3u8?wmsAuthSign=$(wget https://services.iol.pt/matrix?userId= -o /dev/null -O -)/" M3UPT.m3u

# CMTVPT - update the stream URL CMTV
sed -i "/CMTVPT/ c https://moonlight.wideiptv.top/CMTVPT/index.fmp4.m3u8?token=$(curl -s "http://popcdn.day/play.php?stream=CMTVPT" | sed -n 's/.*src="[^"]*token=\([^&"]*\).*/\1/p')" M3UPT.m3u

# NewsNowPT - update the stream URL NewsNowPT
sed -i "/NewsNowPT/ c https://moonlight.wideiptv.top/NewsNowPT/index.fmp4.m3u8?token=$(curl -s "http://popcdn.day/play.php?stream=NewsNowPT" | sed -n 's/.*src="[^"]*token=\([^&"]*\).*/\1/p')" M3UPT.m3u

# SICRadical - update the stream URL SICRadical
sed -i "/SICRadical/ c https://moonlight.wideiptv.top/SICRadical/index.fmp4.m3u8?token=$(curl -s "http://popcdn.day/play.php?stream=SICRadical" | sed -n 's/.*src="[^"]*token=\([^&"]*\).*/\1/p')" M3UPT.m3u

# b - update the stream URL 1
sed -i "/BrazzersTVEU/ c https://moonlight.wideiptv.top/BrazzersTVEU/index.fmp4.m3u8?token=$(curl -s "http://popcdn.day/play.php?stream=BrazzersTVEU" | sed -n 's/.*src="[^"]*token=\([^&"]*\).*/\1/p')" M3UPT.m3u

# h - update the stream URL 2
sed -i "/HOT/ c https://moonlight.wideiptv.top/HOT/index.fmp4.m3u8?token=$(curl -s "http://popcdn.day/play.php?stream=HOT" | sed -n 's/.*src="[^"]*token=\([^&"]*\).*/\1/p')" M3UPT.m3u
