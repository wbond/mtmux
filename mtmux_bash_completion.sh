_mtmux()
{
    local cur configs

    COMPREPLY=()
    _get_comp_words_by_ref -n =: cur

    _known_hosts_real -a "$cur"

	configs=$( ls ${HOME}/.mtmux 2>/dev/null)
	COMPREPLY=( "${COMPREPLY[@]}" $( compgen -W "$configs" -- "$cur" ) )

    return 0
}
complete -F _mtmux mtmux

