sonnet = "Let me not to the marriage of true minds
Admit impediments. Love is not love
Which alters when it alteration finds,
Or bends with the remover to remove.
O no, it is an ever-fixed mark
That looks on tempests and is never shaken
It is the star to every wand'ring bark,
Whose worth's unknown, although his height be taken. Love's not time's fool, though rosy lips and cheeks Within his bending sickle's compass come:
Love alters not with his brief hours and weeks,
But bears it out even to the edge of doom.
  If this be error and upon me proved,
  I never writ, nor no man ever loved."

  uniques = {}
  # This uses the scan method from Section 4.3 to return an array of all the strings that match “one or more word characters in a row”. (Extending this pattern to include apostrophes (so that it matches, e.g., “wand’ring” as well) is left as an exercise (Section 4.5.1).)
  words = sonnet.scan(/\w+ '?/)

  words.each do |word|
    # If the word already has an entry in the uniques object, increment its count by 1.
    # Note that we’re relying on uniques[word] being nil (false in a boolean context) if word isn’t yet a valid key.
    if uniques[word]
      uniques[word] += 1
    else 
      uniques[word] = 1
    end
      
  end
  puts uniques