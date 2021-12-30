require "formula"

class GnoteRs < Formula
  desc "CLI for gnote"
  homepage "https://github.com/gutenye/gnote"
  url "https://github.com/gutenye/gnote/releases/download/rs1.0.1/gnote.rs-macos-arm64-v1.0.1"
  sha256 "d5a7677f2313103c314da342959397c60402dd3934d0342f05c025159a3d065f"

  def install
    bin.install "gnote.rs-macos-arm64-v1.0.1" => "gnote.rs"
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
          <string>#{opt_bin}/gnote.rs</string>
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
        <string>#{var}/log/gnote.rs.log</string>
        <key>StandardOutPath</key>
        <string>#{var}/log/gnote.rs.log</string>
      </dict>
    </plist>
  EOS
  end
end
