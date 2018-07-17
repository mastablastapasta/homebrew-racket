class Sicp < Formula
  desc "SICP Support for DrRacket"
  homepage "http://www.neilvandyke.org/racket/sicp/"
  url "https://github.com/sicp-lang/sicp/archive/0add3ff174d519abfde4bccf09f4664387c95763.zip"
  sha256 "7f85e55f2c6eb8fe53eeb7432baba3e54269786984db55f5c0fad57604b1d2d7"
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
