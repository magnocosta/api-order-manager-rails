module NullOrEmptyAttributesRemover
  def attributes
    hash = super
    hash.each do |key, value|
      delete = false
      if value.respond_to?(:empty?)
        if value.empty?
          delete = true
        end
      elsif value.respond_to?(:size)
        if value.size == 0
          delete = true
        end
      elsif value.nil?
        delete = true
      end
      hash.delete(key) if delete
    end
    hash
  end
end
