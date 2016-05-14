require "base64"

require "kewl_crypto/version"

module KewlCrypto

  def self.new(string)
    KewlCrypto.new(string)
  end

  class KewlCrypto
    attr_reader :untouched

    def initialize(string)
      @untouched = string
    end

    def encrypted
      Base64.encode64(@untouched)
    end

    def decrypted
      Base64.decode64(@untouched)
    end
  end

end
