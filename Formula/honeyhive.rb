class Honeyhive < Formula
  desc "CLI for interacting with the HoneyHive REST API"
  homepage "https://github.com/honeyhiveai/honeyhive-cli"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/honeyhiveai/honeyhive-cli/releases/download/v1.0.0-rc.3/honeyhive-1.0.0-rc.3-macos-arm64.tar.gz"
      sha256 "50fdda23b5d4cad4fc5f74f8d029e02bf7da3b8b64aac6502273ce853ed07701"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/honeyhiveai/honeyhive-cli/releases/download/v1.0.0-rc.3/honeyhive-1.0.0-rc.3-linux-arm64.tar.gz"
      sha256 "2a595d3c2b8fdf91734783d8fbd4d054bd87304be7c7419f9d434a7dd38cb402"
    end

    on_intel do
      url "https://github.com/honeyhiveai/honeyhive-cli/releases/download/v1.0.0-rc.3/honeyhive-1.0.0-rc.3-linux-x64.tar.gz"
      sha256 "796e3a38324ff7d1f2ce1b2cdbca19448ec07666624bd8a025b034aa4c21ee7c"
    end
  end

  def install
    bin.install "honeyhive"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/honeyhive --version")
  end
end
