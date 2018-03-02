class Pciutils < Formula
  desc "The PCI Utilities"
  homepage "https://github.com/pciutils/pciutils"

  head do
    url "https://github.com/pciutils/pciutils.git"
  end

  def install
    system "make", "PREFIX=#{prefix}", "install"
  end
  def caveats; <<~EOS
    In order to make some tools, e.g., lspci, actually work, you need to
    run as root 'nvram boot-args="debug=0x144"' from the recovery console
    EOS
  end
end
