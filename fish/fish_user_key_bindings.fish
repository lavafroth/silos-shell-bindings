function silos_interactive
    commandline -f backward-kill-line
    commandline --insert (silos $fish_killring[1])
end

function fish_user_key_bindings
    bind ctrl-g silos_interactive
end
