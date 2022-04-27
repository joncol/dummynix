{ sources ? import ./nix/sources.nix, pkgs ? (import sources.nixpkgs { }) }:

{
  a = pkgs.mkShell { buildInputs = (with pkgs; [ hello ]); };
  b = pkgs.mkShell { buildInputs = (with pkgs; [ nyancat ]); };
}
