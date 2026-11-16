cask "worki" do
  version "0.5.2"
  sha256 "8d45f8ef5dcd96454c25e8f0234ece082f1e9cc276fc4cb7f6ba2a9fdf1ab9fa"

  url "https://github.com/fischsil/worki/releases/download/v#{version}/worki_#{version}_universal.dmg"
  name "worki"
  desc "Run coding agents in parallel, each in its own git worktree and sandbox"
  homepage "https://fischsil.github.io/worki/"

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
