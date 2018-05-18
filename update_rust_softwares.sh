# This script is written to update all Rust softwares.
# Softwares was installed via cargo
# They have 2 types of them
# git and from crates (FIXME)
#!/bin/bash

GIT_SRC=(https://github.com/jwilm/alacritty \
         https://github.com/sharkdp/bat)
CRATES_SRC=(amber \
            ripgrep \
            fd-find \
            miniserve)

for i in "${GIT_SRC[@]}"; do
    cargo install --force -j9 --git "${i}"
done
for i in "${CRATES_SRC[@]}"; do
    cargo install --force -j9 "${i}"
done

# Strip all symbols from binary
strip --strip-all /home/vunhan/.cargo/bin/*
