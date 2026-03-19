class JavaFunctionalLsp < Formula
  desc "Java LSP server enforcing functional programming best practices"
  homepage "https://github.com/aviadshiber/java-functional-lsp"
  url "https://files.pythonhosted.org/packages/d5/0a/715e330127e0cab3866c5b3b957b19ed07824ece5ad93793f311546589b0/java_functional_lsp-0.1.0.tar.gz"
  sha256 "a13def4b9d9a42a6a7ec580ed1616bd1d1dc17279fd70d1ede5482adb15f1fe3"
  license "MIT"

  depends_on "python@3.12"

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
