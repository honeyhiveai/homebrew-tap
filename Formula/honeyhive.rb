class Honeyhive < Formula
  desc "CLI for interacting with the HoneyHive REST API"
  homepage "https://github.com/honeyhiveai/honeyhive-cli"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/honeyhiveai/honeyhive-cli/releases/download/v1.1.0/honeyhive-1.1.0-macos-arm64.tar.gz"
      sha256 "d94bd7910add6fa50af430638073511b25a4c6be020a230b84d764f17d206026"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/honeyhiveai/honeyhive-cli/releases/download/v1.1.0/honeyhive-1.1.0-linux-arm64.tar.gz"
      sha256 "157cc7b93c3524c770de6aee47ebe9d3e950f12ae0b571a7361b0a8537f92b1a"
    end

    on_intel do
      url "https://github.com/honeyhiveai/honeyhive-cli/releases/download/v1.1.0/honeyhive-1.1.0-linux-x64.tar.gz"
      sha256 "d0bc6c686609a71315ced68e62c3003651e955b3607e5041a463576b6c380a8c"
    end
  end

  def install
    bin.install "honeyhive"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/honeyhive --version")
  end
end
