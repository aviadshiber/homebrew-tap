class JavaFunctionalLsp < Formula
  desc "Java LSP server enforcing functional programming best practices"
  homepage "https://github.com/aviadshiber/java-functional-lsp"
  url "https://files.pythonhosted.org/packages/2f/1b/01eb7db211d85c7250308dc4a6f2d8952e7bbe94de848610f65bd9f01094/java_functional_lsp-0.6.0.tar.gz"
  sha256 "add907192181d479a7912ea20ebe4e649751dc130739c27ef8c4fb1998b5546d"
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

