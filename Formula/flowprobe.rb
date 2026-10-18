class Flowprobe < Formula
  desc "CLI tool to execute and verify HTTP flows"
  homepage "https://github.com/ctorressoftware/flowprobe"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ctorressoftware/flowprobe/releases/download/v0.1.0/flowprobe-0.1.0-macos-arm64.tar.gz"
      sha256 "c2f1f87d06a9dccf9819062743cd9d261a3110d90215fa3b2272c80045e442c5"
    end

    on_intel do
      url "https://github.com/ctorressoftware/flowprobe/releases/download/v0.1.0/flowprobe-0.1.0-macos-x64.tar.gz"
      sha256 "8a211aec2e2034a9565c1e3021fc1a725eb10349dad25a5f54954a076ddd527f"
    end
  end

  def install
    bin.install "flowprobe"
  end

  test do
    assert_match "flowprobe 0.1.0", shell_output("#{bin}/flowprobe --version")
  end
end
