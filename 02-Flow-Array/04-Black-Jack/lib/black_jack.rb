def pick_bank_score
  # TODO: Use Random to get a new random score
  bank_score = rand(16..21)
  return bank_score
end

def pick_player_card
  # TODO: Use Random to get a new random card
  player_score = rand(1..11)
  return player_score
end
