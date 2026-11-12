cask "projects-cleaner" do
  arch arm: "arm64", intel: "x64"

  version "0.1.2"
  sha256 arm: "8ef69963ccbad640529aa2b1c7dc8990f0e2cd7308cf6b66243af8c7f2a95767",
         intel: "5b4339361fe884e9e69b1363e2c61f0138078aed45374bff1a262cdc3b040b3f"

  url "https://github.com/michalisKout/homebrew-tap/releases/download/v0.1.2/Projects-Cleaner-#{version}-#{arch}.dmg"
  name "Projects Cleaner"
  desc "Local storage cleanup with Git protections and macOS Trash"
  homepage "https://github.com/michalisKout/homebrew-tap"

  depends_on macos: :ventura
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
