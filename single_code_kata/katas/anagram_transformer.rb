# String Transformation Kata

# flip(string,position) -- flip two adjacent characters in the string, position-wise
#    Position will denote the index of the left-hand-side character.
#
#    Examples:
#      flip("rat",0) -> "art" (r and a got flipped)
#      flip("hello",3) -> "helol" (o and l got flipped)
def flip(string, left_position)
  right_position = left_position + 1
  if(left_position < string.length - 1)
    placeholder = string[left_position]
    string[left_position] = string[right_position]
    string[right_position] = placeholder
  end
  string
end

# Returns how many flip() operations it took to transform str1 into str2.
# The strings are anagrams of each other.
# (An anagram of a word is a word made by rearranging the letters.)
#
# Parameters:
#    str1 - First string is the starting string
#    str2 - Second string is the target string
#
# Returns:
#    The number of flip() operations to transform str1 into str2
#
# Note: The method must also print every intermediate string to STDOUT
#
# Modifying str1 with methods other than flip() is not allowed in this exercise.
# All other methods called on str1 must not modify it.
def flips_to_transform(str1, str2)
  flips = 0
  for i in 0...str2.length
    for j in 0...str1.length
      if(str2[i] == str1[i])
        break
      end
      if(str2[i] == str1[j])
        k = j - 1
        while(k >= i)
          flip(str1, k)
          flips += 1
          k -= 1
        end
      end
    end
  end
  flips
  #your code here
end