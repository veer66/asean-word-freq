let moz_overlay = import (builtins.fetchTarball https://github.com/mozilla/nixpkgs-mozilla/archive/master.tar.gz);
    nixpkgs = import <nixpkgs> { overlays = [ moz_overlay ]; };
in
with nixpkgs;
stdenv.mkDerivation {
  name = "env";
  buildInputs = [
    ruby
    git
    sqlite
    libpcap
    libxml2
    libxslt
    pkgconfig
    openssl
    rustChannels.nightly.cargo
    rustChannels.nightly.rust
  ];
}
