# This formula is updated on each release of caesar-search-cli.
class CaesarSearch < Formula
  desc "CLI for the Caesar search API"
  homepage "https://github.com/caesar-data/caesar-search-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/caesar-data/caesar-search-cli/releases/download/v0.1.0/caesar-search_0.1.0_darwin_arm64.tar.gz"
      sha256 "60965df2fed72b951b40a960c02f286d34f946707a061b099ee26fd78f5ef320"
    else
      url "https://github.com/caesar-data/caesar-search-cli/releases/download/v0.1.0/caesar-search_0.1.0_darwin_amd64.tar.gz"
      sha256 "3b3614d51dfd6db9e3b108b50f5b588764d9f48401f7e79150c713a24ebf58e5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/caesar-data/caesar-search-cli/releases/download/v0.1.0/caesar-search_0.1.0_linux_arm64.tar.gz"
      sha256 "02956930c98f3f6182de90d48642ee450698edad88006c9256fffd4f218370f8"
    else
      url "https://github.com/caesar-data/caesar-search-cli/releases/download/v0.1.0/caesar-search_0.1.0_linux_amd64.tar.gz"
      sha256 "35d0110fe841f8ae2e68b38fbdd858ea4b83193b84cc898d515771cea6b728fb"
    end
  end

  def install
    bin.install "caesar-search"
  end

  test do
    assert_match "caesar-search", shell_output("#{bin}/caesar-search --version")
  end
end
