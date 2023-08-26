{
	description = "uwuland is a highly customizable compositor that actually looks good";

	inputs = {
		nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
		parts.url = "github:hercules-ci/flake-parts";
		# not sure about crane but it is what it is
		crane.url = "github:ipetkov/crane";
		rust.url = "github:oxalica/rust-overlay";
	};

	outputs = inputs @ { self, nixpkgs, parts, crane, rust, ... }:
		parts.lib.mkFlake { inherit inputs; } {
			systems = ["aarch64-linux" "x86_64-linux" "aarch64-darwin"];
			perSystem = { self', lib, system, ... }:
				let
					pkgs = nixpkgs.legacyPackages.${system}.extend rust.overlays.default;
					rust-toolchain = pkgs.rust-bin.fromRustupToolchainFile ./rust-toolchain.toml;
					craneLib = crane.lib.${system}.overrideToolchain rust-toolchain;

					craneArgs = {
						pname = "uwuland";
						version = self.rev or "dirty";
						src = craneLib.cleanCargoSource ./.;
						cmakeFlags = [ "PREFIX=~/.local" ];

					};

					cargoArtifacts = craneLib.buildDepsOnly craneArgs;
					uwuland = craneLib.buildPackage (craneArgs // { inherit cargoArtifacts; });
				in {
					apps.uwuland = {
						type = "app";
						program = lib.getExe self'.packages.default;
					};

          checks.uwuland = uwuland;
          packages.default = uwuland;
				};
		};
}
