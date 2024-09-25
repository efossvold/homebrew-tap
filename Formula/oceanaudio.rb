class Oceanaudio < Formula
  version "3.x.x"
  sha256 "ca48bd970375b2b3faa934147c63150bfb1b94fd09f245843c936361d2fa146d"
  
  url "https://www.ocenaudio.com/start_download/ocenaudio_universal.dmg"
  name "oceanaudio"
  desc "Easy, fast and powerful audio editor"
  homepage "https://www.ocenaudio.com/"

  depends_on macos: ">= :catalina"

  app "oceanaudio.app"

  zap trash: [
    # "~/Library/Caches/net.mimikaki.mi",
    # "~/Library/Preferences/net.mimikaki.mi.plist",
  ]
end
