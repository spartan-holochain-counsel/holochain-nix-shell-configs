let
  holonixPath = builtins.fetchTarball {
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
    holochainVersion = { # v0.0.100
      rev = "78e2591449f1467f32b24219b4ffac75b6b840ee"; # Mar 25, 2021
      sha256 = "10znmmxba2n74np8kriwwbk977x9asq7abbjz5w8angzi1nhibfm";
      cargoSha256 = "1hdnfzn9nlfa5wb2xhk2h7myb21gbiilk8v4jm8sqcf5pjjk5x2j";

      lairKeystoreHashes = { # v0.0.1-alpha.11
        sha256 = "0n5rsmpfw24g4pcgrqqxqk8fwhyky7mm3nf39vyrpk3xyxh3addr";
        cargoSha256 = "0axiindigrdwjw547hazyq4zn5h4flp47smgp0f9qrh0iskd8gw6";
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
