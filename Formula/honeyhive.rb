class Honeyhive < Formula
  desc "CLI for interacting with the HoneyHive REST API"
  homepage "https://github.com/honeyhiveai/honeyhive-cli"
  version "1.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/honeyhiveai/honeyhive-cli/releases/download/v1.2.1/honeyhive-1.2.1-macos-arm64.tar.gz"
      sha256 "9d42b05eadcd2a23d350ca98edb3955adb69e93e74777dcfed3241493b12bf5e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/honeyhiveai/honeyhive-cli/releases/download/v1.2.1/honeyhive-1.2.1-linux-arm64.tar.gz"
      sha256 "af4121944618b57490c21489917b96b7dbfea7c7094ac58430b35120662904ec"
    end

    on_intel do
      url "https://github.com/honeyhiveai/honeyhive-cli/releases/download/v1.2.1/honeyhive-1.2.1-linux-x64.tar.gz"
      sha256 "594519bf7d5519e098a1c30211fb6732fbdb2e426ca6b67b60c47ce9a4a50550"
    end
  end

  def install
    bin.install "honeyhive"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/honeyhive --version")
  end
end
