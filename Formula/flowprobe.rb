class Flowprobe < Formula
  desc "CLI tool to execute and verify HTTP flows"
  homepage "https://github.com/ctorressoftware/flow-probe"
  version "0.1.0-rc.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ctorressoftware/flow-probe/releases/download/v0.1.0-rc.1/flowprobe-0.1.0-rc.1-macos-arm64.tar.gz"
      sha256 "SHA_ARM64"
    end

    on_intel do
      url "https://github.com/ctorressoftware/flow-probe/releases/download/v0.1.0-rc.1/flowprobe-0.1.0-rc.1-macos-x64.tar.gz"
      sha256 "SHA_X64"
    end
  end

  def install
    bin.install "flowprobe"
  end

  test do
    assert_match "flowprobe 0.1.0-rc.1", shell_output("#{bin}/flowprobe --version")
  end
end