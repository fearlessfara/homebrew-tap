class Envie < Formula
  desc "Manage ephemeral Terraform environments with layered dependencies"
  homepage "https://github.com/fearlessfara/envie"
  version "0.1.0"
  url "https://github.com/fearlessfara/envie/releases/download/v0.1.0/envie-0.1.0-darwin-universal.tar.gz"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  license "MIT"

  def install
    bin.install "envie"
  end

  test do
    assert_match "envie", shell_output("#{bin}/envie --help")
  end
end
