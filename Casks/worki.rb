cask "worki" do
  version "0.5.9"
  sha256 "e9aa473592db8d1b758f1bf3b62f6d1ea74e5a6b49cf2722ff39c96f0d4a1499"

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
