module Erlang
  class Pid
    attr_accessor :node, :id, :serial, :creation

    def initialize(node, id, serial = 0, creation = 0)
      self.node     = node
      self.id       = id
      self.serial   = serial
      self.creation = creation
    end

    # @return [String] the nicely formatted version of the message
    def inspect
      "#<#{self.class.name} <0.#{id}.#{serial}> @node=#{node.inspect} @creation=#{creation.inspect}>"
    end

    def pretty_inspect
      "#<#{self.class.name} <0.#{id}.#{serial}>\n" <<
      "  @node=#{node.inspect}\n" <<
      "  @creation=#{creation.inspect}>"
    end

    def ==(other)
      self.class === other &&
      node.to_s == other.node.to_s &&
      id.to_s   == other.id.to_s &&
      serial    == other.serial &&
      creation  == other.creation
    end
  end
end