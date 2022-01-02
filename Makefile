build:
	spago build

tests:
	spago build --config test.dhall && \
	nix-build -E '(import ./output/Test.Main).main null'