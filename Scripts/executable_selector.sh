#!/bin/sh
SELECTION=$(tmuxp ls | gum filter --limit 1 --placeholder 'Pick a sesh' --prompt='>')

if [[ $SELECTION != '' ]]; then
	if [[ -n $TMUX ]]; then
		TTY=$(tty)
		(
			sleep 0.3
			if tmux has-session -t "$SESSION_NAME" 2>/dev/null; then
				tmux attach-session -t "$SESSION_NAME"
			else
				tmuxp load $SELECTION;
			fi
		) < "$TTY" > "$TTY" 2>&1 &

		tmux detach
	else
		if tmux has-session -t "$SESSION_NAME" 2>/dev/null; then
			tmux attach-session -t "$SESSION_NAME"
		else
			tmuxp load $SELECTION;
		fi
	fi
fi
