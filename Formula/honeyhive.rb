class Honeyhive < Formula
  desc "CLI for interacting with the HoneyHive REST API"
  homepage "https://github.com/honeyhiveai/honeyhive-cli"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/honeyhiveai/honeyhive-cli/releases/download/v1.8.0/honeyhive-1.8.0-macos-arm64.tar.gz"
      sha256 "c5de671a0f012e1730f7447076679122e357aeec98cb79714391431acd3597e5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/honeyhiveai/honeyhive-cli/releases/download/v1.8.0/honeyhive-1.8.0-linux-arm64.tar.gz"
      sha256 "5ef358851e93bb6002d62c0d2045d4a53299e6ddfa3656d8c98e22cd0d1e0ddf"
    end

    on_intel do
      url "https://github.com/honeyhiveai/honeyhive-cli/releases/download/v1.8.0/honeyhive-1.8.0-linux-x64.tar.gz"
      sha256 "f517ebdc9efcd20efa06d16551467d2877067fe098db3e24ed584b93b36f80e5"
    end
  end

  def install
    bin.install "honeyhive"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/honeyhive --version")
  end
end
