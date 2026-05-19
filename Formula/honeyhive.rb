class Honeyhive < Formula
  desc "CLI for interacting with the HoneyHive REST API"
  homepage "https://github.com/honeyhiveai/honeyhive-cli"
  version "1.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/honeyhiveai/honeyhive-cli/releases/download/v1.1.1/honeyhive-1.1.1-macos-arm64.tar.gz"
      sha256 "7674caffa2b2d211b1fab04c719c8ed44734b380845f356cf0779957918a6660"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/honeyhiveai/honeyhive-cli/releases/download/v1.1.1/honeyhive-1.1.1-linux-arm64.tar.gz"
      sha256 "4a31097d1ea3c3cfabe39502fea698fd61b7c1520868ff826c69bd72d95cee04"
    end

    on_intel do
      url "https://github.com/honeyhiveai/honeyhive-cli/releases/download/v1.1.1/honeyhive-1.1.1-linux-x64.tar.gz"
      sha256 "447b5f5cf4b41e1ee7f9603244aed13360b2e7a6e60db97a1ffe014da98704e9"
    end
  end

  def install
    bin.install "honeyhive"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/honeyhive --version")
  end
end
