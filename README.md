# homebrew-writeme

Homebrew tap for [Writeme](https://github.com/g4rcez/writeme-editor) — a Markdown note-taking app with AI, graphs, and rich editor extensions.

## Install

```bash
brew tap g4rcez/writeme
```

**Desktop app (macOS cask):**
```bash
brew install --cask writeme
```

**CLI:**
```bash
brew install g4rcez/writeme/writeme
```

## Upgrade

```bash
brew upgrade --cask writeme
brew upgrade g4rcez/writeme/writeme
```

## Uninstall

```bash
brew uninstall --cask writeme
brew uninstall g4rcez/writeme/writeme
brew untap g4rcez/writeme
```

## Contents

| File | Description |
|---|---|
| `Casks/writeme.rb` | Desktop app (.dmg) |
| `Formula/writeme.rb` | CLI binary |
