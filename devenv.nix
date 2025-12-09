{ pkgs, ... }:
{
  packages = [
    pkgs.zola
    pkgs.unixtools.ifconfig
  ];

  scripts = {
    run.exec = 
      let
        # zola-port = "1353";
        zola-port = "1111";
      in
      ''zola serve -p ${zola-port} --interface $(ip -4 addr show wlo1 | grep -oP '(?<=inet\s)\d+(\.\d+){3}')'';
  };
}
