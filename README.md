
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
| [`v0.0.107`](https://github.com/holochain/holochain/tree/221f3424a919224dcf1950d1059e8b88aba08f7b) | [`v0.0.4`](https://github.com/holochain/lair/tree/d3155ac98ec550c6b5eb097923556958015f9354)          | *Sep 22, 2021* | [v0.0.107/default.nix](v0.0.107/default.nix) |
| [`v0.0.108`](https://github.com/holochain/holochain/tree/cad04aec3fb5f137b2d224ab29dcc204af7b9821) | [`v0.0.4`](https://github.com/holochain/lair/tree/d3155ac98ec550c6b5eb097923556958015f9354)          | *Sep 29, 2021* | [v0.0.108/default.nix](v0.0.108/default.nix) |
| [`v0.0.109`](https://github.com/holochain/holochain/tree/e5a480ce735beaa8ae7434abdb1b6dc03d487ffa) | [`v0.0.7`](https://github.com/holochain/lair/tree/bd92b76ad9cc18bc0c0db215e4bea9767c9003cf)          | *Oct 7, 2021*  | [v0.0.109/default.nix](v0.0.109/default.nix) |
| `v0.0.110`                                                                                         | ...through...                                                                                        | `v0.0.118`     | Skipped                                      |
| [`v0.0.119`](https://github.com/holochain/holochain/tree/9d9a556e8236234bcca64ee33620012c8a6ab095) | [`v0.1.0`](https://github.com/holochain/lair/tree/0343621e0bfa2a941ecf53363003d1f28b7ef0e6)          | *Dec 8, 2021*  | [v0.0.119/default.nix](v0.0.119/default.nix) |
| `v0.0.120`                                                                                         | ...through...                                                                                        | `v0.0.123`     | Skipped                                      |
| [`v0.0.124`](https://github.com/holochain/holochain/tree/4a449ee985053f5b8ee0f0688b949bd26bfcb3fc) | [`v0.1.0`](https://github.com/holochain/lair/tree/0343621e0bfa2a941ecf53363003d1f28b7ef0e6)          | *Jan 26, 2022* | [v0.0.124/default.nix](v0.0.124/default.nix) |


## Extending Build Inputs
Adding `buildInputs` inside `mkShell` properties will allow you to specify additional dependencies
for your project.

Example of adding [Node.js v14](https://nodejs.org/dist/latest-v14.x/docs/api/)
```diff
   };
   nixpkgs = holonix.pkgs;
 in nixpkgs.mkShell {
   inputsFrom = [ holonix.main ];

+  buildInputs = with nixpkgs; [
+    nodejs-14_x
+  ];
 }
```
