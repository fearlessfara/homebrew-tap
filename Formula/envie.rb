class Envie < Formula
  desc "Run many environments from one Terraform codebase"
  homepage "https://github.com/fearlessfara/envie"
  license "MIT"

  if OS.mac?
    url "https://github.com/fearlessfara/envie/releases/download/v0.1.0/envie-0.1.0-darwin-universal.tar.gz"
    sha256 "d6b5e9695ae8bf46058df2090d92becf363140ce40f1372baabcbc9ac8ea5b0c"
  elsif Hardware::CPU.intel?
    url "https://github.com/fearlessfara/envie/releases/download/v0.1.0/envie-0.1.0-linux-x86_64.tar.gz"
    sha256 "6b53096253dd400bba0d4ba7171815e5fcedf6531a4444c3eaf52227167e4987"
  else
    url "https://github.com/fearlessfara/envie/releases/download/v0.1.0/envie-0.1.0-linux-aarch64.tar.gz"
    sha256 "72d41d58b4e635e7209658dccc9380ecf26dc7d8b4455a130697ffc00e2044fa"
  end

  def install
    bin.install "envie"
  end

  test do
    assert_match "envie 0.1.0", shell_output("#{bin}/envie --version")
  end
end
