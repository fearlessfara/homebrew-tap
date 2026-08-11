class Envie < Formula
  desc "Run many environments from one Terraform codebase"
  homepage "https://github.com/fearlessfara/envie"
  license "MIT"

  if OS.mac?
    url "https://github.com/fearlessfara/envie/releases/download/v0.2.1/envie-0.2.1-darwin-universal.tar.gz"
    sha256 "7dd38e58ba99a227143610834a7da6247be61040fa384d7d8dcb9d172ef17a53"
  elsif Hardware::CPU.intel?
    url "https://github.com/fearlessfara/envie/releases/download/v0.2.1/envie-0.2.1-linux-x86_64.tar.gz"
    sha256 "65fee03969a64fdc5d90cc3ae2898c06cf956e02c51c01a71cbec4705a03234f"
  else
    url "https://github.com/fearlessfara/envie/releases/download/v0.2.1/envie-0.2.1-linux-aarch64.tar.gz"
    sha256 "5eb0595b62afadc2a4edcd713ba72f1a3dbe350c6e779d4863cd47b1e14045ba"
  end

  def install
    bin.install "envie"
  end

  test do
    assert_match "envie 0.2.1", shell_output("#{bin}/envie --version")
  end
end
