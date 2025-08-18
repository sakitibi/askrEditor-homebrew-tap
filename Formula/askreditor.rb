class Askreditor < Formula
  desc "CLI editor for .askr files with Supabase replace integration"
  homepage "https://github.com/sakitibi/askreditor"
  version "2.0.20"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/sakitibi/askreditor/releases/download/v2.0.20/askreditor-2.0.20-darwin-arm64.tar.gz"
      sha256 "d153b2314b0e1c57821c126823faf52aaaf4b9e167d77cd1cc86d46d72061525"
    else
      url "https://github.com/sakitibi/askreditor/releases/download/v2.0.20/askreditor-2.0.20-darwin-amd64.tar.gz"
      sha256 "460ef771d389bf0a96181cd78e8584857e002ed115f5637210336c704859ac6e"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/sakitibi/askreditor/releases/download/v2.0.20/askreditor-2.0.20-linux-arm64.tar.gz"
      sha256 "bd668b6702e87aa87f00fcf59f7ce1934ca8160e47622d52532c6b911564579f"
    else
      url "https://github.com/sakitibi/askreditor/releases/download/v2.0.20/askreditor-2.0.20-linux-amd64.tar.gz"
      sha256 "a0859e87c2dd0daf79437acf36f53968aa0c203ba8c3e71b18eb55ff83769a2b"
    end
  end

  def install
    bin.install "askreditor"
  end

  test do
    system "#{bin}/askreditor", "--help"
  end
end
