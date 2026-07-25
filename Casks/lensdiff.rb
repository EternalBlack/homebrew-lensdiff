cask "lensdiff" do
  version "0.1.0"

  on_arm do
    url "https://github.com/EternalBlack/LensDiff/releases/download/v#{version}/LensDiff_#{version}_aarch64.dmg"
    sha256 "5135f1f9c64cfa3f39fb85a81ad269964a526b4b7283c06b6a7c0b3b7ba4de1e"
  end

  on_intel do
    url "https://github.com/EternalBlack/LensDiff/releases/download/v#{version}/LensDiff_#{version}_x64.dmg"
    sha256 "32aade248f8bbae7678dc46fec597f46dd505b2a88e6ac916ed9e3bdfada8a6b"
  end

  name "LensDiff"
  desc "Compare images and video side by side with synced zoom, pan, and diff modes"
  homepage "https://github.com/EternalBlack/LensDiff"

  auto_updates false
  depends_on macos: ">= :sierra"

  app "LensDiff.app"

  zap trash: [
    "~/Library/Application Support/app.lensdiff.desktop",
    "~/Library/Saved Application State/app.lensdiff.desktop.savedState",
  ]
end
