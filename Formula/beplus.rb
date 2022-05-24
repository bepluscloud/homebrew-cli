class Beplus < Formula
  desc "CLI tool for managing your beplus.cloud resources"
  homepage "https://beplus.cloud/cli"
  version "0.4.0"
  license "MIT"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bepluscloud/homebrew-cli/releases/download/v0.4.0/beplus-cli-v0.4.0-macos-arm64.tar.gz"
      sha256 "4370e38cbb6bea7691df4502176c8e962bfbde2dda174eff37ff64bc9be4f709"

      def install
        bin.install "beplus"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/bepluscloud/homebrew-cli/releases/download/v0.4.0/beplus-cli-v0.4.0-macos-x64.tar.gz"
      sha256 "a310b61b5b4ab8105940997ed4229cf61df64ae35d90e9c3c78ee3dda3b67b71"

      def install
        bin.install "beplus"
      end
    end
  end
  
  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bepluscloud/homebrew-cli/releases/download/v0.4.0/beplus-cli-v0.4.0-linux-arm64.tar.gz"
      sha256 "14e82c054f361a7c21c307d668714fe1f107e8a8bb3afa97e6bdd5266589e9f7"

      def install
        bin.install "beplus"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/bepluscloud/homebrew-cli/releases/download/v0.4.0/beplus-cli-v0.4.0-linux-x64.tar.gz"
      sha256 "2994138b28294c9ff6e6060ce46471b715b823e52c7ccfdf356a6b1cf959611b"

      def install
        bin.install "beplus"
      end
    end
  end
end
