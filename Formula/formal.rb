class Formal < Formula
    desc "The Formal CLI"
    homepage "https://github.com/formalco/cli"
    url "https://formal-public.s3.eu-west-1.amazonaws.com/formal.tar.gz"
    sha256 "79770064c6135bd47d5fb0cd7109bcd0787b7567a5394de57500ebc179fe271b"
    version "0.1.0"
  
    def install
      bin.install "formal"
    end
  end
  