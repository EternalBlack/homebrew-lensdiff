cask "lensdiff" do
  version "0.1.0"

  on_arm do
    url "https://github.com/EternalBlack/LensDiff/releases/download/v#{version}/LensDiff_#{version}_aarch64.dmg"
    sha256 "624420696cf63544f80825438a9f7cefd073153ab9bd95542b2d1a053a5761d4"
  end

  on_intel do
    url "https://github.com/EternalBlack/LensDiff/releases/download/v#{version}/LensDiff_#{version}_x64.dmg"
    sha256 "68150f34135c5e9ca80f93db3a0588cbc41a5be6d7ffbd0ba5bcdccee09c7f2f"
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
