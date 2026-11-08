class Tridennote < Formula
  desc "Notes, next level, in your terminal"
  homepage "https://github.com/tridennote/cli"
  version "1.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tridennote/cli/releases/download/v1.4.0/tridennote_darwin_arm64.tar.gz"
      sha256 "773e03c5ebf4bce4326c283d9b391d1271362378c71bd3752b166aae7f268f78"
    else
      url "https://github.com/tridennote/cli/releases/download/v1.4.0/tridennote_darwin_amd64.tar.gz"
      sha256 "46cb69dc3fccb6c5be6824cda647b48135ed1b499821685a37de0fa42e21430e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tridennote/cli/releases/download/v1.4.0/tridennote_linux_arm64.tar.gz"
      sha256 "2b982ec442f074f72a85642ce788e1344007d099ab3afa0de844ff1a10c55225"
    else
      url "https://github.com/tridennote/cli/releases/download/v1.4.0/tridennote_linux_amd64.tar.gz"
      sha256 "a757db935f8f48fdea6adec31bb17a45cd027f79b59f77fc9805dada11034401"
    end
  end

  def install
    bin.install "tridennote"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tridennote --version")
  end
end
