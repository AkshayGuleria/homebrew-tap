cask "shine" do
  version "1.4.2"
  sha256 "4942dfe19d65aeb5c47bd4e0910948b6a95a4fa5c613904015b9ae0055a03331"

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
