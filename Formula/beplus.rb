class Beplus < Formula
  desc "CLI tool for managing your beplus.cloud resources"
  homepage "https://beplus.cloud/cli"
  version "0.5.0"
  license "MIT"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bepluscloud/homebrew-cli/releases/download/v0.5.0/beplus-cli-v0.5.0-macos-arm64.tar.gz"
      sha256 "bf6a6e49d4af3603e80fec19c7ead33767498cc0f32418966ca853c5501af143"

      def install
        bin.install "beplus"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/bepluscloud/homebrew-cli/releases/download/v0.5.0/beplus-cli-v0.5.0-macos-x64.tar.gz"
      sha256 "15c3b638297f0e358aa02b95239fbe9a9c85c62076b913af0fec2c92c28476cd"

      def install
        bin.install "beplus"
      end
    end
  end
  
  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bepluscloud/homebrew-cli/releases/download/v0.5.0/beplus-cli-v0.5.0-linux-arm64.tar.gz"
      sha256 "1df6ac9dcb4be52c5e6b372316fb73e6278f9134f84187eafcb65c65ab5d3e48"

      def install
        bin.install "beplus"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/bepluscloud/homebrew-cli/releases/download/v0.5.0/beplus-cli-v0.5.0-linux-x64.tar.gz"
      sha256 "3fe690735c2d98962bab331bb91925ea38047ab0d62d0fd87bda84c150f5966e"

      def install
        bin.install "beplus"
      end
    end
  end
end
