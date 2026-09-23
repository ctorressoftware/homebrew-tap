class Flowprobe < Formula
  desc "CLI tool to execute and verify HTTP flows"
  homepage "https://github.com/ctorressoftware/flow-probe"
  version "0.1.0-rc.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ctorressoftware/flow-probe/releases/download/v0.1.0-rc.3/flowprobe-0.1.0-rc.3-macos-arm64.tar.gz"
      sha256 "3710c3980194afff9e3d5872671d0b42fed887309f516eca93b2fba0af7b0900"
    end

    on_intel do
      url "https://github.com/ctorressoftware/flow-probe/releases/download/v0.1.0-rc.3/flowprobe-0.1.0-rc.3-macos-x64.tar.gz"
      sha256 "57af7f4ccc5d17c8807199408778d6444ee97df906d86cbd36e94537053d4fab"
    end
  end

  def install
    bin.install "flowprobe"
  end

  test do
    assert_match "flowprobe 0.1.0-rc.3", shell_output("#{bin}/flowprobe --version")
  end
end
