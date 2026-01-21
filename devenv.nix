{ pkgs, config, ... }:
{
  packages = [
    pkgs.zola
    pkgs.unixtools.ifconfig
    pkgs.qrencode
  ];

  dotenv = {
    enable = true;
    filename = [ ".env" ".env.local" ];
  };

  scripts = {
    server.exec = 
      let
        zola-port = config.env.PORT;
      in
      ''
      IP=$(ip -4 addr show wlo1 | grep -oP '(?<=inet\s)\d+(\.\d+){3}')
      qrencode -t ANSIUTF8 "http://$IP:${zola-port}"
      zola serve -p ${zola-port} --interface $IP
      '';
  };
}
