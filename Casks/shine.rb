cask "shine" do
  version "1.4.1"
  sha256 "e631ec66dcaafb44217ac85884ca1218f064090c63bdf1b6c295adf524073713"

  url "https://github.com/AkshayGuleria/Shine/releases/download/v#{version}/Shine-v#{version}.zip"
  name "Shine"
  desc "Menu-bar utility to temporarily disable keyboard and trackpad for cleaning"
  homepage "https://github.com/AkshayGuleria/Shine"

  depends_on macos: ">= :ventura"

  app "Shine.app"

  # Ad-hoc signed, not notarized — strips com.apple.quarantine on install
  # so users don't need the right-click → Open workaround.
  quarantine false
end
