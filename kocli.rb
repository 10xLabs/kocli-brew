# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "lib/private"
class Kocli < Formula
  desc "Internal Kolors CLI"
  homepage "https://github.com/10xLabs/kocli"
  version "1.23.4"
  license "MIT"

  depends_on "git"
  depends_on "zsh" => :optional

  on_macos do
    on_intel do
      url "https://github.com/10xLabs/kocli/releases/download/v1.23.4/kocli_darwin_amd64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "7f2664d9d83b6b41c3be92c4ea5c6574e1584c9b723bce46337b659c696a736c"

      def install
        bin.install "ko"
      end
    end
    on_arm do
      url "https://github.com/10xLabs/kocli/releases/download/v1.23.4/kocli_darwin_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "910f1bcadf4be8df7a25fc515fa7063b7095b69aee9b8ac58b6ceee87fd198a9"

      def install
        bin.install "ko"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/10xLabs/kocli/releases/download/v1.23.4/kocli_linux_amd64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
        sha256 "ea0dc2fb82d64c816e4db5c12436657db531002280d4249174bf2784ac6b8837"

        def install
          bin.install "ko"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/10xLabs/kocli/releases/download/v1.23.4/kocli_linux_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
        sha256 "21885a161f68a19c79d33ae1ff12d66f07501bbcee55740b7129a49f4f04bb27"

        def install
          bin.install "ko"
        end
      end
    end
  end

  head "https://github.com/10xLabs/kocli.git"

  def caveats
    <<~EOS
      To start using kocli use "ko"
        ko --help
        ko --version
    EOS
  end

  test do
    ko --help
  end
end
