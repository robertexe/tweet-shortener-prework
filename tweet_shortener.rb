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

string = "Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!"

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