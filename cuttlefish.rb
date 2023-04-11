class Cuttlefish < Formula
  desc "Desktop chat app for ChatGPT that uses tools."
  homepage "https://github.com/cube2222/cuttlefish"
  version "v0.0.1-alpha1"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/cube2222/cuttlefish/releases/download/v0.0.1-alpha1/cuttlefish_darwin_amd64.zip"
      sha256 "130f052743da495a3239f75dffec2b9cc6965fc255a798bd60c1de7e153bc132"

      def install
        bin.install "cuttlefish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/cube2222/cuttlefish/releases/download/v0.0.1-alpha1/cuttlefish_darwin_arm64.zip"
      sha256 "36ce9e11287da0a558bd6bd9892fe29f228cee7a7dc2bbc2be220012185f6718"

      def install
        bin.install "cuttlefish"
      end
    end
  end
end
