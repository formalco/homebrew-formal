class Formal < Formula
    desc "The Formal CLI"
    homepage "https://github.com/formalco/cli"
    version "0.5.0"

    on_macos do
      if Hardware::CPU.intel?
        url "https://formal-public.s3.eu-west-1.amazonaws.com/release/formalcli-darwin-amd64.tar.gz"
        sha256 "6f5bbe1714fc2499edd7e9919c6925aa757feaabd43d57ee73450cde9afb3470"
  
        def install
          bin.install "formal"
        end
      end
      if Hardware::CPU.arm?
        url "https://formal-public.s3.eu-west-1.amazonaws.com/release/formalcli-darwin-arm64.tar.gz"
        sha256 "780a48e5beaafc5d11fd58ca0b6a8d8131415d34027869636ea1a03882071853"
  
        def install
          bin.install "formal"
        end
      end
    end
  
    on_linux do
      if Hardware::CPU.intel?
        url "https://formal-public.s3.eu-west-1.amazonaws.com/release/formalcli-linux-amd64.tar.gz"
        sha256 "4d91c3e0cdb9910a149996ea3512274685bc570e97242f30f7a234d89e2305a0"
  
        def install
          bin.install "formal"
        end
      end
    end
end
  