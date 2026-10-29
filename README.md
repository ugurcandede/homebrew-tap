# homebrew-tap

Personal [Homebrew](https://brew.sh) tap for [@ugurcandede](https://github.com/ugurcandede)'s projects.

```bash
brew tap ugurcandede/tap
```

## Packages

| Package                                                     | Type    | Description                                                                                    |
|-------------------------------------------------------------|---------|------------------------------------------------------------------------------------------------|
| [`taplock`](https://github.com/ugurcandede/taplock)         | Formula | CLI to temporarily disable keyboard and trackpad input, or take relaxing breaks on your Mac    |
| [`taplock-app`](https://github.com/ugurcandede/taplock-app) | Cask    | Menu bar app for the same                                                                      |
| [`lumea`](https://github.com/ugurcandede/Lumea)             | Cask    | Desktop app to control BLE LED strips                                                          |
| [`sotto`](https://github.com/ugurcandede/sotto)             | Cask    | Menu bar app to mute your microphone system-wide, with push-to-talk and an icon you can trust. |

## Install

```bash
brew install taplock                # taplock CLI
brew install --cask taplock-app     # taplock menu bar app
brew install --cask lumea           # Lumea
brew install --cask sotto           # Sotto
```

> The tap is updated automatically by each project's release CI — formulae and casks here are generated, not hand-edited.
