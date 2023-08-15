sys:
	sudo nixos-rebuild switch --flake .#hobr-nixos --show-trace --verbose

home:
	home-manager switch --flake .#hobr@hobr-nixos --show-trace --verbose

update:
	nix flake update

upgrade:
	nix flake update
	sudo nixos-rebuild switch --flake .#hobr-nixos --show-trace --verbose
	home-manager switch --flake .#hobr@hobr-nixos --show-trace --verbose

history:
	nix profile history --profile /nix/var/nix/profiles/system

gc:
	sudo nix profile wipe-history --profile /nix/var/nix/profiles/system  --older-than 3d
	sudo nix store gc --debug
