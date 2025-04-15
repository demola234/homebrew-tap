class FlutterBunny < Formula
  desc "Flutter Bunny: A CLI tool for Flutter development"
  homepage "https://github.com/demola234/flutter_bunny_cli"
  license "MIT"
  version "1.0.7-beta.3"

  on_macos do
    on_arm do
      url "https://github.com/demola234/flutter_bunny_cli/archive/refs/tags/v1.0.7-beta.3.tar.gz"
      sha256 "e92c9fde082ac1807a0ed96c59601bf39b4913af2783050d903f77be180ccaf1"
    end
    on_intel do
      url "https://github.com/demola234/flutter_bunny_cli/archive/refs/tags/v1.0.7-beta.3.tar.gz"
      sha256 "e92c9fde082ac1807a0ed96c59601bf39b4913af2783050d903f77be180ccaf1"
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