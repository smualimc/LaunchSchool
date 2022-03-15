=begin 
Methods matrix
------------  --------------------  ------------  -----------------   -------------   ------------  ----------------
Called by     Method                Parameters    Goal                Calls to        Parameters    Returns/produces
------------  --------------------  ------------  -----------------   -------------   ------------  ----------------
Main          deal                  current_deck  Deals two cards     pick_card       current_deck  Updated hashes:
                                    player_cards  each one                                          player_cards
                                    dealer_cards                                                    dealer_cards
------------  --------------------  ------------  -----------------   -------------   ------------  ----------------
deal          pick_card             current_deck  Pick up a random    update_deck     the card key  1 card hash
                                                  card from                           current_deck
                                                  current_deck
------------  --------------------  ------------  -----------------   -------------   ------------  ----------------
pick_card     update_deck           current_deck  Remove a card                                     The updated 
                                    key to erase  from the current                                  current deck
                                                  deck                                              hash
------------  --------------------  ------------  -----------------   -------------   ------------  ----------------
Main          initial_dealer_cards  dealer_cards  display dealer                                    Displays dealer
                                                  cards 1 invisible                                 cards just one's
                                                                                                    visible
------------  --------------------  ------------  -----------------   -------------   ------------  ----------------
Main          show_cards            a cards hash  Show the cards                                    Displays a hash
player_turn?                                                                                        of visible cards
dealer_turn?
------------  --------------------  ------------  -----------------   -------------   ------------  ----------------
Main          player_turn?          player_cards  enables player      compute         player_cards  true if stays
                                                  hit until he                                      false if bust
                                                  stays or bust
------------  --------------------  ------------  -----------------   -------------   ------------  ----------------
player_turn?  compute               a cards hash  Computes total                                    total cards                                                                                                                        
dealer_turn?                                      points of cards.                                  value. if some
                                                  Can toggle Ace                                    Ace its value is
                                                  value 1/11                                        11 if no bust
------------  --------------------  ------------  -----------------   -------------   ------------  ----------------
compute       aces?                 a cards hash  determines if                                     true if  Aces.
                                                  there's an Ace                                    false if not  
                                                                                                     
------------  --------------------  ------------  -----------------   -------------   ------------  ----------------
player_turn?  another_card          a cards hash  Adds another                                      A new hash that
dealer_turn?                                      random card to                                    includes a new
                                                  hash                                              random card
------------  --------------------  ------------  -----------------   -------------   ------------  ----------------
Main          dealer_turn?          dealer cards  Gives cards                                       true if it stops
                                                  to dealer                                         false if bust
                                                  until bust 
                                                  or >= 17
------------  --------------------  ------------  -----------------   -------------   ------------  ----------------
Main          set_winner            player_cards  print the winner    compute         hash to sum   Total points
                                    dealer_cards
------------  --------------------  ------------  -----------------   -------------   ------------  ----------------
=end