# vim: ft=config
function fish_prompt
    echo (whoami) @ (pwd)
    echo "\$ "
end
