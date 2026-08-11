class Envie < Formula
  desc "Run many environments from one Terraform codebase"
  homepage "https://github.com/fearlessfara/envie"
  license "MIT"

  if OS.mac?
    url "https://github.com/fearlessfara/envie/releases/download/v0.2.0/envie-0.2.0-darwin-universal.tar.gz"
    sha256 "fa00a6882abd35dee6c3b48648774b8a4053384679c876f7e98800944ab995d2"
  elsif Hardware::CPU.intel?
    url "https://github.com/fearlessfara/envie/releases/download/v0.2.0/envie-0.2.0-linux-x86_64.tar.gz"
    sha256 "3a0029bca8a42cfd3f196aa96c461a5f8030d54b5fd6441caf8cfd85a4cb676b"
  else
    url "https://github.com/fearlessfara/envie/releases/download/v0.2.0/envie-0.2.0-linux-aarch64.tar.gz"
    sha256 "0102805f989c93f98435ae386f477c8d98f421fba92c1f7ba88c350eb3eaa222"
  end

  def install
    bin.install "envie"
  end

  test do
    assert_match "envie 0.2.0", shell_output("#{bin}/envie --version")
  end
end
