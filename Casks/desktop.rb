cask "desktop" do
  version "0.26.2"
  sha256 "200d87645cbc834a400eac176160bba50c3b46dc9fcaa7f401f310d3ec3d674b"

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
