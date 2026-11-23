class Tridennote < Formula
  desc "Notes, next level, in your terminal"
  homepage "https://github.com/tridennote/cli"
  version "1.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tridennote/cli/releases/download/v1.6.0/tridennote_darwin_arm64.tar.gz"
      sha256 "a6526aeb0eb135f80aa8c56fce28a53b033a658715c69d838d0111d197ddc344"
    else
      url "https://github.com/tridennote/cli/releases/download/v1.6.0/tridennote_darwin_amd64.tar.gz"
      sha256 "a69874ed37e76d9078f8dd268fa8a501a9c14304ca8858a689097c4902c42501"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tridennote/cli/releases/download/v1.6.0/tridennote_linux_arm64.tar.gz"
      sha256 "8714be7159369ff96d03c8ed80c7f08dc8a62d5d030159b129d3f9d350dfd7ef"
    else
      url "https://github.com/tridennote/cli/releases/download/v1.6.0/tridennote_linux_amd64.tar.gz"
      sha256 "43e6d282b53a6bfc439f49ce28cee3bdda5b9a36b1ea66fdc922efc2eab56edf"
    end
  end

  def install
    bin.install "tridennote"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tridennote --version")
  end
end
