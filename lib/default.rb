require "default/version"

module DefaultValue
  def self.nil?
    true
  end

  def self.inspect
    "default"
  end
end

module Kernel
  def default
    DefaultValue
  end

  def default?
    self == default
  end
end
