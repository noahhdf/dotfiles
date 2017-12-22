# vim: ft=config
function aptall
    sudo apt-get update
    sudo apt-get upgrade
    sudo apt-get autoremove
    sudo apt-get autoclean
    sudo apt-get clean
end
