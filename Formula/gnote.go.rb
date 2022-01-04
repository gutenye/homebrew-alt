require "formula"

class GnoteGo < Formula
  desc "CLI for gnote"
  homepage "https://github.com/gutenye/gnote"
  url "https://github.com/gutenye/gnote/releases/download/go1.0.4/gnote.go-macos-arm64-v1.0.4"
  sha256 "ea3e3218c50719b91053c92caaa7154040583d7cc13c3df06d8716d7c87777fb"

  def install
    bin.install "gnote.go-macos-arm64-v1.0.4" => "gnote.go"
  end

  def plist; <<~EOS
    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
    <plist version="1.0">
      <dict>
        <key>Label</key>
        <string>#{plist_name}</string>
        <key>ProgramArguments</key>
        <array>
          <string>#{opt_bin}/gnote.go</string>
          <string>tags</string>
          <string>--watch</string>
        </array>
        <key>EnvironmentVariables</key>
        <dict>
          <key>HOME</key>
          <string>/Users/guten</string>
        </dict>
        <key>RunAtLoad</key>
        <true/>
        <key>KeepAlive</key>
        <dict>
          <key>SuccessfulExit</key>
          <false/>
        </dict>
        <key>WorkingDirectory</key>
        <string>/Users/guten</string>
        <key>StandardErrorPath</key>
        <string>#{var}/log/gnote.go.log</string>
        <key>StandardOutPath</key>
        <string>#{var}/log/gnote.go.log</string>
      </dict>
    </plist>
  EOS
  end
end
