class Honeyhive < Formula
  desc "CLI for interacting with the HoneyHive REST API"
  homepage "https://github.com/honeyhiveai/honeyhive-cli"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/honeyhiveai/honeyhive-cli/releases/download/v1.0.0-rc.4/honeyhive-1.0.0-rc.4-macos-arm64.tar.gz"
      sha256 "a1f0a37b7b0dac30d2ba63f8c92e9c84205f0256b9d0995095bf939002ba2bc3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/honeyhiveai/honeyhive-cli/releases/download/v1.0.0-rc.4/honeyhive-1.0.0-rc.4-linux-arm64.tar.gz"
      sha256 "eb18020e35b83ca120dad32e227cff90f193006954110dc4ace708afa21d4ac6"
    end

    on_intel do
      url "https://github.com/honeyhiveai/honeyhive-cli/releases/download/v1.0.0-rc.4/honeyhive-1.0.0-rc.4-linux-x64.tar.gz"
      sha256 "16941ae51bcdb0a51f6a760e4b8389efadf5f8abfb275c51db2fb4cf7aef9eb9"
    end
  end

  def install
    bin.install "honeyhive"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/honeyhive --version")
  end
end
