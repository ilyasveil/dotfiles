set fish_greeting # Disable greeting
set -x PATH $HOME/.cargo/bin $PATH # Add Rust binaries to PATH
set -x STARSHIP_CONFIG $HOME/.config/starship/starship.toml # Put starship config where everything else is...
# starship init fish | source # Enable starship prompt
