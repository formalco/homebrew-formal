cask "desktop" do
  version "0.26.0"
  sha256 "7e3554c4c03b5d9dd5b575437f34dd5a49d71b0c8bb2ec5602a2e443c20c0c00"

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
