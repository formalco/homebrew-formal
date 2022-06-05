class Formal < Formula
    desc "The Formal CLI"
    homepage "https://github.com/formalco/cli"
    url "https://formal-public.s3.eu-west-1.amazonaws.com/formal.tar.gz"
    sha256 "d11b5e9bd12c8b21c7d72efca95a6dba5489a8ec7267a1c32429378546253462"
    version "0.2.0"
  
    def install
      bin.install "formal"
    end
  end
  