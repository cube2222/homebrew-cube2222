class Cuttlefish < Formula
  desc "Desktop ChatGPT App that can use Tools."
  homepage "https://github.com/cube2222/cuttlefish"
  version "v0.1.0"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/cube2222/cuttlefish/releases/download/v0.1.0/cuttlefish_darwin_amd64.zip"
      sha256 "bae68c1ed9f2664f4155496068e40bbe2ea1ca91658be542249865d6b29c6123"

      def install
        bin.install "cuttlefish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/cube2222/cuttlefish/releases/download/v0.1.0/cuttlefish_darwin_arm64.zip"
      sha256 "aabeca44be6ba533ec8abd7b6e4721f529efaa6aeb1ac537d2c81d25185c84e3"

      def install
        bin.install "cuttlefish"
      end
    end
  end
end
