class Flowprobe < Formula
  desc "CLI tool to execute and verify HTTP flows"
  homepage "https://github.com/ctorressoftware/flow-probe"
  version "0.1.0-rc.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ctorressoftware/flow-probe/releases/download/v0.1.0-rc.1/flowprobe-0.1.0-rc.1-macos-arm64.tar.gz"
      sha256 "a7d5a1098cdb04cb381e522955f75b25f69c9919bb5076e9cdfe5220079d9176"
    end

    on_intel do
      url "https://github.com/ctorressoftware/flow-probe/releases/download/v0.1.0-rc.1/flowprobe-0.1.0-rc.1-macos-x64.tar.gz"
      sha256 "1bec6e33a26e6da9b6f55099ae9a49cb479afa750abf5639cf2b0274f24d7a2e"
    end
  end

  def install
    bin.install "flowprobe"
  end

  test do
    assert_match "flowprobe 0.1.0-rc.1", shell_output("#{bin}/flowprobe --version")
  end
end