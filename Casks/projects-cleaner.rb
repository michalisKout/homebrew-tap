cask "projects-cleaner" do
  arch arm: "arm64", intel: "x64"

  version "0.1.1"
  sha256 arm: "62638e0ad25150a1a4827d13d34e2ba49ee6ff497bf27a3aa0b4e36b85432c75",
         intel: "3a13436e7b2220e76faa427da92b1a07af3a1c7a0a217e141e8b00ca14145978"

  url "https://github.com/michalisKout/homebrew-tap/releases/download/v0.1.1/Projects-Cleaner-#{version}-#{arch}.dmg"
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
