{ stdenv, fetchFromGitHub, bash, unzip, pkgs, ... }:

stdenv.mkDerivation rec {
  version = "v2020.01.16";
  pname = "kalkun";

  src = fetchFromGitHub {
    owner  = "mawww";
    repo   = "kakoune";
    rev    = "version";
    sha256 = "0v5sknk1i5cyhgjnw7343zcmmyd8b9b4c66l2cdl4jsmknhiwmwq";
  };

  buildInputs = [ bash unzip ];

  unpackPhase = ''
    unzip ${src}
  '';

  installPhase = ''
    true
  '';
}
