class ErrorSerializer

  def self.serialize(errors)
    return if errors.nil? || errors.empty?

    result = errors.to_hash.map do |k, v|
      v.map do |msg|
        pos = msg.index('-')
        code = msg[0...pos-1]
        detail = msg[pos+2..-1]
        {code: code, detail: detail}
      end
    end.flatten

    result
  end

end
