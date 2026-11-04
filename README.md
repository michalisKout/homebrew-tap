# Homebrew tap

Homebrew distribution for [Projects Cleaner](https://github.com/michalisKout/projects-cleaner), a free MIT-licensed macOS storage utility.

No cask is active yet. Version 0.1.0 is prepared as a draft while Developer ID signing and notarization are configured. Local builds can be made from the source repository.

Once a signed release is public and its cask is activated:

```sh
brew install --cask michalisKout/tap/projects-cleaner
```

`drafts/projects-cleaner.rb` is a checksum-pinned example generated from the actual ad-hoc development DMGs. Its release URLs are not public yet. Before activation, regenerate the cask from the signed release DMGs, verify both architectures and checksums, then place it at `Casks/projects-cleaner.rb`.

Uninstalling removes the app. The optional zap hook removes only app preferences/logs; projects, models, caches, VM files and Trash are preserved. No Gatekeeper bypass is used.

See the app's [release guide](https://github.com/michalisKout/projects-cleaner/blob/main/docs/RELEASING.md).
