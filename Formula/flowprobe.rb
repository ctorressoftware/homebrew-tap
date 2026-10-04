class Flowprobe < Formula
  desc "CLI tool to execute and verify HTTP flows"
  homepage "https://github.com/ctorressoftware/flow-probe"
  version "0.1.0-rc.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ctorressoftware/flow-probe/releases/download/v0.1.0-rc.4/flowprobe-0.1.0-rc.4-macos-arm64.tar.gz"
      sha256 "4930643537b9ea050413a7d2a68342ce67742ffc9e0555b06c9b2f366bb0f32c"
    end

    on_intel do
      url "https://github.com/ctorressoftware/flow-probe/releases/download/v0.1.0-rc.4/flowprobe-0.1.0-rc.4-macos-x64.tar.gz"
      sha256 "a8e0e95624015575eb5a4219345feb509a6c8eae7dd6d13aa91b5ad8cb8be88f"
    end
  end

  def install
    bin.install "flowprobe"
  end

  test do
    assert_match "flowprobe 0.1.0-rc.4", shell_output("#{bin}/flowprobe --version")
  end
end
