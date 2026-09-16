class Flowprobe < Formula
  desc "CLI tool to execute and verify HTTP flows"
  homepage "https://github.com/ctorressoftware/flow-probe"
  version "0.1.0-rc.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ctorressoftware/flow-probe/releases/download/v0.1.0-rc.2/flowprobe-0.1.0-rc.2-macos-arm64.tar.gz"
      sha256 "731d8ac083a064a508f2e1594dc5b46351a2288d7c505d94ff4821ff06f22f8f"
    end

    on_intel do
      url "https://github.com/ctorressoftware/flow-probe/releases/download/v0.1.0-rc.2/flowprobe-0.1.0-rc.2-macos-x64.tar.gz"
      sha256 "1f01495a27d5cb5bb2fb40211541795139883787263b476f06351d6ec65e3848"
    end
  end

  def install
    bin.install "flowprobe"
  end

  test do
    assert_match "flowprobe 0.1.0-rc.2", shell_output("#{bin}/flowprobe --version")
  end
end
