help:
    echo "Usage: 'make laptop|desktop'"
    
both:
    stow bash vim

laptop: both
    stow bash_laptop

desktop: both
    stow bash_desktop
