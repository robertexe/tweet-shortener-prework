def dictionary
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "four" => "4",
    "for" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
  return dictionary
end

def word_substituter(str)
  str_array = str.split(' ')
  output_array = [];
  for word in str_array do
   if dictionary.key?(word)
      word = dictionary[word]
   end
   output_array << word
  end
  output = output_array.join(' ')
  return output
end
