class GitMiniCommit < Formula
  desc "Git CLI extension for mini-commit workflow: local, small commits between staging and regular commit"
  homepage "https://github.com/minoru-kinugasa-105/git-mini-commit"
  url "https://github.com/minoru-kinugasa-105/mini-commit/releases/download/v0.1.1/git-mini-commit"
  sha256 "PLACEHOLDER_SHA256_DARWIN_AMD64"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/minoru-kinugasa-105/mini-commit/releases/download/v0.1.1/git-mini-commit"
    sha256 "PLACEHOLDER_SHA256_DARWIN_ARM64"
  end

  def install
    bin.install "git-mini-commit"
  end

  test do
    system "#{bin}/git-mini-commit", "--version"
  end
end
