class Semtest < Formula
  desc "Semantic testing for codebases using LLM CLIs"
  homepage "https://github.com/westopp/semtest"
  url "https://registry.npmjs.org/@westopp/semtest/-/semtest-0.1.5.tgz"
  sha256 "0a428c850c74fdaa688a593504099abc999cfbf59c720970c3edf5a4a83597d2"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "semtest", shell_output("#{bin}/semtest --help")
  end
end
