class CardSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :card_type, :meaning_up, :meaning_rev, :description, :image, :readings
end
