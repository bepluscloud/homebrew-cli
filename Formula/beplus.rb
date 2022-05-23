class Beplus < Formula
  desc "CLI tool for managing your beplus.cloud resources"
  homepage "https://beplus.cloud/cli"
  version "0.1.0"
  license "MIT"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bepluscloud/homebrew-cli/releases/download/v0.1.0/beplus-cli-v0.1.0-macos-arm64.tar.gz"
      sha256 "b21dc71d2e9ddd9efd694acad985b0cdb144d81702db7194da8939c2949de98a"

      def install
        bin.install "beplus"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/bepluscloud/homebrew-cli/releases/download/v0.1.0/beplus-cli-v0.1.0-macos-x64.tar.gz"
      sha256 "d0bcfa281fcb69f072479d0058cb09fa3fd69f2c476b17a67630b0c2ecb97fb2"

      def install
        bin.install "beplus"
      end
    end
  end
  
  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bepluscloud/homebrew-cli/releases/download/v0.1.0/beplus-cli-v0.1.0-linux-arm64.tar.gz"
      sha256 "ea506df97c0fb09b529ef82b3418c978e1cd0e156437fd25a5e020ece79ac0c3"

      def install
        bin.install "beplus"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/bepluscloud/homebrew-cli/releases/download/v0.1.0/beplus-cli-v0.1.0-linux-x64.tar.gz"
      sha256 "91c172024d3ac496e3a11045678b2378f9690c85ebb5eeb3c16963c122dbf2c3"

      def install
        bin.install "beplus"
      end
    end
  end
end
