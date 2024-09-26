cask "squoosh-desktop" do
  version "1.0.0"
  sha256 "a38ffaeb6e7e3cc8c41eadc1690d705b26398839f3a0ab926a1472aa8e7fbb43"

  url "https://unlimited.dl.sourceforge.net/project/squoosh-desktop-app/Squoosh%20Desktop-#{version}.dmg"
  name "Squoosh Desktop"
  desc "Multiplatform desktop app to optimize, resize, compress and convert your images"
  homepage "https://squoosh-desktop.vercel.app"

  depends_on macos: ">= :catalina"

  app "Squoosh Desktop.app"

  zap trash: [
    "~/Library/Application\ Support/squoosh-desktop-app",
  ]
end
