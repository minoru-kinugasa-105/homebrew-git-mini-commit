class GitMiniCommit < Formula
  desc "Git CLI extension for mini-commit workflow: local, small commits between staging and regular commit"
  homepage "https://github.com/minoru-kinugasa-105/git-mini-commit"
  url "https://github.com/minoru-kinugasa-105/mini-commit/releases/download/v0.1.1/git-mini-commit"
  sha256 "5c2a3bc8b85331193e97ac0276b1139cac2a2502f8e4008f88273e5e24e97ef3"
  license "MIT"

  def install
    bin.install "git-mini-commit"
  end

  test do
    system "#{bin}/git-mini-commit", "--version"
  end
end
