function _activate_env_if_exists() {
    if [[ -z "$VIRTUAL_ENV" ]] ; then
	## If env folder is found then activate the vitualenv
	if [[ -d ./.venv ]] ; then
            source ./.venv/bin/activate
	elif [[ -d ./venv ]] ; then
	    source ./venv/bin/activate
	fi
    elif [[ -d ./.env ]] ; then
	source ./.env/bin/activate
    fi
    else
	## check the current folder belong to earlier VIRTUAL_ENV folder
	# if yes then do nothing
	# else deactivate
	parentdir="$(dirname "$VIRTUAL_ENV")"
	if [[ "$PWD"/ != "$parentdir"/* ]] ; then
            deactivate
	    _activate_env_if_exists
	fi
fi
}

autoload -U add-zsh-hook
add-zsh-hook chpwd _activate_env_if_exists
_activate_env_if_exists # Initial call to check the current directory at shell startup
