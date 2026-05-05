class Honeyhive < Formula
  desc "CLI for interacting with the HoneyHive REST API"
  homepage "https://github.com/honeyhiveai/honeyhive-cli"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/honeyhiveai/honeyhive-cli/releases/download/v1.0.0-rc.5/honeyhive-1.0.0-rc.5-macos-arm64.tar.gz"
      sha256 "41a9dd830db97956655af4c14da694ce6c06e7d6cce34323cdac26d7d6100af9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/honeyhiveai/honeyhive-cli/releases/download/v1.0.0-rc.5/honeyhive-1.0.0-rc.5-linux-arm64.tar.gz"
      sha256 "d3599d22f1f189bb43f697a31f08aa04d220e3c5bbacc9144462bfd2ccbf4959"
    end

    on_intel do
      url "https://github.com/honeyhiveai/honeyhive-cli/releases/download/v1.0.0-rc.5/honeyhive-1.0.0-rc.5-linux-x64.tar.gz"
      sha256 "1f0be3bbdfaa1e4fca8c297207fd12527b163e3ad0623e3880f6646c4d129a73"
    end
  end

  def install
    bin.install "honeyhive"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/honeyhive --version")
  end
end
