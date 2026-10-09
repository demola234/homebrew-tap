class Mockmachina < Formula
  desc "Mock HTTP APIs from contract files in your repository"
  homepage "https://github.com/demola234/tiny-tools/tree/main/mock_machina"
  version "0.1.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/demola234/tiny-tools/releases/download/mock_machina/v0.1.1/mockmachina_0.1.1_darwin_arm64.tar.gz"
      sha256 "c86d4ccf608ed8c51fe9ae508c77e05dd14854b80ce5cf37cc07dd336f57a493"
    end
    on_intel do
      url "https://github.com/demola234/tiny-tools/releases/download/mock_machina/v0.1.1/mockmachina_0.1.1_darwin_amd64.tar.gz"
      sha256 "0e8ce6e7b315b69187a5f196ffded6135f2cdabf52754f06ffc2d9947089672e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/demola234/tiny-tools/releases/download/mock_machina/v0.1.1/mockmachina_0.1.1_linux_arm64.tar.gz"
      sha256 "611a804b2dbddae0f8dfb3f17541ac6cd89f03423f43c450b4b507c397ceb513"
    end
    on_intel do
      url "https://github.com/demola234/tiny-tools/releases/download/mock_machina/v0.1.1/mockmachina_0.1.1_linux_amd64.tar.gz"
      sha256 "c55b28d210a8d658150f56a588526e8e84367dbce1ddc92324593ff58a939f6c"
    end
  end

  def install
    bin.install "mockmachina"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mockmachina --version")
  end
end
