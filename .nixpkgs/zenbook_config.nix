pkgs : {
  allowUnfree = true;
  /*allowBroken = true;*/
  packageOverrides = pkgs : with pkgs; rec {
      common = import ./common.nix { pkgs = pkgs; }; 
      inherit (common) vimEnv hsEnv hugeEnv emacsEnv baseEnv develEnv steamEnv;
      zenbookEnv = pkgs.buildEnv
      {
        name = "zenbook-env";
        paths = [
          
        ];
      };
  };
}
