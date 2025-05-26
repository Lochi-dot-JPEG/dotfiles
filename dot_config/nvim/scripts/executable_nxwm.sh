#!/bin/bash
sx kitty -c NONE -o placement_strategy=top-left -e nvim -c 'lua require("nxwm").start()'
