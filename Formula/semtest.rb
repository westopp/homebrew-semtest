class Semtest < Formula
  desc "Semantic testing for codebases using LLM CLIs"
  homepage "https://github.com/westopp/semtest"
  url "https://registry.npmjs.org/@westopp/semtest/-/semtest-0.1.4.tgz"
  sha256 "5314d8b2e9529486243606b3ca0db73e82ae0f0163779a1f7c357d05951c05f1"
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
