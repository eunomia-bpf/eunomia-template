{
  description = "eunomia-bpf template";

  inputs = {
    flake-utils.url = "github:numtide/flake-utils";
    nixpkgs.url = "nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in
      {
        devShell = pkgs.mkShell {
          name = "eunomia-template";
          nativeBuildInputs = with pkgs; [
            clang
            llvm
            pkg-config
          ];

          packages = with pkgs; [
            elfutils
            zlib
            openssl
          ];
        };
      }
    );
}
