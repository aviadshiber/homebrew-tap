class LangfuseCli < Formula
  include Language::Python::Virtualenv

  desc "CLI tool for Langfuse LLM observability platform"
  homepage "https://github.com/aviadshiber/langfuse-cli"
  url "https://files.pythonhosted.org/packages/source/l/langfuse-cli/langfuse_cli-0.1.0.tar.gz"
  sha256 "1d97127758c91fdbeff34b1a703141db07accc74df151f8ebf5682d8f9097e2a"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_create(libexec, "python3.12")
    system libexec/"bin/pip", "install", "langfuse-cli==#{version}"
    bin.install_symlink Dir[libexec/"bin/lf"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lf --version")
  end
end
