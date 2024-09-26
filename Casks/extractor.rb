cask "extractor" do
  version "1.0.0"
  sha256 "aa1fc058d5db0b530aaf904fb4cbadcfdb60cec3115a43ba3ba8883898eb3b7f"

  url "https://github.com/tomkidd/Extractor/releases/download/#{version.major}.#{version.minor}/Extractor_notarized_20220223.zip"
  name "Extractor"
  desc "Extract the contents of GOG installers"
  homepage "https://github.com/tomkidd/Extractor"

  depends_on macos: ">= :monterey"

  app "Extractor.app"

  zap trash: [
    "~/Library/Application Scripts/com.macsourceports.Extractor",
  ]
end
