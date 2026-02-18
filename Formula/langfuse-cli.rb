class LangfuseCli < Formula
  desc "CLI tool for Langfuse LLM observability platform"
  homepage "https://github.com/aviadshiber/langfuse-cli"
  url "https://files.pythonhosted.org/packages/source/l/langfuse-cli/langfuse_cli-0.1.4.tar.gz"
  sha256 "207a4a299ad5fd158554b78b0a3aee4bceb48e4e7f0465b08feb96a7cf2629f2"
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

