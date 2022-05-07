cask "dmmbookviewer" do
  version :latest
  sha256 :no_check

  url "https://dl.book.dmm.com/download/mac/DMMViewerSetup_Mac.pkg"
  name "DMMbookviewer"
  desc "Book viewer for the DMM Books platform"
  homepage "https://book.dmm.com/info_bookviewer.html"

  pkg "DMMViewerSetup_Mac.pkg"

  uninstall pkgutil: "com.dmm.DMMbookviewer",
            quit: "com.dmm.DMMbookviewer"

  zap trash: [
        '~/Library/Application Support/DMM/DMM Books',
        '~/Library/Application Support/DMM/MyDMMBooksDocs',
        '~/Library/Application Support/CloudDocs/session/containers/iCloud.com.dmm.DMMBooks.plist',
        '~/Library/Saved Application State/com.dmm.DMMbookviewer.savedState',
      ]
end
