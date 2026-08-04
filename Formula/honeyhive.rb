class Honeyhive < Formula
  desc "CLI for interacting with the HoneyHive REST API"
  homepage "https://github.com/honeyhiveai/honeyhive-cli"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/honeyhiveai/honeyhive-cli/releases/download/v1.5.1/honeyhive-1.5.1-macos-arm64.tar.gz"
      sha256 "8a4b0f17f3b76930e00af47f6c3557e34d88fa2b5b910297a07834eaba41b33f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/honeyhiveai/honeyhive-cli/releases/download/v1.5.1/honeyhive-1.5.1-linux-arm64.tar.gz"
      sha256 "3e30ad1b0267af575efd0364b74d4f461f92682dd2f2e5ba4e0eb343c13d4313"
    end

    on_intel do
      url "https://github.com/honeyhiveai/honeyhive-cli/releases/download/v1.5.1/honeyhive-1.5.1-linux-x64.tar.gz"
      sha256 "f2cdebb3099fae0c19046309df2b77e0fca9ac195df873072e0540a6c353eeeb"
    end
  end

  def install
    bin.install "honeyhive"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/honeyhive --version")
  end
end
