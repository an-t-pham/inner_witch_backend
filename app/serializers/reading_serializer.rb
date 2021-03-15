class ReadingSerializer
  include FastJsonapi::ObjectSerializer
  attributes :cards_in_position, :past, :present, :future, :reason, :potential
end
