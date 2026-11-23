class Tridennote < Formula
  desc "Notes, next level, in your terminal"
  homepage "https://github.com/tridennote/cli"
  version "1.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tridennote/cli/releases/download/v1.5.0/tridennote_darwin_arm64.tar.gz"
      sha256 "a07090786519166ed1420743481e51fda6b2a68b8eecb5961d4fb8894704d304"
    else
      url "https://github.com/tridennote/cli/releases/download/v1.5.0/tridennote_darwin_amd64.tar.gz"
      sha256 "0e81e7481dc617318a7c05d3eaa6d44f9a0e90f85b1999f951ca3f2218c5962d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tridennote/cli/releases/download/v1.5.0/tridennote_linux_arm64.tar.gz"
      sha256 "3e567816a7e927191fc9fc61c3bec8cf1774f98a3bfe7dc6f8e52496646d77f8"
    else
      url "https://github.com/tridennote/cli/releases/download/v1.5.0/tridennote_linux_amd64.tar.gz"
      sha256 "316ec447c2bf7f9fe8180990c50b15e83ca6fc561e0be03b7f05bf4f065c5ace"
    end
  end

  def install
    bin.install "tridennote"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tridennote --version")
  end
end
