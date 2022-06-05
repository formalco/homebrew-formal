class Formal < Formula
    desc "The Formal CLI"
    homepage "https://github.com/formalco/cli"
    url "https://formal-public.s3.eu-west-1.amazonaws.com/formal.tar.gz"
    sha256 "a8f2b85d812deb076725f9d697925733530d46866c56400c6fc079996c6c074c"
    version "0.3.0"
  
    def install
      bin.install "formal"
    end
  end
  