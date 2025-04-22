class FlutterBunny < Formula
  desc "Flutter Bunny: A CLI tool for Flutter development"
  homepage "https://github.com/demola234/flutter_bunny_cli"
  license "MIT"
  version "1.0.7-beta.7"

  on_macos do
    on_arm do
      url "https://github.com/demola234/flutter_bunny_cli/archive/refs/tags/v1.0.7-beta.7.tar.gz"
      sha256 "8c90b3545bd1caa73940be7b8975583cd86ca246a52ddf83e70de1f5a7a89a9d"
    end
    on_intel do
      url "https://github.com/demola234/flutter_bunny_cli/archive/refs/tags/v1.0.7-beta.7.tar.gz"
      sha256 "8c90b3545bd1caa73940be7b8975583cd86ca246a52ddf83e70de1f5a7a89a9d"
    end
  end

  def install
    system "dart", "pub", "get"
    system "dart", "compile", "exe", "bin/flutter_bunny.dart", "-o", "flutter_bunny"
    bin.install "flutter_bunny"
  end

  test do
    # Test by showing help
    system "#{bin}/flutter_bunny", "--help"
  end
end