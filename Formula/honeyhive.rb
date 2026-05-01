class Honeyhive < Formula
  desc "CLI for interacting with the HoneyHive REST API"
  homepage "https://github.com/honeyhiveai/honeyhive-cli"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/honeyhiveai/honeyhive-cli/releases/download/v1.0.0-rc.1/honeyhive-1.0.0-rc.1-macos-arm64.tar.gz"
      sha256 "49d80b5b8c3978b8b5c6c2c1d8516e67c7a9bd3519bdd55d6f7b5850441cff35"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/honeyhiveai/honeyhive-cli/releases/download/v1.0.0-rc.1/honeyhive-1.0.0-rc.1-linux-arm64.tar.gz"
      sha256 "934a6f5735d24e0c28a94a1aa23428639595d62f2d6f0dae96aaf39a4e02ffca"
    end

    on_intel do
      url "https://github.com/honeyhiveai/honeyhive-cli/releases/download/v1.0.0-rc.1/honeyhive-1.0.0-rc.1-linux-x64.tar.gz"
      sha256 "851c3603b242a1519a2dbce19a090c9dd70ac98fd8bb6d1171114979d345267d"
    end
  end

  def install
    bin.install "honeyhive"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/honeyhive --version")
  end
end
