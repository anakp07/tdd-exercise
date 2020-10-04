# blackjack_score.rb

VALID_CARDS = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'Jack', 'Queen', 'King', 'Ace']

  def blackjack_score(hand)
    total = 0
    hand.each do |card|
      unless VALID_CARDS.any?(card)
        raise ArgumentError
      end
      if card.is_a?(Integer)
        total += card
      elsif card.is_a?(String)
        if card == "Jack" || card == "Queen" || card == "King"
          total += 10
      elsif card == "Ace"
        total < 11
        total += 11
      else
        total += 1
                                                                                                                                                                                   end
      end
    end
    if total > 21
      raise ArgumentError "You went over 21. Better luck next time!"
    end
    return total
  end

