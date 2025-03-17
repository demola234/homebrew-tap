class FlutterBunny < Formula
  desc "Flutter Bunny: A CLI tool for Flutter development"
  homepage "https://github.com/demola234/flutter_bunny_cli"
  license "MIT"
  version "1.0.4"

  on_macos do
    on_arm do
      url "https://github.com/demola234/flutter_bunny_cli/archive/refs/tags/v1.0.4.tar.gz"
      sha256 "UPDATE_WITH_ACTUAL_HASH"
    end
    on_intel do
      url "https://github.com/demola234/flutter_bunny_cli/archive/refs/tags/v1.0.4.tar.gz"
      sha256 "UPDATE_WITH_ACTUAL_HASH"
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