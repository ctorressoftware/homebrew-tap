class Flowprobe < Formula
  desc "CLI tool to execute and verify HTTP flows"
  homepage "https://github.com/ctorressoftware/flowprobe"
  version "0.1.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ctorressoftware/flowprobe/releases/download/v0.1.1/flowprobe-0.1.1-macos-arm64.tar.gz"
      sha256 "1152cbf791e33c5ea8ef0b35f2b6c96acaf4e6dd0752563ced2b412faa06a316"
    end

    on_intel do
      url "https://github.com/ctorressoftware/flowprobe/releases/download/v0.1.1/flowprobe-0.1.1-macos-x64.tar.gz"
      sha256 "d51ec507b397b90bcfd23625595d854c19d5a1cefe18c7f80358685913a058c5"
    end
  end

  def install
    bin.install "flowprobe"
  end

  test do
    assert_match "flowprobe 0.1.1", shell_output("#{bin}/flowprobe --version")
  end
end
