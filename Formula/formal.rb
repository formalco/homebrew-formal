class Formal < Formula
    desc "The Formal CLI"
    homepage "https://github.com/formalco/cli"
    version "0.4.0"

    on_macos do
      if Hardware::CPU.intel?
        url "https://formal-public.s3.eu-west-1.amazonaws.com/release/formalcli-darwin-amd64.tar.gz"
        sha256 "e7ebdadc8a8c187bea8ffee4e398eb6af7db9309e9ba627cfe2fd8f251378b1a"
  
        def install
          bin.install "formal"
        end
      end
      if Hardware::CPU.arm?
        url "https://formal-public.s3.eu-west-1.amazonaws.com/release/formalcli-darwin-arm64.tar.gz"
        sha256 "872c82cd397276c49e97c91615731c0590aaf8e4d76e07bcee49c250640e68c3"
  
        def install
          bin.install "formal"
        end
      end
    end
  
    on_linux do
      if Hardware::CPU.intel?
        url "https://formal-public.s3.eu-west-1.amazonaws.com/release/formalcli-linux-amd64.tar.gz"
        sha256 "77a7bafe7bec2717def13bc7f267adaa2b5ace7cbde6c95fcdc2893af9d05462"
  
        def install
          bin.install "formal"
        end
      end
    end
end
  