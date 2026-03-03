# Custom Tap

## How do I install these formulae?

`brew install efossvold/tap/<formula>`

Or `brew tap efossvold/tap` and then `brew install <formula>`.

Or, in a [`brew bundle`](https://github.com/Homebrew/homebrew-bundle) `Brewfile`:

```ruby
tap "efossvold/tap"
brew install extractor
brew install renamer
brew install squoosh-desktop
brew install muse-hub
brew install switch
```

## Testing locally
Prefix brew command with 'HOMEBREW_DEVELOPER="true"'

`HOMEBREW_DEVELOPER="true" brew install --cask  Casks/muse-hub.rb`

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
