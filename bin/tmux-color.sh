#!/bin/bash
tmux set status-bg $1
tmux set pane-border-style fg=$1
tmux set pane-active-border-style default
