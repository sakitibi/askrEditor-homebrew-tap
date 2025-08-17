class Askreditor < Formula
  desc "CLI editor for .askr files with Supabase replace integration"
  homepage "https://github.com/sakitibi/askreditor"
  version "2.0.20"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/sakitibi/askreditor/releases/download/v2.0.20/askreditor-2.0.20-darwin-arm64.tar.gz"
      sha256 "8b703d3867e73e03e94cba004ecb014cbfd61804fb04583f86b64f8b457b3496"
    else
      url "https://github.com/sakitibi/askreditor/releases/download/v2.0.20/askreditor-2.0.20-darwin-amd64.tar.gz"
      sha256 "e3dd3ec9a2bd068681cb8c62934f1091e588b6f073647e09b00d785ca47c4f32"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/sakitibi/askreditor/releases/download/v2.0.20/askreditor-2.0.20-linux-arm64.tar.gz"
      sha256 "3fccb2055b498200859b4efbdda57703fdbf41f7ac84042762b6a6bac2d51063"
    else
      url "https://github.com/sakitibi/askreditor/releases/download/v2.0.20/askreditor-2.0.20-linux-amd64.tar.gz"
      sha256 "5244175d3badcb979c783f03166aa6925a97fd6794d6288a04ab6059ea0c1560"
    end
  end

  def install
    bin.install "askreditor"
  end

  test do
    system "#{bin}/askreditor", "--help"
  end
end
