# weathergrabber-nix

Nix packaging for weathergrabber 0.0.12 from PyPI.

This repository provides:

- a reusable package expression in default.nix
- a flake with package, app, and dev shell outputs in flake.nix

## Package details

- Package: weathergrabber
- Version: 0.0.12
- Python: 3.12
- Source: PyPI sdist
- Runtime dependencies:
  - pyquery
  - requests

## Requirements

- Nix with flakes enabled

If flakes are not enabled globally, run commands with:

```sh
nix --extra-experimental-features "nix-command flakes" <command>
```

## Usage

Build the default package:

```sh
nix build .#default
```

Build by explicit package name:

```sh
nix build .#weathergrabber
```

Run the packaged CLI:

```sh
nix run .#default -- --help
```

Open a development shell with the package available:

```sh
nix develop
```

## Files

- default.nix: Python package derivation (build backend, source pin, dependencies)
- flake.nix: flake outputs for packages, app, and dev shell

## Notes

- The source hash is pinned for reproducible builds.
- flake.lock pins the nixpkgs input revision.
