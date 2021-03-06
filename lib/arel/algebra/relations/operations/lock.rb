module Arel
  class Lock < Compound
    attributes :relation, :locked
    deriving :initialize, :==

    def initialize(relation, locked)
      @relation = relation
      @locked   = locked.blank? ? " FOR UPDATE" : locked
    end
  end
end

