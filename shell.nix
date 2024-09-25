{ pkgs ? import <nixpkgs> {} }:

with pkgs; mkShell {
    buildInputs =  [ 
        (rust-bin.stable.latest.default.override {
            extensions = [ "rust-src" ];
            targets = [ "x86_64-unknown-linux-gnu" ];
        })
    ];
}
