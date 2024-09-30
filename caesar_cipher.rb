LOWER_CASE = ('a'..'z').to_a
UPPER_CASE = ('A'..'Z').to_a

def caesar_cipher(str, n)
  result = []
  str.chars.each do |char|
    if LOWER_CASE.include?(char)
      newVal = char.ord + Integer(n)
      newVal = newVal > 122 ? newVal - 122 + 96 : newVal
      result << newVal.chr
    elsif UPPER_CASE.include?(char)
      newVal = char.ord + Integer(n)
      newVal = newVal > 90 ? newVal - 90 + 64 : newVal
      result << newVal.chr
    else
      result << char
    end
  end
  result.join
end

cipher = caesar_cipher('What a string!', 5)
puts cipher
