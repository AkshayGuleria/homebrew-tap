# homebrew-tap

Homebrew tap for [AkshayGuleria](https://github.com/AkshayGuleria)'s apps.

## Install Shine

```bash
brew install --cask --no-quarantine AkshayGuleria/tap/shine
```

[Shine](https://github.com/AkshayGuleria/Shine) is a macOS menu-bar utility that temporarily disables keyboard and trackpad so you can wipe your laptop clean.

> `--no-quarantine` is required because Shine is ad-hoc signed (no Apple notarization). It skips the Gatekeeper "unidentified developer" prompt.

### Uninstall

```bash
brew uninstall --cask shine
```
