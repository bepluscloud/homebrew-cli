class Beplus < Formula
  desc "CLI tool for managing your beplus.cloud resources"
  homepage "https://beplus.cloud/cli"
  version "0.7.0"
  license "MIT"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bepluscloud/homebrew-cli/releases/download/v0.7.0/beplus-cli-v0.7.0-macos-arm64.tar.gz"
      sha256 "9e09806f9177e17ae118c3f16028b5b9862ad6b86ad7a3d4e51a4ae7f8ec9aef"

      def install
        bin.install "beplus"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/bepluscloud/homebrew-cli/releases/download/v0.7.0/beplus-cli-v0.7.0-macos-x64.tar.gz"
      sha256 "3f9293211df5ed7bc35dff150f9e6f50631771197dbcc8e87c9fd1f3ea5a1d82"

      def install
        bin.install "beplus"
      end
    end
  end
  
  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bepluscloud/homebrew-cli/releases/download/v0.7.0/beplus-cli-v0.7.0-linux-arm64.tar.gz"
      sha256 "515ca53c81d7c80c50a41f4295ef621e26b152e0e2b76a389a3c572cb77f20e4"

      def install
        bin.install "beplus"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/bepluscloud/homebrew-cli/releases/download/v0.7.0/beplus-cli-v0.7.0-linux-x64.tar.gz"
      sha256 "721d49ad607ffe52cc7ff3f0a69497f256758c0187a36bd60bb7dfe009b3269a"

      def install
        bin.install "beplus"
      end
    end
  end
end
