class Semtest < Formula
  desc "Semantic testing for codebases using LLM CLIs"
  homepage "https://github.com/westopp/semtest"
  url "https://registry.npmjs.org/@westopp/semtest/-/semtest-0.2.0.tgz"
  sha256 "c242bd8c978d68a27b744ccc466cc2c75afad7a98134e153234daac4d82a89b1"
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
