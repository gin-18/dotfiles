if [ -n "$BASH_VERSION" ]; then
    export PS1='\[\e[38;5;147m\]\u\[\e[0m\]@\[\e[38;5;183m\]\h\[\e[0m\] \[\e[38;5;225m\]\w\[\e[0m\] \$ '
else
    if [ "$UID" -eq 0 ]; then
        export PROMPT="%F{147}%n%f@%F{183}%m%f %F{225}%~%f %# "
    else
        export PROMPT="%F{147}%n%f@%F{183}%m%f %F{225}%~%f \$ "
    fi
fi
