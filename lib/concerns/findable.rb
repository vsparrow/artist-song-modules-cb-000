module Findable
  module ClassMethods
    def find_by_name(name)
      self.all.detect { |object| object.name == name }
    end
  end #ClassMethods
end


# def self.find_by_name(name)
#   @@artists.detect{|a| a.name == name}
# end
