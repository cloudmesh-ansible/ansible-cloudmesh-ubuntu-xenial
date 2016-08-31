{ pkgs ? import <nixpkgs> {} }:

with pkgs;

let

  pyEnv = [ python27Full ]
          ++ (with python27Packages;
             [ pip virtualenv ]
             );

  systemEnv = [ cacert libffi openssl pkgconfig sqlite zlib ];

  dependencies = pyEnv ++ systemEnv;

in

stdenv.mkDerivation {
  name = "ansible-role-cloudmesh-ubuntu-xenial";
  buildInputs = dependencies;
  shellHook = ''
    export SSL_CERT_FILE=${cacert}/etc/ssl/certs/ca-bundle.crt
    test -d venv || virtualenv venv
    source venv/bin/activate
  '';
}
