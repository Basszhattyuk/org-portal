{ pkgs, ... }:
{
  packages = [
    pkgs.zola
    pkgs.unixtools.ifconfig
    pkgs.qrencode
  ];

  scripts = {
    run.exec = 
      let
        # zola-port = "1353";
        zola-port = "1111";
      in
      ''
      IP=$(ip -4 addr show wlo1 | grep -oP '(?<=inet\s)\d+(\.\d+){3}')
      qrencode -t ANSIUTF8 "http://$IP:${zola-port}"
      zola serve -p ${zola-port} --interface $IP
      '';
  };
}
