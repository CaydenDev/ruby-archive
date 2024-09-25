class QuoteGenerator
  QUOTES = [
    "The greatest glory in living lies not in never falling, but in rising every time we fall. - Nelson Mandela",
    "The way to get started is to quit talking and begin doing. - Walt Disney",
    "Life is what happens when you're busy making other plans. - John Lennon",
    "You only live once, but if you do it right, once is enough. - Mae West",
    "The purpose of our lives is to be happy. - Dalai Lama"
  ]

  def self.random_quote
    QUOTES.sample
  end
end

puts QuoteGenerator.random_quote
