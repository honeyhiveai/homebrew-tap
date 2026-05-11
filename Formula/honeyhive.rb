class Honeyhive < Formula
  desc "CLI for interacting with the HoneyHive REST API"
  homepage "https://github.com/honeyhiveai/honeyhive-cli"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/honeyhiveai/honeyhive-cli/releases/download/v1.0.0/honeyhive-1.0.0-macos-arm64.tar.gz"
      sha256 "6ac7004743600f28bfccb8dfde356d5ba2ca30a395bbb53b36b24544111131cb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/honeyhiveai/honeyhive-cli/releases/download/v1.0.0/honeyhive-1.0.0-linux-arm64.tar.gz"
      sha256 "93f1ea2e3b18d503fea84582e6b050178facb3dc64f2f29256be45f3b49876ba"
    end

    on_intel do
      url "https://github.com/honeyhiveai/honeyhive-cli/releases/download/v1.0.0/honeyhive-1.0.0-linux-x64.tar.gz"
      sha256 "ef510691cb59ef09fb5a3f135b75d56d71f31020af1204d89d620bbc15688140"
    end
  end

  def install
    bin.install "honeyhive"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/honeyhive --version")
  end
end
