class Honeyhive < Formula
  desc "CLI for interacting with the HoneyHive REST API"
  homepage "https://github.com/honeyhiveai/honeyhive-cli"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/honeyhiveai/honeyhive-cli/releases/download/v1.0.0-rc.8/honeyhive-1.0.0-rc.8-macos-arm64.tar.gz"
      sha256 "821d9f62aa2a925d5046bc398d8160edc6e67409f4c0fa3942694da6e37adfb5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/honeyhiveai/honeyhive-cli/releases/download/v1.0.0-rc.8/honeyhive-1.0.0-rc.8-linux-arm64.tar.gz"
      sha256 "a204ea0be8bea523462f87bdb1c1edc34d8e682646548f0bd4ba6695b3e07df6"
    end

    on_intel do
      url "https://github.com/honeyhiveai/honeyhive-cli/releases/download/v1.0.0-rc.8/honeyhive-1.0.0-rc.8-linux-x64.tar.gz"
      sha256 "fa83526ef59b012ddf630c383005750511b458038240c357a9716bfa38e8de33"
    end
  end

  def install
    bin.install "honeyhive"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/honeyhive --version")
  end
end
