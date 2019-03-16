# OpenVPN Docker Tunnel with aria2

Extends [openvpn-socks5](https://hub.docker.com/r/curve25519xsalsa20poly1305/openvpn-socks5/) ([GitHub](https://github.com/curve25519xsalsa20poly1305/docker-openvpn-socks5)) with aria2 support. Patched aria2 to remove connection limit.

Supports latest Docker for both Windows, Linux, and MacOS.

Please read the document of [openvpn-socks5](https://hub.docker.com/r/curve25519xsalsa20poly1305/openvpn-socks5/) ([GitHub](https://github.com/curve25519xsalsa20poly1305/docker-openvpn-socks5)) for usage details.

### Related Projects

* [openvpn-tunnel](https://hub.docker.com/r/curve25519xsalsa20poly1305/openvpn-tunnel/) ([GitHub](https://github.com/curve25519xsalsa20poly1305/docker-openvpn-tunnel)) - Wraps your program with OpenVPN network tunnel fully contained in Docker.
* [openvpn-socks5](https://hub.docker.com/r/curve25519xsalsa20poly1305/openvpn-socks5/) ([GitHub](https://github.com/curve25519xsalsa20poly1305/docker-openvpn-socks5)) - Convers OpenVPN connection to SOCKS5 server in Docker.
* [openvpn-aria2](https://hub.docker.com/r/curve25519xsalsa20poly1305/openvpn-aria2/) ([GitHub](https://github.com/curve25519xsalsa20poly1305/docker-openvpn-aria2)) - This project.
* [shadowsocksr-tunnel](https://hub.docker.com/r/curve25519xsalsa20poly1305/shadowsocksr-tunnel/) ([GitHub](https://github.com/curve25519xsalsa20poly1305/docker-shadowsocksr-tunnel)) - Wraps your program with ShadowsocksR network tunnel fully contained in Docker. Also exposes SOCKS5 server to host machine.
* [shadowsocksr-aria2](https://hub.docker.com/r/curve25519xsalsa20poly1305/shadowsocksr-aria2/) ([GitHub](https://github.com/curve25519xsalsa20poly1305/docker-shadowsocksr-aria2)) - Extends `shadowsocksr-tunnel` with aria2 support.

## Contributing

Please feel free to contribute to this project. But before you do so, just make
sure you understand the following:

1\. Make sure you have access to the official repository of this project where
the maintainer is actively pushing changes. So that all effective changes can go
into the official release pipeline.

2\. Make sure your editor has [EditorConfig](https://editorconfig.org/) plugin
installed and enabled. It's used to unify code formatting style.

3\. Use [Conventional Commits 1.0.0-beta.2](https://conventionalcommits.org/) to
format Git commit messages.

4\. Use [Gitflow](https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow)
as Git workflow guideline.

5\. Use [Semantic Versioning 2.0.0](https://semver.org/) to tag release
versions.

## License

Copyright © 2019 curve25519xsalsa20poly1305 &lt;<curve25519xsalsa20poly1305@gmail.com>&gt;

This work is free. You can redistribute it and/or modify it under the
terms of the Do What The Fuck You Want To Public License, Version 2,
as published by Sam Hocevar. See the COPYING file for more details.
