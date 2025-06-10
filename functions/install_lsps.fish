function install_lsps --description "installs all crucial nvim lsps"

    pacman -S --needed --noconfirm \
        dart \
        ocaml opam \
        elixir \
        slang \
        ruby \
        perl \
        lua-language-server \
        haskell-lsp haskell-language-server \
        go gopls \
        erlang \
        bc \
        clang \
        abcl \
        typescript \
        rustup rust-analyzer
    yay -S --needed --noconfirm \
        elixir-ls \
        zig-bin zls-bin \
        typescript-language-server \
        vscode-css-languageserver \
        vscode-html-languageserver \
        vscode-json-languageserver \
        yaml-language-server \
        reason-language-server \
        postgrestools-bin \
        ghcup-hs-bin \
        fish-lsp \
        erlang_ls-git \
        fortls fprettify findent fortitude-bin mlir flang \
        pyright \ 
    taplo-cli

    opam init -y
    source ~/.opam/opam-init/init.fish
    eval $(opam env)
    opam -y install ocaml-lsp-server odoc ocamlformat utop

    go install github.com/hyprland-community/hyprls/cmd/hyprls@latest

    mkdir -p $HOME/dev/{public,ocaml,go,python,rust,elixir,erlang}/{dev,pub,src,assets}
end
