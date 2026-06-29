class Honeyhive < Formula
  desc "CLI for interacting with the HoneyHive REST API"
  homepage "https://github.com/honeyhiveai/honeyhive-cli"
  version "1.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/honeyhiveai/honeyhive-cli/releases/download/v1.4.0/honeyhive-1.4.0-macos-arm64.tar.gz"
      sha256 "865e9ed32b178dbe614d9e35bf6004772232cf839e8b54e6a052409f1b6a58a3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/honeyhiveai/honeyhive-cli/releases/download/v1.4.0/honeyhive-1.4.0-linux-arm64.tar.gz"
      sha256 "f4b01c45b4ceb5faeea14d86e48279f61c588a29036ee0ab0da28629d019489c"
    end

    on_intel do
      url "https://github.com/honeyhiveai/honeyhive-cli/releases/download/v1.4.0/honeyhive-1.4.0-linux-x64.tar.gz"
      sha256 "f9e71a70cf27f67835fe3e53707508b466a89b9ca68add5b49da20ed8b5dceaa"
    end
  end

  def install
    bin.install "honeyhive"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/honeyhive --version")
  end
end
