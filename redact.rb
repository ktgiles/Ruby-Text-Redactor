#Use Ruby to crate text examiner that re-prints with certain word(s) redacted, ignoring case
# 06/30/2021

class Redact
  puts "Enter text:"
  text = gets.chomp #gets string from input
  text_words = text.split(" ") #splits string into array of words

  puts "enter redact words"
  redact = gets.chomp #gets string from input
  redact_words = redact.split(" ") #splits string into array of words

  c = redact_words.count - 1 #used for i loop control below

  text_words.each do |x| #iterate through all text words
    i = 0
    while i < redact_words.count #iterate through all redact words
      if x.casecmp(redact_words[i]) == 0 #if text matches a redact word
        puts "REDACTED " #print redacted and break loop
        break
      elsif i == c #if text has been compared to all redact words and does not match any of them
        puts "#{x} " #print x and break loop
        break
      else
        i += 1 #otherwise compare text to the next redact word
      end
    end
  end
end