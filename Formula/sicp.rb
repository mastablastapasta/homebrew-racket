class Sicp < Formula
  desc "SICP Support for DrRacket"
  homepage "http://www.neilvandyke.org/racket/sicp/"
  url "https://github.com/sicp-lang/sicp/archive/0add3ff174d519abfde4bccf09f4664387c95763.zip"
  sha256 "20979241c861f7a5ecb04eb54a03d999c59b9321bc044e005ac68f02a2745ca9"
  revision 1

  bottle :unneeded

  def install
    system "/usr/local/bin/raco", "pkg", "install", "-n", "sicp"
  end


  test do
    exc = system "/usr/local/bin/raco", "pkg", "catalog-show", "sicp"
    assert_equal true, exc
  end
end
