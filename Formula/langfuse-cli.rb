class LangfuseCli < Formula
  desc "CLI tool for Langfuse LLM observability platform"
  homepage "https://github.com/aviadshiber/langfuse-cli"
  url "https://files.pythonhosted.org/packages/source/l/langfuse-cli/langfuse_cli-0.1.2.tar.gz"
  sha256 "4e8b1bc7a488dba52ebfedcfce479ed6b9c70e6dedbac659a5cac073fb46180c"
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

