class Honeyhive < Formula
  desc "CLI for interacting with the HoneyHive REST API"
  homepage "https://github.com/honeyhiveai/honeyhive-cli"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/honeyhiveai/honeyhive-cli/releases/download/v1.0.0-rc.2/honeyhive-1.0.0-rc.2-macos-arm64.tar.gz"
      sha256 "7de887df98f91276fcd5f2c60745cf9f41c02215795bfb1333e3e639d1a7f42e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/honeyhiveai/honeyhive-cli/releases/download/v1.0.0-rc.2/honeyhive-1.0.0-rc.2-linux-arm64.tar.gz"
      sha256 "ff965e7f9fa268ea7d64658d6522dcb0944452bbeab47cc61fcb9d26261b9549"
    end

    on_intel do
      url "https://github.com/honeyhiveai/honeyhive-cli/releases/download/v1.0.0-rc.2/honeyhive-1.0.0-rc.2-linux-x64.tar.gz"
      sha256 "ba805c49945c14df9a4bd0f8d97a824c94fee957c7fb105b7923674969ebbf40"
    end
  end

  def install
    bin.install "honeyhive"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/honeyhive --version")
  end
end
