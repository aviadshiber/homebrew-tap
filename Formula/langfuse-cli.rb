class LangfuseCli < Formula
  desc "CLI tool for Langfuse LLM observability platform"
  homepage "https://github.com/aviadshiber/langfuse-cli"
  url "https://files.pythonhosted.org/packages/source/l/langfuse-cli/langfuse_cli-0.1.6.tar.gz"
  sha256 "35d612aaf1c959ff328a94544bfa85be188f76841e9eea00550be9c3de0a15ca"
  license "MIT"

  depends_on "python@3.12"

  def install
    python3 = "python3.12"
    venv = libexec/"venv"
    system python3, "-m", "venv", venv
    system venv/"bin/pip", "install", "--upgrade", "pip"
    system venv/"bin/pip", "install", buildpath
    bin.install_symlink Dir[venv/"bin/lf"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lf --version")
  end
end

