class Cuttlefish < Formula
  desc "Desktop ChatGPT App that can use Tools."
  homepage "https://github.com/cube2222/cuttlefish"
  version "v0.1.1"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/cube2222/cuttlefish/releases/download/v0.1.1/cuttlefish_darwin_amd64.zip"
      sha256 "9640a0f7ffe7046571d9cfac2529d02f560d254a35c492aedbb56990795a3004"

      def install
        bin.install "cuttlefish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/cube2222/cuttlefish/releases/download/v0.1.1/cuttlefish_darwin_arm64.zip"
      sha256 "b8fae160be7f7b6e2a67eb0caa4ce6e56e47f3fbcc6b863034726b4623dcae13"

      def install
        bin.install "cuttlefish"
      end
    end
  end
end
