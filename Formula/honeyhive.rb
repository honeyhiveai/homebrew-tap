class Honeyhive < Formula
  desc "CLI for interacting with the HoneyHive REST API"
  homepage "https://github.com/honeyhiveai/honeyhive-cli"
  license "MIT"

  on_macos do
    # The embedded Node 24 runtime requires macOS 13.5+. Homebrew cannot
    # express 13.5, so Ventura (13.0) is the closest floor it can enforce.
    depends_on macos: :ventura

    on_arm do
      url "https://github.com/honeyhiveai/honeyhive-cli/releases/download/v1.10.0/honeyhive-1.10.0-macos-arm64.tar.gz"
      sha256 "142748de4b2fd52442517cdd7a016262205ebbd4f1da7ae0b3f50c2873927a57"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/honeyhiveai/honeyhive-cli/releases/download/v1.10.0/honeyhive-1.10.0-linux-arm64.tar.gz"
      sha256 "9c8dc6ba4745b5e19e6c703e88e279304342b377c03af4f521631448b0a688ae"
    end

    on_intel do
      url "https://github.com/honeyhiveai/honeyhive-cli/releases/download/v1.10.0/honeyhive-1.10.0-linux-x64.tar.gz"
      sha256 "6571da17653873b73009e50f9b63beeb957d94f0e277984399f8be0cd19c8249"
    end
  end

  def install
    bin.install "honeyhive"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/honeyhive --version")
  end
end
