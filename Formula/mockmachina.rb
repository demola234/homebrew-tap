class Mockmachina < Formula
  desc "Mock HTTP APIs from contract files in your repository"
  homepage "https://github.com/demola234/tiny-tools/tree/main/mock_machina"
  version "0.1.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/demola234/tiny-tools/releases/download/mock_machina/v0.1.2/mockmachina_0.1.2_darwin_arm64.tar.gz"
      sha256 "e035e4959be82d0a8ccab9661bc415b3f6707744bddcb45a2a169a9c996fceeb"
    end
    on_intel do
      url "https://github.com/demola234/tiny-tools/releases/download/mock_machina/v0.1.2/mockmachina_0.1.2_darwin_amd64.tar.gz"
      sha256 "a5271ebb275ddd15027e9e9176e1d4e1a4dd688b02fec810ef3bc3c195efe0c9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/demola234/tiny-tools/releases/download/mock_machina/v0.1.2/mockmachina_0.1.2_linux_arm64.tar.gz"
      sha256 "1f271c2d1ba65658c0696ff8c74e8f25a8d6c56bfa707e0d204861fdd951aa60"
    end
    on_intel do
      url "https://github.com/demola234/tiny-tools/releases/download/mock_machina/v0.1.2/mockmachina_0.1.2_linux_amd64.tar.gz"
      sha256 "7e99e47edf5175fa00d13ba9a753b1a196e96d82d319abc8288bf4de72c5bea9"
    end
  end

  def install
    bin.install "mockmachina"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mockmachina --version")
  end
end
