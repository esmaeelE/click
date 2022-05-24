_run_completion() {
    COMPREPLY=( $( env COMP_WORDS="${COMP_WORDS[*]}" \
                   COMP_CWORD=$COMP_CWORD \
                   _RUN_COMPLETE=complete $1 ) )
    return 0
}

complete -F _run_completion -o default run;
