class JavaFunctionalLsp < Formula
  desc "Java LSP server enforcing functional programming best practices"
  homepage "https://github.com/aviadshiber/java-functional-lsp"
  url "https://files.pythonhosted.org/packages/f5/d8/329d4becf827cdbb3c6af50c10a7b42a5f06a1b731c564e2691cc7c87a91/java_functional_lsp-0.7.8.tar.gz"
  sha256 "f1c0d3a0540f803ced4ed4aaf16c241fac4b0a46c4e009e8ec7753f661d774f2"
  license "MIT"

  depends_on "python@3.12"
  depends_on "jdtls" => :recommended

  def install
    python3 = "python3.12"
    venv = libexec/"venv"
    system python3, "-m", "venv", venv
    system venv/"bin/pip", "install", "--upgrade", "pip"
    system venv/"bin/pip", "install", buildpath
    bin.install_symlink Dir[venv/"bin/java-functional-lsp"]
  end

  test do
    assert_match "java-functional-lsp", shell_output("#{bin}/java-functional-lsp --help 2>&1", 1)
  end
end

