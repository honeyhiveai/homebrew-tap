class Honeyhive < Formula
  desc "CLI for interacting with the HoneyHive REST API"
  homepage "https://github.com/honeyhiveai/honeyhive-cli"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/honeyhiveai/honeyhive-cli/releases/download/v1.7.0/honeyhive-1.7.0-macos-arm64.tar.gz"
      sha256 "0ead5bb5a3939c38387bea3966e8feb6295d80e56f0b409f694e90800e01fe4c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/honeyhiveai/honeyhive-cli/releases/download/v1.7.0/honeyhive-1.7.0-linux-arm64.tar.gz"
      sha256 "1103e44617a91b18728c89b8fd99f526c7b640fa7365d04a8353883070a6bfa7"
    end

    on_intel do
      url "https://github.com/honeyhiveai/honeyhive-cli/releases/download/v1.7.0/honeyhive-1.7.0-linux-x64.tar.gz"
      sha256 "a830b8eb84ca261575c0bf681a23a4b57253f7e6e8378654da8495c9550a5ef5"
    end
  end

  def install
    bin.install "honeyhive"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/honeyhive --version")
  end
end
