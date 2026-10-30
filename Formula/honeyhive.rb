class Honeyhive < Formula
  desc "CLI for interacting with the HoneyHive REST API"
  homepage "https://github.com/honeyhiveai/honeyhive-cli"
  license "MIT"

  on_macos do
    # The embedded Node 24 runtime requires macOS 13.5+. Homebrew cannot
    # express 13.5, so Ventura (13.0) is the closest floor it can enforce.
    depends_on macos: :ventura

    on_arm do
      url "https://github.com/honeyhiveai/honeyhive-cli/releases/download/v1.9.0/honeyhive-1.9.0-macos-arm64.tar.gz"
      sha256 "c6eee98db1fa6036323a8f3915435fd2c43a752f949781124651ab2221f4f629"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/honeyhiveai/honeyhive-cli/releases/download/v1.9.0/honeyhive-1.9.0-linux-arm64.tar.gz"
      sha256 "ca430937ad8ac43e33b3c7c0cc7d7b1fda68b5df9a14eaee7f2cff906dbde2fa"
    end

    on_intel do
      url "https://github.com/honeyhiveai/honeyhive-cli/releases/download/v1.9.0/honeyhive-1.9.0-linux-x64.tar.gz"
      sha256 "74002844cd9f6990bcaf59a65970ac9c8540c2c3cbf1f4835cb6c77bf0a6b5da"
    end
  end

  def install
    bin.install "honeyhive"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/honeyhive --version")
  end
end
