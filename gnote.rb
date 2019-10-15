require "formula"

class Gnote < Formula
  desc "CLI for gnote"
  homepage "https://github.com/gutenye/gnote"
  url "https://github.com/gutenye/gnote/releases/download/1.0.1/macos.tar.gz"
  sha256 "8c620052c66e484704f3a4e8faa4e7822eee6d90d529a86b5321d09b2176495f"

  def install
    bin.install "gnote"
  end

  plist_options :startup => true

  def plist; <<~EOS
    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
    <plist version="1.0">
      <dict>
        <key>Label</key>
        <string>#{plist_name}</string>
        <key>ProgramArguments</key>
        <array>
          <string>#{opt_bin}/gnote</string>
          <string>watch</string>
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
        <string>#{var}/log/gnote.log</string>
        <key>StandardOutPath</key>
        <string>#{var}/log/gnote.log</string>
      </dict>
    </plist>
  EOS
  end
end
