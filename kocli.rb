# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "lib/private"
class Kocli < Formula
  desc "Internal Kolors CLI"
  homepage "https://github.com/10xLabs/kocli"
  version "1.16.4"
  license "MIT"

  depends_on "git"
  depends_on "zsh" => :optional

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/10xLabs/kocli/releases/download/v1.16.4/kocli_darwin_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "869896e01e1fbf9a5e89d8d634a70c95c17031adc00cf365aa674c4a44dacab3"

      def install
        bin.install "ko"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/10xLabs/kocli/releases/download/v1.16.4/kocli_darwin_amd64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "d9cda389f5c4bf11ffb8307199a7b0f7782defe13527d1e11613b7bd4cf78598"

      def install
        bin.install "ko"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/10xLabs/kocli/releases/download/v1.16.4/kocli_linux_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "a83ee7a3f3c7699b9a8c5e098588c5d246946832e5aec7e63ded21c8e782d4d2"

      def install
        bin.install "ko"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/10xLabs/kocli/releases/download/v1.16.4/kocli_linux_amd64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "be583cb5045745a7c367035f9a10ff0a5933fa596baf354261cc95ade6f5f234"

      def install
        bin.install "ko"
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
