cask "muse-hub" do
  version "2.10.0"
  sha256 :no_check

  url "https://muse-cdn.com/Muse_Hub.pkg"
  name "muse-hub"
  desc "MuseHub brings the best music and audio tools straight to your desktop"
  homepage "https://www.musehub.com"

  livecheck do
    url :url
    strategy :header_match
  end

  pkg "Muse_Hub.pkg"

  zap trash: [
    "~/Library/Preferences/com.muse.musehub.plist",
    "~/Library/Caches/com.muse.musehub",
    "~/Library/Logs/com.muse.musehub",
    "~/Library/Logs/Muse Hub",
  ]
end
