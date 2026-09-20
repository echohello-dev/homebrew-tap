# echohello-dev tap

Interim package tap for [pidex](https://github.com/echohello-dev/pidex) until the cask is in `homebrew/homebrew-cask` and `Echohello.Pidex` is in `microsoft/winget-pkgs`.

A cron (and each pidex release, when `TAP_TOKEN` is set) copies the versioned Homebrew / Winget / Scoop manifests off the latest GitHub release.

## Homebrew

```bash
$ brew tap echohello-dev/tap
$ brew install --cask pidex
```

## Winget

WinGet cannot add a GitHub repo as a source. It wants a signed pre-indexed cache or a REST API. Until the official directory lists us, use the tap as a manifest bucket:

```powershell
> irm https://raw.githubusercontent.com/echohello-dev/homebrew-tap/main/winget/install-pidex.ps1 | iex
```

Or clone and install the pinned yaml:

```powershell
> git clone --depth 1 https://github.com/echohello-dev/homebrew-tap.git
> winget settings --enable LocalManifestFiles
> winget install --manifest .\homebrew-tap\winget\Echohello.Pidex.yaml
```

The first `LocalManifestFiles` enable may need an elevated shell.

## Scoop

```powershell
> scoop bucket add echohello https://github.com/echohello-dev/homebrew-tap
> scoop install pidex
```

`bucket/pidex.json` appears after the first pidex release that attaches store manifests.
