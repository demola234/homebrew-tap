class Mockmachina < Formula
  desc "Mock HTTP APIs from contract files in your repository"
  homepage "https://github.com/demola234/tiny-tools/tree/main/mock_machina"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/demola234/tiny-tools/releases/download/mock_machina/v0.2.0/mockmachina_0.2.0_darwin_arm64.tar.gz"
      sha256 "e6c47d33a58756559aa75e720b4443bd5026cc63a6f2d6740acdbb8a1af82824"
    end
    on_intel do
      url "https://github.com/demola234/tiny-tools/releases/download/mock_machina/v0.2.0/mockmachina_0.2.0_darwin_amd64.tar.gz"
      sha256 "8a36b780d1cf79efcf8a7aa8b01a7d64da92bdea806bae1ed9f5fa06faead188"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/demola234/tiny-tools/releases/download/mock_machina/v0.2.0/mockmachina_0.2.0_linux_arm64.tar.gz"
      sha256 "7aca0c91187dd458638ad62642652f90b2b6605a176f8924ab86b36a9fed4954"
    end
    on_intel do
      url "https://github.com/demola234/tiny-tools/releases/download/mock_machina/v0.2.0/mockmachina_0.2.0_linux_amd64.tar.gz"
      sha256 "ced481e7a5ce545a6a77305c62e54f50d52bb089f579f96b9bf4bd58c1d4f6f9"
    end
  end

  def install
    bin.install "mockmachina"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mockmachina --version")
  end
end
