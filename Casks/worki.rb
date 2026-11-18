cask "worki" do
  version "0.5.7"
  sha256 "1ec8eb0c72ed06ce37f452940b885e2a763c982595adaa52256f8f83d480b07d"

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
