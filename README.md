# homebrew-tap

Homebrew tap for HoneyHive tools.

## Install

```sh
brew install honeyhiveai/tap/honeyhive
```

> **Note:** Homebrew 6.0.0 and later only load formulae from taps or formulae you have trusted. Installing by the full name, as above, trusts the formula. If `brew upgrade` stops upgrading the CLI, trust it once:
>
> ```sh
> brew trust --formula honeyhiveai/tap/honeyhive
> ```

Supported platforms: macOS (arm64, x64) and Linux (arm64, x64).

## How updates work

The upstream release pipeline updates `Formula/honeyhive.rb` automatically on every CLI release.

## Reporting issues

Please report issues with the CLI via the standard support channels for HoneyHive used to report any other issues you may have.

## License

MIT. See [LICENSE](LICENSE).
