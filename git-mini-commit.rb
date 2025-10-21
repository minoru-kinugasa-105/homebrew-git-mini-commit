class GitMiniCommit < Formula
  desc "Git CLI extension for mini-commit workflow: local, small commits between staging and regular commit"
  homepage "https://github.com/minoru-kinugasa-105/git-mini-commit"
  url "https://github.com/minoru-kinugasa-105/mini-commit/releases/download/v0.1.3/git-mini-commit-darwin-amd64"
  sha256 "31f8df1d5e61439e8885026cf337e41d2a71dcfd4331c535513b7e3cc3386dfd"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/minoru-kinugasa-105/mini-commit/releases/download/v0.1.3/git-mini-commit-darwin-arm64"
    sha256 "73f83c45c6e08f38efc5d7e6655ccc24670b42d1a3a152a0141d82af5c4f25cd"
  end

  def install
    if Hardware::CPU.arm?
      bin.install "git-mini-commit-darwin-arm64" => "git-mini-commit"
    else
      bin.install "git-mini-commit-darwin-amd64" => "git-mini-commit"
    end
  end

  test do
    system "#{bin}/git-mini-commit", "--version"
  end
end
