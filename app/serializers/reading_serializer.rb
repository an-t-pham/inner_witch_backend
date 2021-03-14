class ReadingSerializer
  include FastJsonapi::ObjectSerializer
  attributes :cards_in_position, :current_situation, :tasks_at_hand, :new_challenges, :strength, :ideal_outcome
end
