cask "worki" do
  version "0.4.12"
  sha256 "9da8b40206b1492ed9eabe77b26cf248d6c410ff2362c7af34db7d91babdd589"

  url "https://github.com/silvanfischer/worki/releases/download/v#{version}/worki_#{version}_universal.dmg"
  name "worki"
  desc "Run coding agents in parallel, each in its own git worktree and sandbox"
  homepage "https://silvanfischer.github.io/worki/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "worki.app"

  zap trash: [
    "~/Library/Application Support/worki",
    "~/Library/Caches/io.fibe.worki",
    "~/Library/Preferences/io.fibe.worki.plist",
    "~/Library/Saved Application State/io.fibe.worki.savedState",
    "~/Library/WebKit/io.fibe.worki",
  ]
end
