# Kangentic Homebrew tap

```bash
brew install kangentic/tap/kangentic
```

The app updates itself after that, so `brew upgrade` leaves it alone unless the installed copy is older.

To remove it, run `brew uninstall --cask kangentic`. Add `--zap` to remove its data too.

`Casks/kangentic.rb` is written by the release workflow in [Kangentic/kangentic](https://github.com/Kangentic/kangentic). Changes made here are replaced by the next release, so change the template in `scripts/release-channels.js` instead.
