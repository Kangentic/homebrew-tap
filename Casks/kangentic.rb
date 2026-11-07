cask "kangentic" do
  arch arm: "arm64", intel: "x64"

  version "0.55.0"
  sha256 arm:   "f9192a03d843d4889549df17d75a04cb44eb783145785afcc7be9d2e43389545",
         intel: "e98f7268d9c12f88f3d8225e933e1bb073e85f7ebea38a9d888e52f20ba066b8"

  url "https://github.com/Kangentic/kangentic/releases/download/v#{version}/Kangentic-#{version}-#{arch}.dmg"
  name "Kangentic"
  desc "Kanban board for running AI coding agents"
  homepage "https://www.kangentic.com/"

  auto_updates true
  depends_on macos: :ventura

  app "Kangentic.app"

  uninstall quit: "com.kangentic.app"

  zap trash: [
    "~/Library/Application Support/kangentic",
    "~/Library/Caches/com.kangentic.app",
    "~/Library/Caches/com.kangentic.app.ShipIt",
    "~/Library/Caches/kangentic-updater",
    "~/Library/Preferences/com.kangentic.app.plist",
    "~/Library/Saved Application State/com.kangentic.app.savedState",
  ]
end
