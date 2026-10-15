cask "bookshelfbar" do
  version "0.1.0"
  sha256 "fb89e755740db4d3e829a4ee9ab845d87df0bb1524fea4c04afd312726c2bb20"

  url "https://github.com/yeutterg/bookshelf-bar/releases/download/v#{version}/BookshelfBar-#{version}.dmg"
  name "BookshelfBar"
  desc "Menu bar controls for KEF LSX II and LSX II LT speakers"
  homepage "https://github.com/yeutterg/bookshelf-bar"

  depends_on macos: :tahoe

  app "BookshelfBar.app"

  caveats <<~EOS
    BookshelfBar isn't notarized by Apple yet. If macOS says it can't be opened,
    allow it in System Settings → Privacy & Security (Open Anyway), or run:
      xattr -dr com.apple.quarantine #{appdir}/BookshelfBar.app
  EOS

  zap trash: [
    "~/Library/Preferences/com.github.yeutterg.bookshelfbar.plist",
  ]
end
