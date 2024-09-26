# - AssetDash
# - Switch 11

cask "renamer" do
  version "7.0.1"
  sha256 "6d54409048bad57bde584c85acb9ebdc4e91bd7ea5a1b6c8a3dbbc1b0f86df75"

  url "https://storage.googleapis.com/incrediblebee/apps/Renamer-#{version.major}/Renamer-#{version}.zip",
      verified: "storage.googleapis.com/incrediblebee/"
  name "Renamer"
  desc "Batch file renamer application"
  homepage "https://renamer.com/"

  livecheck do
    url "https://api.incrediblebee.com/appcasts/renamer-#{version.major}.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :monterey"

  app "Renamer.app"

  zap trash: [
    "~/Library/Application Support/Renamer",
    "~/Library/Logs/Renamer.log",
    "~/Library/Preferences/com.incrediblebee.Renamer#{version.major}.plist",
  ]
end
