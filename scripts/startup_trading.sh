#!/bin/bash
echo "Hello World"

SLEEP_TIME=1

firefox --new-window -url https://www.tradingview.com/chart/BsjZDN9p/ -url https://trade.oanda.com/ -url https://www.tdameritrade.com/ &
sleep $SLEEP_TIME
alacritty --working-directory /stuff/drive/Trading &
