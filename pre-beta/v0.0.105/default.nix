let
  holonixPath = builtins.fetchTarball { # Aug 18, 2021
    url = "https://github.com/holochain/holonix/archive/6ae8ffb8e5c1a1faa4f4e1af8a9f7139b2ce0f3c.tar.gz";
    sha256 = "0ksvy2m7gpxf5r7l1rznvjwajypk7iii3h5d8nx762kah55nyliq";
  };
  holonix = import (holonixPath) {
    include = {
      holochainBinaries = true;
      node = false;
      happs = false;
    };

    holochainVersionId = "custom";
    holochainVersion = { # v0.0.105
      rev = "ea6b780f02069c0ef46aeef0406b0929847a2b02"; # Sep 1, 2021
      sha256 = "0gza0sadp83mfy4bs1apny1ajfjvxha4s77b8d2f390aggjnzgmz";
      cargoSha256 = "07nnys5hvdby631dhk6izvwvyzswpdcdjyb0glw6vhgb9nc81ib3";

      lairKeystoreHashes = { # v0.0.4
        sha256 = "0khg5w5fgdp1sg22vqyzsb2ri7znbxiwl7vr2zx6bwn744wy2cyv";
        cargoSha256 = "1lm8vrxh7fw7gcir9lq85frfd0rdcca9p7883nikjfbn21ac4sn4";
      };

      bins = {
        holochain = "holochain";
        hc = "hc";
      };
    };
  };
  nixpkgs = holonix.pkgs;
in nixpkgs.mkShell {
  inputsFrom = [ holonix.main ];
}
