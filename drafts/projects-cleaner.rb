cask "projects-cleaner" do
  arch arm: "arm64", intel: "x64"

  version "0.1.0"
  sha256 arm: "d7d639131272fa37a175e3263803c45cb27a6420626696ba42d3919885214e2e",
         intel: "18d5f6bbba952aa5c5dcc2fe4b862c0ff4ecde40a8051075840bd0fdb59c306b"

  url "https://github.com/michalisKout/projects-cleaner/releases/download/v0.1.0/Projects-Cleaner-#{version}-#{arch}.dmg"
  name "Projects Cleaner"
  desc "Local storage cleanup with Git protections and macOS Trash"
  homepage "https://github.com/michalisKout/projects-cleaner"

  depends_on macos: ">= :ventura"
  app "Projects Cleaner.app"

  uninstall quit: "org.projectscleaner.desktop"
  zap trash: [
    "~/Library/Application Support/Projects Cleaner",
    "~/Library/Logs/Projects Cleaner",
  ]
end
