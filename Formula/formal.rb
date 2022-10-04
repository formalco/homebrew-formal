class Formal < Formula
    desc "The Formal CLI"
    homepage "https://github.com/formalco/cli"
    version "0.8.0"

    on_macos do
      if Hardware::CPU.intel?
        url "https://static-assets.formalcloud.net/release/formalcli-darwin-amd64.tar.gz"
        sha256 "0e44ce747e0a8dff77843cbcfe447674fe7d9eb006532a996528fb7369c3ffa5"
  
        def install
          bin.install "formal"
        end
      end
      if Hardware::CPU.arm?
        url "https://static-assets.formalcloud.net/release/formalcli-darwin-arm64.tar.gz"
        sha256 "1c390025a269bfd9f0a8171b51faa838211a88c447b96e93ebbe80dd9dcb8932"
  
        def install
          bin.install "formal"
        end
      end
    end
  
    on_linux do
      if Hardware::CPU.intel?
        url "https://static-assets.formalcloud.net/release/formalcli-linux-amd64.tar.gz"
        sha256 "4c9c6f60b9f858e7b7ae78be3cbfdb0d5004fe421d2d164a578bac42ec386b89"
  
        def install
          bin.install "formal"
        end
      end
      if Hardware::CPU.arm?
        url "https://static-assets.formalcloud.net/release/formalcli-linux-arm64.tar.gz"
        sha256 "07059161bbe31b832b7be038256573f157f2f59c5bef29dedbd47cc4aeca1c12"

        def install
          bin.install "formal"
        end
      end
    end
end
  