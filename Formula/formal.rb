class Formal < Formula
    desc "The Formal CLI"
    homepage "https://github.com/formalco/cli"
    version "0.7.0"

    on_macos do
      if Hardware::CPU.intel?
        url "https://formal-public.s3.eu-west-1.amazonaws.com/release/formalcli-darwin-amd64.tar.gz"
        sha256 "77621af6df2ccce4944331275f9e099ab08644c2ceacfceef11f9dbdede54d60"
  
        def install
          bin.install "formal"
        end
      end
      if Hardware::CPU.arm?
        url "https://formal-public.s3.eu-west-1.amazonaws.com/release/formalcli-darwin-arm64.tar.gz"
        sha256 "58cf90b8e190bc6485125571e3700df040b7dac7ea7d5e3d4fd913d4ac4cf1df"
  
        def install
          bin.install "formal"
        end
      end
    end
  
    on_linux do
      if Hardware::CPU.intel?
        url "https://formal-public.s3.eu-west-1.amazonaws.com/release/formalcli-linux-amd64.tar.gz"
        sha256 "c3245aa12316ecb5879a61554f15f25ad0a7a122ab5593672411a290deef7b55"
  
        def install
          bin.install "formal"
        end
      end
      if Hardware::CPU.arm?
        url "https://formal-public.s3.eu-west-1.amazonaws.com/release/formalcli-linux-arm64.tar.gz"
        sha256 "262431dc45f1ff25796f7ac0139206fdcaaa19b70a9729cb3073620fbca6adfc"

        def install
          bin.install "formal"
        end
      end
    end
end
  