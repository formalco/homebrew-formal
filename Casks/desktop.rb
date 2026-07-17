cask "desktop" do
  version "0.26.1"
  sha256 "5c3e186efb8334c8490f24bcf566eb4e915deb5b8a853244af46f17908900af4"

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
            script:  {
              executable:   "/usr/local/bin/formal",
              args:         ["uninstall", "--yes"],
              sudo:         false,
              must_succeed: false,
            },
            pkgutil: "com.formal.desktop"

  zap trash: ["~/.formal", "~/Library/Application Support/Formal", "~/Library/Logs/Formal"]
end
