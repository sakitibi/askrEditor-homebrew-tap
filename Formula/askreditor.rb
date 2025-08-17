class Askreditor < Formula
  desc "CLI editor for .askr files with Supabase replace integration"
  homepage "https://github.com/sakitibi/askreditor"
  version "2.0.20"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/sakitibi/askreditor/releases/download/v2.0.20/askreditor-2.0.20-darwin-arm64.tar.gz"
      sha256 "579360e7371cd224d515f6105e95faa8bf242f00a2527e3d08d0347a3458694d"
    else
      url "https://github.com/sakitibi/askreditor/releases/download/v2.0.20/askreditor-2.0.20-darwin-amd64.tar.gz"
      sha256 "bb3db3bc7280b55b60a595353128b7681358cc534d3b59175453ee819fbfd0d0"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/sakitibi/askreditor/releases/download/v2.0.20/askreditor-2.0.20-linux-arm64.tar.gz"
      sha256 "08ebf0648a970016db3c0111497b9a5d53a887e88ce8da30ca23aa83a4a2784f"
    else
      url "https://github.com/sakitibi/askreditor/releases/download/v2.0.20/askreditor-2.0.20-linux-amd64.tar.gz"
      sha256 "e4f9356c81892c4319e50e56f2b2e08f433dc40cc2da2e60e7becd33d6756d44"
    end
  end

  def install
    bin.install "askreditor"
  end

  test do
    system "#{bin}/askreditor", "--help"
  end
end
