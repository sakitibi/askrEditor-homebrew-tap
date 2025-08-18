class Askreditor < Formula
  desc "CLI editor for .askr files with Supabase replace integration"
  homepage "https://github.com/sakitibi/askreditor"
  version "2.0.20"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/sakitibi/askreditor/releases/download/v2.0.20/askreditor-2.0.20-darwin-arm64.tar.gz"
      sha256 "5257f566098d2ce3a91a4e20f0d80defa0281a5b4e28b8eae0cecd9bbfc12ad5"
    else
      url "https://github.com/sakitibi/askreditor/releases/download/v2.0.20/askreditor-2.0.20-darwin-amd64.tar.gz"
      sha256 "e1984e61461c3160669765fe2f84d5b00d04b3144892ecc9d020a41c342ca36e"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/sakitibi/askreditor/releases/download/v2.0.20/askreditor-2.0.20-linux-arm64.tar.gz"
      sha256 "38551056bd2ac164fb895f47e0a230a8a11326fa427726f8cce9b406ed3ac176"
    else
      url "https://github.com/sakitibi/askreditor/releases/download/v2.0.20/askreditor-2.0.20-linux-amd64.tar.gz"
      sha256 "30b729514d6b39c7542164a50cdee276ab4ca7e07049716ab0a3fbc077cf2a3f"
    end
  end

  def install
    bin.install "askreditor"
  end

  test do
    system "#{bin}/askreditor", "--help"
  end
end
