cask "desktop" do
  version "0.22.1"
  sha256 "894337923f49fce8aa898aa983120139dd60cb8da9d555e22a69ea88c6eeabae"

  url "https://static-assets.formalcloud.net/desktop-app/darwin/formal-#{version}.pkg",
      verified: "static-assets.formalcloud.net/"
  name "Formal Desktop"
  desc "Formal Desktop app"
  homepage "https://formal.ai/"

  livecheck do
    url "https://static-assets.formalcloud.net/desktop-app/VERSION"
    strategy :page_match
    regex(/(\S+)/)
  end

  depends_on macos: :sequoia

  pkg "formal-#{version}.pkg"

  uninstall quit:    "com.formal.desktop",
            pkgutil: "com.formal.desktop"

  zap trash: ["~/.formal", "~/Library/Application Support/formal", "~/Library/Logs/formal", "~/Library/Logs/Formal"]
end
