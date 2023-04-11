class Cuttlefish < Formula
  desc "Desktop chat app for ChatGPT that uses tools."
  homepage "https://github.com/cube2222/cuttlefish"
  version "v0.0.1-alpha2"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/cube2222/cuttlefish/releases/download/v0.0.1-alpha2/cuttlefish_darwin_amd64.zip"
      sha256 "d49c0aade47916e5149b95cdf3c1253ed41deac78bad1547edbcb5ed9ed1cc04"

      def install
        bin.install "cuttlefish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/cube2222/cuttlefish/releases/download/v0.0.1-alpha2/cuttlefish_darwin_arm64.zip"
      sha256 "8f954c04eef635c0ec7d815b6e4cd37684b58b037aed49a378ea748f424b9b04"

      def install
        bin.install "cuttlefish"
      end
    end
  end
end
