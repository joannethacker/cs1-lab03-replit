{ pkgs }: {
  deps = [
    pkgs.psmisc
    pkgs.jdk17
    pkgs.jdt-language-server
    pkgs.fontconfig
    pkgs.dejavu_fonts
  ];

  env = {
    XDG_DATA_DIRS = "${pkgs.dejavu_fonts}/share";
    FONTCONFIG_FILE = "${pkgs.fontconfig.out}/etc/fonts/fonts.conf";
  };
}
