require_relative "metamethod/version"
module MetaMethod
  #
  # @return [Boolean]
  #   Returns true if self encapsulates a public method.
  #
  def public?
    receiver.public_methods.include? name
  end

  #
  # @return [Boolean]
  #   Returns true if self encapsulates a protected method.
  #
  def protected?
    receiver.protected_methods.include? name
  end

  #
  # @return [Boolean]
  #   Returns true if self encapsulates a private method.
  #
  def private?
    receiver.private_methods.include? name
  end
end
