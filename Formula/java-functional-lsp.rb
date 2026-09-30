class JavaFunctionalLsp < Formula
  desc "Java LSP server enforcing functional programming best practices"
  homepage "https://github.com/aviadshiber/java-functional-lsp"
  url "https://files.pythonhosted.org/packages/5f/a2/28c54a6ca4c5b284e03765e19170945fa1bc021f69d9b155aa2abe18f2a7/java_functional_lsp-0.14.2.tar.gz"
  sha256 "ecb2caa4755d5b2e3584ac8962749285c2601b9e4408b2e249d7082f72a4803b"
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

