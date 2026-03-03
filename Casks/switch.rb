cask "switch" do
  # Get older versions at http://www.oldversiondownload.com/
  version "11.09"
  sha256 "f2b4ab87589761c69359dd0043a2fac437b780ba89255f847870da516e7be3a6"
  
  url "https://f001.backblazeb2.com/file/ef-public/brew-sources/Switch-#{version.major}.#{version.minor}.zip"
  name "Switch Audio Converter"
  desc "Multiple format audio file converter"
  homepage "https://www.nch.com.au/switch/"

  app "Switch.app"

  zap trash: [
    "~/Library/Application Support/Switch",
    "~/Library/Application Support/SwitchSubStatAbort",
    "~/Library/Caches/com.apple.tiswitcher.cache",
    "~/Library/Caches/SwitchCounts.txt",
    "~/Library/Preferences/ByHost/com.nchsoftware.switch.*.plist",
    "~/Library/Preferences/com.nchsoftware.switch.plist",
  ]

  caveats do
    requires_rosetta
  end
end
