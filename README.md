
# Holochain Nix Shell Configurations
Nix shell config files for each version of Holochain.


[![](https://img.shields.io/github/issues-raw/mjbrisebois/holochain-nix-shell-configs?style=flat-square)](https://github.com/mjbrisebois/holochain-nix-shell-configs/issues)
[![](https://img.shields.io/github/issues-closed-raw/mjbrisebois/holochain-nix-shell-configs?style=flat-square)](https://github.com/mjbrisebois/holochain-nix-shell-configs/issues?q=is%3Aissue+is%3Aclosed)
[![](https://img.shields.io/github/issues-pr-raw/mjbrisebois/holochain-nix-shell-configs?style=flat-square)](https://github.com/mjbrisebois/holochain-nix-shell-configs/pulls)


## Holochain / Lair Version Map
The `nix-shell` environment created with these `default.nix` files will have

- `holochain`
- `lair-keystore`
- `hc`

| Holochain Version                                                                                  | Lair Version                                                                                         | Commit Date    | `default.nix`                                |
|----------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------|----------------|----------------------------------------------|
| [`v0.0.100`](https://github.com/holochain/holochain/tree/3bd9181ea35c32993d1550591fd19720b31065f6) | [`v0.0.1-alpha.12`](https://github.com/holochain/lair/tree/2998dd3ad21928115b3a531cbc319e61bc896b78) | *Apr 20, 2021* | [v0.0.100/default.nix](v0.0.100/default.nix) |
| [`v0.0.101`](https://github.com/holochain/holochain/tree/ea726cc05aa6064c3b8b4f85fddf3e89429f018e) | [`v0.0.1-alpha.12`](https://github.com/holochain/lair/tree/2998dd3ad21928115b3a531cbc319e61bc896b78) | *Jul 1, 2021*  | [v0.0.101/default.nix](v0.0.101/default.nix) |
| [`v0.0.102`](https://github.com/holochain/holochain/tree/6535292238dc1fbd2b60433a2054f7787e4f060e) | [`v0.0.1-alpha.12`](https://github.com/holochain/lair/tree/2998dd3ad21928115b3a531cbc319e61bc896b78) | *Jul 29, 2021* | [v0.0.102/default.nix](v0.0.102/default.nix) |
| [`v0.0.103`](https://github.com/holochain/holochain/tree/f3d17d993ad8d988402cc01d73a0095484efbabb) | [`v0.0.3`](https://github.com/holochain/lair/tree/6a9aab37c90566328c13c4d048d1afaf75fc39a9)          | *Aug 17, 2021* | [v0.0.103/default.nix](v0.0.103/default.nix) |
| [`v0.0.104`](https://github.com/holochain/holochain/tree/d003eb7a45f1d7125c4701332202761721793d68) | [`v0.0.4`](https://github.com/holochain/lair/tree/d3155ac98ec550c6b5eb097923556958015f9354)          | *Aug 25, 2021* | [v0.0.104/default.nix](v0.0.104/default.nix) |
| [`v0.0.105`](https://github.com/holochain/holochain/tree/ea6b780f02069c0ef46aeef0406b0929847a2b02) | [`v0.0.4`](https://github.com/holochain/lair/tree/d3155ac98ec550c6b5eb097923556958015f9354)          | *Sep 1, 2021*  | [v0.0.105/default.nix](v0.0.105/default.nix) |
| [`v0.0.106`](https://github.com/holochain/holochain/tree/b11908875a9f6a09e8939fbf6f45ff658e3d10a6) | [`v0.0.4`](https://github.com/holochain/lair/tree/d3155ac98ec550c6b5eb097923556958015f9354)          | *Sep 16, 2021* | [v0.0.106/default.nix](v0.0.106/default.nix) |
