class Beplus < Formula
  desc "CLI tool for managing your beplus.cloud resources"
  homepage "https://beplus.cloud/cli"
  version "0.2.0"
  license "MIT"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bepluscloud/homebrew-cli/releases/download/v0.2.0/beplus-cli-v0.2.0-macos-arm64.tar.gz"
      sha256 "e8aa50624184184623b70e64b1f89ae3627e4b2da4ba962903dbba871a1c8343"

      def install
        bin.install "beplus"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/bepluscloud/homebrew-cli/releases/download/v0.2.0/beplus-cli-v0.2.0-macos-x64.tar.gz"
      sha256 "608e441fbc44ab133532031298a6823fee54e43c8abaa2a106cd963f6e540d5c"

      def install
        bin.install "beplus"
      end
    end
  end
  
  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bepluscloud/homebrew-cli/releases/download/v0.2.0/beplus-cli-v0.2.0-linux-arm64.tar.gz"
      sha256 "b93a2545f5ba64fddf89568008b3d63758bc8e931cc5b00347f9cf4ba1da6ebf"

      def install
        bin.install "beplus"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/bepluscloud/homebrew-cli/releases/download/v0.2.0/beplus-cli-v0.2.0-linux-x64.tar.gz"
      sha256 "b4b0228376046e8a21a1cc92801fdff2bf0e28f1b3303205b6312ffcd01994b3"

      def install
        bin.install "beplus"
      end
    end
  end
end
