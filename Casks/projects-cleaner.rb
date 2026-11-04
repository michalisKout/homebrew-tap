cask "projects-cleaner" do
  arch arm: "arm64", intel: "x64"

  version "0.1.0"
  sha256 arm: "1c867999c03f3ac15b13629e2b44d005c334d74e994dce29bc885a3b23d48126",
         intel: "72c6badcf2bf3efe703888a291928cafb9bc52f7fca11ad76ee75810bf685c76"

  url "https://github.com/michalisKout/homebrew-tap/releases/download/v0.1.0/Projects-Cleaner-#{version}-#{arch}.dmg"
  name "Projects Cleaner"
  desc "Local storage cleanup with Git protections and macOS Trash"
  homepage "https://github.com/michalisKout/homebrew-tap"

  depends_on macos: ">= :ventura"
  app "Projects Cleaner.app"

  uninstall quit: "org.projectscleaner.desktop"
  zap trash: [
    "~/Library/Application Support/Projects Cleaner",
    "~/Library/Logs/Projects Cleaner",
  ]

  caveats <<~EOS
    This app is ad-hoc signed and is not notarized by Apple.
    macOS may block the first launch because the developer cannot be verified.

    1. Open Projects Cleaner from Applications in Finder.
    2. If macOS blocks it, open System Settings > Privacy & Security.
    3. Choose Open Anyway for Projects Cleaner, authenticate if prompted, then choose Open.

    Approve only the app downloaded from michalisKout/homebrew-tap releases after verifying its checksum.
    Managed Macs may prevent this per-app exception. No security settings are changed by the installer.
  EOS
end
