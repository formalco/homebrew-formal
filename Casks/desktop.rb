cask "desktop" do
  version "0.25.2"
  sha256 "f4b38ed7458e92234c8ea670be374c491a26ada3b172708f2892a8f5e7f2e0f6"

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
