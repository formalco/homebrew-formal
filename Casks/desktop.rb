cask "desktop" do
  version "0.26.3"
  sha256 "5bc694b855571ab81fedd51d49b98dfd82bc324737b4dcfc8ac1c0374fd5003c"

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
