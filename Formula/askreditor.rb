class Askreditor < Formula
  desc "CLI editor for .askr files with Supabase replace integration"
  homepage "https://github.com/sakitibi/askreditor"
  version "2.0.20"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/sakitibi/askreditor/releases/download/v2.0.20/askreditor-2.0.20-darwin-arm64.tar.gz"
      sha256 "f100bc94d34f2071da052dfb936e4e1efb5385032265b9c54072d1f9972569bf"
    else
      url "https://github.com/sakitibi/askreditor/releases/download/v2.0.20/askreditor-2.0.20-darwin-amd64.tar.gz"
      sha256 "e855674a0558c6a622be5719176a22ac91b67e072fcd696ff80198806ae73a17"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/sakitibi/askreditor/releases/download/v2.0.20/askreditor-2.0.20-linux-arm64.tar.gz"
      sha256 "b33d0b6dfc719d55f3cc83233883a624418ff2b584262415f9ceede07c621eb8"
    else
      url "https://github.com/sakitibi/askreditor/releases/download/v2.0.20/askreditor-2.0.20-linux-amd64.tar.gz"
      sha256 "7478cfc8cb0cecca3d2e177fe5ee06c6ff61c8a7fe6f56361c71af98b9f832d1"
    end
  end

  def install
    bin.install "askreditor"
  end

  test do
    system "#{bin}/askreditor", "--help"
  end
end
