class Beplus < Formula
  desc "CLI tool for managing your beplus.cloud resources"
  homepage "https://beplus.cloud/cli"
  version "0.6.0"
  license "MIT"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bepluscloud/homebrew-cli/releases/download/v0.6.0/beplus-cli-v0.6.0-macos-arm64.tar.gz"
      sha256 "56899c12d0d931f9939d6992eb713ddc1498fdf40aec4aaa852fbda4f5e91049"

      def install
        bin.install "beplus"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/bepluscloud/homebrew-cli/releases/download/v0.6.0/beplus-cli-v0.6.0-macos-x64.tar.gz"
      sha256 "b6109766eaefeaac666f9a49b2630247cd9b8854f1c6829dca0da40d92456fe4"

      def install
        bin.install "beplus"
      end
    end
  end
  
  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bepluscloud/homebrew-cli/releases/download/v0.6.0/beplus-cli-v0.6.0-linux-arm64.tar.gz"
      sha256 "ae0f4230f32da94ffaa9f1b467b2153b4fbeba463763b39358b0b381637ae65d"

      def install
        bin.install "beplus"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/bepluscloud/homebrew-cli/releases/download/v0.6.0/beplus-cli-v0.6.0-linux-x64.tar.gz"
      sha256 "8c9bdcaff0a99b4c86a3d12d06e51367d615e6e9545a9814ad7a71c699ec92cb"

      def install
        bin.install "beplus"
      end
    end
  end
end
