cask "desktop" do
  version "0.2.7"
  sha256 "a94784f0feb3b5697c1ed4b729720d8575bedb9b72c1f5d99b61a35dae7b34d4"

  url "https://static-assets.formalcloud.net/desktop-app/darwin/formal-#{version}.pkg"
  name "Formal Desktop"
  desc "The Formal Desktop app"
  homepage "https://joinformal.com"

  livecheck do
    url "https://static-assets.formalcloud.net/desktop-app/VERSION"
    strategy :page_match
    regex(/(\S+)/)
  end

  depends_on macos: ">= :sequoia"

  pkg "formal-#{version}.pkg"

  uninstall quit:    "com.formal.desktop",
            pkgutil: "com.formal.desktop"

  zap trash: ["~/.formal", "~/Library/Application Support/formal", "~/Library/Logs/formal", "~/Library/Logs/Formal"]
end
