class Beplus < Formula
  desc "CLI tool for managing your beplus.cloud resources"
  homepage "https://beplus.cloud/cli"
  version "0.3.0"
  license "MIT"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bepluscloud/homebrew-cli/releases/download/v0.3.0/beplus-cli-v0.3.0-macos-arm64.tar.gz"
      sha256 "5facfc76fcd1ae8b75a3cf48ae87bfacb8710b474eee19c88562c2b023229b0e"

      def install
        bin.install "beplus"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/bepluscloud/homebrew-cli/releases/download/v0.3.0/beplus-cli-v0.3.0-macos-x64.tar.gz"
      sha256 "dfb051b6c6fe12d7f1e660f78975933ac98476cf863cf11edda1e7f8d4aece96"

      def install
        bin.install "beplus"
      end
    end
  end
  
  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bepluscloud/homebrew-cli/releases/download/v0.3.0/beplus-cli-v0.3.0-linux-arm64.tar.gz"
      sha256 "b1199c455efcbd673d00c4c73fab8265a124686c24cb879916e168095dc6d6c9"

      def install
        bin.install "beplus"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/bepluscloud/homebrew-cli/releases/download/v0.3.0/beplus-cli-v0.3.0-linux-x64.tar.gz"
      sha256 "57c2f95543044b605795725a53a9012f061a6d87f34faea3dde6f4a68547d1dd"

      def install
        bin.install "beplus"
      end
    end
  end
end
