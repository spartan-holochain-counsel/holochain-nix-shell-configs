
# Holochain Nix Shell Configurations
Nix shell config files for each version of Holochain.


[![](https://img.shields.io/github/issues-raw/mjbrisebois/holochain-nix-shell-configs?style=flat-square)](https://github.com/mjbrisebois/holochain-nix-shell-configs/issues)
[![](https://img.shields.io/github/issues-closed-raw/mjbrisebois/holochain-nix-shell-configs?style=flat-square)](https://github.com/mjbrisebois/holochain-nix-shell-configs/issues?q=is%3Aissue+is%3Aclosed)
[![](https://img.shields.io/github/issues-pr-raw/mjbrisebois/holochain-nix-shell-configs?style=flat-square)](https://github.com/mjbrisebois/holochain-nix-shell-configs/pulls)


## Holochain / Lair Version Map
The Nix shell environment created with these configurations will have

- `holochain`
- `lair-keystore`
- `hc`


| Holochain Version (beta)                                                                         | Commit Date    | Lair Version                                                                                | `default.nix`                            |
|--------------------------------------------------------------------------------------------------|----------------|---------------------------------------------------------------------------------------------|------------------------------------------|
| [`v0.1.0`](https://github.com/holochain/holochain/tree/41150668b18a57f4dc801a0b3439c1c76e149064) | *Jan 26, 2023* | [`v0.2.3`](https://github.com/holochain/lair/tree/cbfbefefe43073904a914c8181a450209a74167b) | [v0.1.0/default.nix](v0.1.0/default.nix) |
| [`v0.2.0`](https://github.com/holochain/holochain/tree/efe64a7f5dfbddc257945bf368db81c7b68de1bd) | *Apr 27, 2023* | [`v0.2.4`](https://github.com/holochain/lair/tree/43be404da0fd9d57bf4429c44def405bd6490f61) | [v0.2.0/flake.nix](v0.2.0/flake.nix)     |


### Development Versions

| Holochain Versions (beta)                                                                                   | Commit Date    | Lair Version                                                                                | `default.nix`                                  |
|-------------------------------------------------------------------------------------------------------------|----------------|---------------------------------------------------------------------------------------------|------------------------------------------------|
| [`v0.2.0-beta-rc.1`](https://github.com/holochain/holochain/tree/1f765d0b8d82d0f568ee8c42a33f0863c2a0bc90)  | *Mar 22, 2023* | [`v0.2.3`](https://github.com/holochain/lair/tree/cbfbefefe43073904a914c8181a450209a74167b) | [v0.2.0-rc.1/flake.nix](v0.2.0-rc.1/flake.nix) |
| [`v0.2.0-beta-rc.4`](https://github.com/holochain/holochain/tree/9c4f10d16b28c977682010746c4a61641ecb68c8)  | *Apr 13, 2023* | [`v0.2.3`](https://github.com/holochain/lair/tree/cbfbefefe43073904a914c8181a450209a74167b) | [v0.2.0-rc.4/flake.nix](v0.2.0-rc.4/flake.nix) |
| [`v0.2.0-beta-rc.7`](https://github.com/holochain/holochain/tree/367914e54bafcdccff002e453c68795ea273c350)  | *Apr 26, 2023* | [`v0.2.4`](https://github.com/holochain/lair/tree/43be404da0fd9d57bf4429c44def405bd6490f61) | [v0.2.0-rc.7/flake.nix](v0.2.0-rc.7/flake.nix) |
| [`v0.1.5-beta-rc.1`](https://github.com/holochain/holochain/tree/155f0dd20ba32ce1fc2ed0ae9ebcc856ba6e8524)  | *May 8, 2023*  | [`v0.2.3`](https://github.com/holochain/lair/tree/cbfbefefe43073904a914c8181a450209a74167b) | [v0.1.5-rc.1/flake.nix](v0.1.5-rc.1/flake.nix) |
| [`v0.2.1-beta-dev.0`](https://github.com/holochain/holochain/tree/a91b262e87653f5f2e3a50c06eaac2bb81fb88d3) | *May 15, 2023* | [`v0.2.4`](https://github.com/holochain/lair/tree/43be404da0fd9d57bf4429c44def405bd6490f61) | [v0.2.1-rc.0/flake.nix](v0.2.1-rc.0/flake.nix) |


### Pre-beta Versions

See [./PREBETA_VERSIONS.md](./PREBETA_VERSIONS.md)


## Extending Build Inputs

### Nix Flake (ie. `nix develop`)

Example of adding [Node.js v18](https://nodejs.org/dist/latest-v18.x/docs/api/) to `flake.nix`
```diff
{
   ...
             devShells.default = pkgs.mkShell {
               inputsFrom = [ inputs.holochain-flake.devShells.${system}.holonix ];
               packages = with pkgs; [
+                nodejs-18_x
               ];
             };
   ...
 }
```


### Legacy (ie. `nix-shell`)
Adding `buildInputs` inside `mkShell` properties will allow you to specify additional dependencies
for your project.

Example of adding [Node.js v14](https://nodejs.org/dist/latest-v14.x/docs/api/) to `default.nix`
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
