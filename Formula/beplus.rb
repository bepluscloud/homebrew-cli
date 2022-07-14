class Beplus < Formula
  desc "CLI tool for managing your beplus.cloud resources"
  homepage "https://beplus.cloud/cli"
  version "0.8.0"
  license "MIT"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bepluscloud/homebrew-cli/releases/download/v0.8.0/beplus-cli-v0.8.0-macos-arm64.tar.gz"
      sha256 "f808ba31759174f34ab65c187e2e564970bac1d2c1d9f6255f0eee722e844e7a"

      def install
        bin.install "beplus"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/bepluscloud/homebrew-cli/releases/download/v0.8.0/beplus-cli-v0.8.0-macos-x64.tar.gz"
      sha256 "8a94daaefd851be3178c6308625e77f406a2088fe66e3565740b6c934325935c"

      def install
        bin.install "beplus"
      end
    end
  end
  
  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bepluscloud/homebrew-cli/releases/download/v0.8.0/beplus-cli-v0.8.0-linux-arm64.tar.gz"
      sha256 "9ccb8597c78d7565b7048f67f212ecb60fea60ff007a4ae80413ef8761f4ae7f"

      def install
        bin.install "beplus"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/bepluscloud/homebrew-cli/releases/download/v0.8.0/beplus-cli-v0.8.0-linux-x64.tar.gz"
      sha256 "d02056f63a54e8d6f32f7c8c95335191e3666e574e8346859e5f6a99240b31d5"

      def install
        bin.install "beplus"
      end
    end
  end
end
