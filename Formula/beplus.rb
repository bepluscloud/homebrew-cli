class Beplus < Formula
  desc "CLI tool for managing your beplus.cloud resources"
  homepage "https://beplus.cloud/cli"
  version "0.9.0"
  license "MIT"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bepluscloud/homebrew-cli/releases/download/v0.9.0/beplus-cli-v0.9.0-macos-arm64.tar.gz"
      sha256 "e056339739ccaee2a01058226fe7529761e3bb707e130531ad978d535aa5798c"

      def install
        bin.install "beplus"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/bepluscloud/homebrew-cli/releases/download/v0.9.0/beplus-cli-v0.9.0-macos-x64.tar.gz"
      sha256 "10353cfa2a24b4fca4fe1f26e8847d24de70200f5f6b089898a3ad6a552ecb8e"

      def install
        bin.install "beplus"
      end
    end
  end
  
  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bepluscloud/homebrew-cli/releases/download/v0.9.0/beplus-cli-v0.9.0-linux-arm64.tar.gz"
      sha256 "04c5b89ce240163daf62724e774931f2fd013f64b93b161a99e09f8400c963db"

      def install
        bin.install "beplus"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/bepluscloud/homebrew-cli/releases/download/v0.9.0/beplus-cli-v0.9.0-linux-x64.tar.gz"
      sha256 "514c1bc157030016b3ccb71e674672694cce0d7c201e6f8fdb1b63362be921aa"

      def install
        bin.install "beplus"
      end
    end
  end
end
