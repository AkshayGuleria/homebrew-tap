cask "shine" do
  version "1.4.3"
  sha256 "6953b6cfc5e8ef6599c252ada21b69861e204fb3d6d105963076fa501be0d2ed"

  url "https://github.com/AkshayGuleria/Shine/releases/download/v#{version}/Shine-v#{version}.zip"
  name "Shine"
  desc "Menu-bar utility to temporarily disable keyboard and trackpad for cleaning"
  homepage "https://github.com/AkshayGuleria/Shine"

  depends_on macos: :ventura

  app "Shine.app"

  caveats <<~EOS
    Shine is ad-hoc signed (no Apple notarization). If macOS blocks it:
      xattr -dr com.apple.quarantine /Applications/Shine.app

    Grant Accessibility permission on first use:
      System Settings → Privacy & Security → Accessibility → enable Shine
  EOS
end
