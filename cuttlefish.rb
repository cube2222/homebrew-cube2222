class Cuttlefish < Formula
  desc "Desktop ChatGPT App that can use Tools."
  homepage "https://github.com/cube2222/cuttlefish"
  version "v0.1.0"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/cube2222/cuttlefish/releases/download/v0.1.0/cuttlefish_darwin_amd64.zip"
      sha256 "19d2b32506c7a14d5625219feef117439516521b1a2b595a48da6e57be7dabbf"

      def install
        bin.install "cuttlefish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/cube2222/cuttlefish/releases/download/v0.1.0/cuttlefish_darwin_arm64.zip"
      sha256 "e4628edee97a8e1241192be59b2eb669f19486ec50fb6b4692a47a1d1c34ee88"

      def install
        bin.install "cuttlefish"
      end
    end
  end
end
