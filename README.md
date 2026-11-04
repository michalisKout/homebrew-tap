# Homebrew tap

Homebrew distribution for [Projects Cleaner](https://github.com/michalisKout/homebrew-tap/releases/latest), a free MIT-licensed macOS storage utility.

## Install

Requires macOS 13 Ventura or later. Apple Silicon and Intel Macs are supported; the cask selects the correct installer automatically.

```sh
brew install --cask michalisKout/tap/projects-cleaner
```

## First launch

Projects Cleaner is **ad-hoc signed and not notarized by Apple**. It has no Apple-verified publisher identity. Homebrew verifies the downloaded installer's SHA-256 checksum and preserves macOS security protections.

1. Open **Projects Cleaner** from **Applications** in Finder.
2. If macOS blocks it, open **System Settings → Privacy & Security**.
3. Choose **Open Anyway** for Projects Cleaner, authenticate if prompted, then choose **Open**.

Approve only the expected app from [the official project releases](https://github.com/michalisKout/homebrew-tap/releases). Managed Macs may prevent this per-app exception. The installer never removes quarantine or changes Gatekeeper settings. [Apple's instructions](https://support.apple.com/en-gb/102445) explain the approval process.

## Update or remove

```sh
brew update
brew upgrade --cask michalisKout/tap/projects-cleaner
brew uninstall --cask projects-cleaner
```

Uninstalling removes the app. The optional `--zap` hook removes only app preferences/logs; projects, models, caches, VM files and Trash are preserved.

## Maintainers

`Casks/projects-cleaner.rb` comes from the corresponding public release and pins separate arm64/x64 download checksums. For each new release, copy its generated cask and verify installation before publishing the tap update. Never reuse draft development checksums or set `sha256 :no_check`.

The source repository remains private. Report app or installation issues in this repository; never post personal paths, tokens, or private project data. Public releases contain installers, checksums, and the installer definition.
