class FlutterBunny < Formula
    desc "Flutter Bunny: A CLI tool for Flutter development"
    homepage "https://github.com/demola234/flutter_bunny_cli"
    license "MIT"
    version "1.0.6"
  
    on_macos do
      on_arm do
        url "https://github.com/demola234/flutter_bunny_cli/releases/download/v1.0.6/flutter_bunny-v1.0.0-macos-arm64.tar.gz"
        sha256 "ed3a59879720749306dec5eb1417bb2f8817a923d48d8da488426c7a791bd05c"
      end
      on_intel do
        url "https://github.com/demola234/flutter_bunny_cli/releases/download/v1.0.6/flutter_bunny-v1.0.0-macos-x64.tar.gz"
        sha256 "d5558cd419c8d46bdc958064cb97f963d1ea793866414c025906ec15033512ed"
      end
    end
  
    def install
      bin.install "flutter_bunny"
    end
  
    test do
      # Test by showing help 
      system "#{bin}/flutter_bunny", "--help"
    end
  end