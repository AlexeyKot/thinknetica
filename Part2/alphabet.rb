# frozen_string_literal: true

vowels = {}

alphabet = ('a'..'z')

alphabet.each_with_index do |value, index|
  vowels[value] = index + 1 if value =~ /[aeiouy]/
end

puts vowels
