#!/bin/bash

DMENU_NF="#A3A6AB"
DMENU_NB="#34322E"
DMENU_SF="#F6F9FF"
DMENU_SB="#5C5955"

DESKTOP_NAME=`echo '' | dmenu -b -nf "$DMENU_NF" -nb "$DMENU_NB" -sf "$DMENU_SF" -sb "$DMENU_SB" -p 'Rename:'`
if [ -z $DESKTOP_NAME ]; then
    exit 0
fi

bspc desktop -n "$DESKTOP_NAME"
