require 'building-blocks'

module ListFor
  class Base < BuildingBlocks::Base
    alias items block_positions
    alias item use
  end
end
