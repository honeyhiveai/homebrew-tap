class Honeyhive < Formula
  desc "CLI for interacting with the HoneyHive REST API"
  homepage "https://github.com/honeyhiveai/honeyhive-cli"
  version "1.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/honeyhiveai/honeyhive-cli/releases/download/v1.3.0/honeyhive-1.3.0-macos-arm64.tar.gz"
      sha256 "0bf5af6716a1ce00abeee9a4bfe866880d6ae35c172f9bcd7316c1c6dcebb176"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/honeyhiveai/honeyhive-cli/releases/download/v1.3.0/honeyhive-1.3.0-linux-arm64.tar.gz"
      sha256 "59099ed912a05c2a5519f154dbf32643e848934f55c51048b382bc747982821f"
    end

    on_intel do
      url "https://github.com/honeyhiveai/honeyhive-cli/releases/download/v1.3.0/honeyhive-1.3.0-linux-x64.tar.gz"
      sha256 "66154e1fb75d82e75feca20655b11bd3d328fb6980273fa1545e339e8671e25c"
    end
  end

  def install
    bin.install "honeyhive"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/honeyhive --version")
  end
end
