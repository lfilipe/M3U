#!/bin/bash

cd M3U

# Copiar o conteúdo de 'my-list.channels' para 'M3UPT.m3u'
cp my-list.channels M3UPT.m3u

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

# Canal11 - update the stream URL Canal11
sed -i "/Canal11\/index.fmp4.m3u8/ c https://love2live.wideiptv.top/Canal11/index.fmp4.m3u8?token=$(curl -s "https://popcdn.day/go.php?stream=Canal11" | sed -n 's/.*src="[^"]*token=\([^&"]*\).*/\1/p')" M3UPT.m3u

#spt 1 - update the stream URL
sed -i "/SPTPlus\/index.fmp4.m3u8/ c https://love2live.wideiptv.top/SPTPlus/index.fmp4.m3u8?token=$(curl -s "https://popcdn.day/go.php?stream=SPTPlus" | sed -n 's/.*src="[^"]*token=\([^&"]*\).*/\1/p')" M3UPT.m3u

# ABOLA - update the stream URL
sed -i "/ABOLA\/index.fmp4.m3u8/ c https://love2live.wideiptv.top/ABOLA/index.fmp4.m3u8?token=$(curl -s "https://popcdn.day/go.php?stream=ABOLA" | sed -n 's/.*src="[^"]*token=\([^&"]*\).*/\1/p')" M3UPT.m3u

# HISTORIAPT - update the stream URL
sed -i "/HISTORIAPT\/index.fmp4.m3u8/ c https://moonlight.wideiptv.top/HISTORIAPT/index.fmp4.m3u8?token=$(curl -s "http://popcdn.day/play.php?stream=HISTORIAPT" | sed -n 's/.*src="[^"]*token=\([^&"]*\).*/\1/p')" M3UPT.m3u

# NationalGeographicPT - update the stream URL
sed -i "/NationalGeographicPT\/index.fmp4.m3u8/ c https://moonlight.wideiptv.top/NationalGeographicPT/index.fmp4.m3u8?token=$(curl -s "https://popcdn.day/play.php?stream=NationalGeographicPT" | sed -n 's/.*src="[^"]*token=\([^&"]*\).*/\1/p')" M3UPT.m3u

# 24KitchenPT - update the stream URL
sed -i "/24KitchenPT/ c https://moonlight.wideiptv.top/24KitchenPT/tracks-v1/index.fmp4.m3u8?token=$(curl -s "http://popcdn.day/play.php?stream=24KitchenPT" | sed -n 's/.*src="[^"]*token=\([^&"]*\).*/\1/p')" M3UPT.m3u

# DAZNLaLiga - update the stream URL
sed -i "/DAZNLaLiga\/index.fmp4.m3u8/ c https://love2live.wideiptv.top/DAZNLaLiga/index.fmp4.m3u8?token=$(curl -s "https://popcdn.day/go.php?stream=DAZNLaLiga" | sed -n 's/.*src="[^"]*token=\([^&"]*\).*/\1/p')" M3UPT.m3u

# Movistar LaLiga - update the stream URL
sed -i "/LALIGAES\/index.fmp4.m3u8/ c https://love2live.wideiptv.top/LALIGAES/index.fmp4.m3u8?token=$(curl -s "https://popcdn.day/go.php?stream=LALIGAES" | sed -n 's/.*src="[^"]*token=\([^&"]*\).*/\1/p')" M3UPT.m3u

# Fifa+ Plus - update the stream URL
sed -i "/wurl\.com/ c https://$(curl -s 'https://popcdn.day/stream/FifaPlus.php' | grep -oP 'source: \"\K[^"]*')" M3UPT.m3u

# SICRadical - update the stream URL SICRadical
sed -i "/SICRadical/ c https://moonlight.wideiptv.top/SICRadical/index.fmp4.m3u8?token=$(curl -s "http://popcdn.day/play.php?stream=SICRadical" | sed -n 's/.*src="[^"]*token=\([^&"]*\).*/\1/p')" M3UPT.m3u

# b - update the stream URL 1
sed -i "/BrazzersTVEU/ c https://moonlight.wideiptv.top/BrazzersTVEU/index.fmp4.m3u8?token=$(curl -s "http://popcdn.day/play.php?stream=BrazzersTVEU" | sed -n 's/.*src="[^"]*token=\([^&"]*\).*/\1/p')" M3UPT.m3u

# h - update the stream URL 2
sed -i "/HOT\/index.fmp4.m3u8/ c https://moonlight.wideiptv.top/HOT/index.fmp4.m3u8?token=$(curl -s "http://popcdn.day/play.php?stream=HOT" | sed -n 's/.*src="[^"]*token=\([^&"]*\).*/\1/p')" M3UPT.m3u



