class Honeyhive < Formula
  desc "CLI for interacting with the HoneyHive REST API"
  homepage "https://github.com/honeyhiveai/honeyhive-cli"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/honeyhiveai/honeyhive-cli/releases/download/v1.6.0/honeyhive-1.6.0-macos-arm64.tar.gz"
      sha256 "d4d1e5b8df95db596d17969e6b7e9b4f6b24b4fbc6a8582816825c79711f6782"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/honeyhiveai/honeyhive-cli/releases/download/v1.6.0/honeyhive-1.6.0-linux-arm64.tar.gz"
      sha256 "3f412e70b91fdf3929ddba17c5449342e39517161b4302993936bda49eebb0bc"
    end

    on_intel do
      url "https://github.com/honeyhiveai/honeyhive-cli/releases/download/v1.6.0/honeyhive-1.6.0-linux-x64.tar.gz"
      sha256 "7c938f21270706a60ec036a38bf988dc17854406d481a76101869f12544846f7"
    end
  end

  def install
    bin.install "honeyhive"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/honeyhive --version")
  end
end
