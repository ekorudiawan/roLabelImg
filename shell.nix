with (import <nixpkgs> {});
let
  label-img = python-packages: with python-packages; [
    lxml
    pyqt5
    # other python packages you want
  ];
  python310-label-img = python310.withPackages label-img;
in
mkShell {
  buildInputs = [
    pkgs.qt5.full
    pkgs.qtcreator
    python310-label-img
  ];
}