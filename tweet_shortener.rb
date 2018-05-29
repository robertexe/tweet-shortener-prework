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


def word_substituter(tweet)
  tweet_array = tweet.split(' ')
  output_array = [];
  for word in tweet_array do
    mod_word = word.downcase
   if dictionary.key?(mod_word)
      word = dictionary[mod_word]
   end
   output_array << word
  end
  output = output_array.join(' ')
  return output
end

def bulk_tweet_shortener(tweets)
  tweets.each do | tweet |
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  end
    return tweet
end
