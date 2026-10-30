# homebrew-tap

Homebrew tap for HoneyHive tools.

## Install

```sh
brew install honeyhiveai/tap/honeyhive          # stable
brew install honeyhiveai/tap/honeyhive-preview  # prereleases (rcs)
```

> **Note:** Homebrew 6.0.0 and later only load formulae from taps or formulae you have trusted. Installing by the full name, as above, trusts the formula. If `brew upgrade` stops upgrading the CLI, trust it once:
>
> ```sh
> brew trust --formula honeyhiveai/tap/honeyhive
> ```

The `honeyhive-preview` formula tracks prerelease builds (versions with a hyphen, e.g. `2.0.0-rc.2`), analogous to npm's `next` dist-tag. The unsuffixed `honeyhive` formula tracks stable releases. The two are independent and cannot be installed side-by-side.

Supported platforms: macOS (arm64, x64) and Linux (arm64, x64).

## How updates work

Both formulas are updated automatically by the upstream release pipeline on every CLI release. Stable releases update `Formula/honeyhive.rb`; prereleases update `Formula/honeyhive-preview`.

## Reporting issues

Please report issues with the CLI via the standard support channels for HoneyHive used to report any other issues you may have.

## License

MIT. See [LICENSE](LICENSE).
