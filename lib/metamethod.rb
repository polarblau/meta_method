require_relative "metamethod/version"

module MetaMethod
  def public?
    receiver.public_methods.include? name
  end

  def protected?
    receiver.protected_methods.include? name
  end

  def private?
    receiver.private_methods.include? name
  end
end
