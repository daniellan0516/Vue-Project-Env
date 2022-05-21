{pkgs ? import <nixpkgs> {}}:
pkgs.mkShell{
    nativeBuildInput = [
	    pkgs.nodejs-16_x
	    pkgs.nodePackages.vue-cli
      pkgs.nodePackages.yarn
      pkgs.nodePackages.vls
    ];
    shellHook = ''
        export JAVA_HOME=${pkgs.jdk}
        PATH="${pkgs.nodejs-16_x}/bin:$PATH"
        PATH="${pkgs.nodePackages.vue-cli}/bin:$PATH"
        PATH="${pkgs.nodePackages.yarn}/bin:$PATH"
    '';
}
