class JavaFunctionalLsp < Formula
  desc "Java LSP server enforcing functional programming best practices"
  homepage "https://github.com/aviadshiber/java-functional-lsp"
  url "https://files.pythonhosted.org/packages/81/6c/1c2a65dac1f726dd9ede249571516ceda7c9940b70d88d8098652537358f/java_functional_lsp-0.9.7.tar.gz"
  sha256 "3727806c008136804d68be3eedc5109e7da6e58cf60020d0d86ec8e9fe2129fc"
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

