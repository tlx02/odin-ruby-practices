LOWER_CASE = ('a'..'z').to_a
UPPER_CASE = ('A'..'Z').to_a

def caesar_cipher(str, n)
  result = []
  str.chars.each do |char|
    if LOWER_CASE.include?(char)
      new_val = char.ord + Integer(n)
      new_val = new_val > 122 ? new_val - 122 + 96 : new_val
      result << new_val.chr
    elsif UPPER_CASE.include?(char)
      new_val = char.ord + Integer(n)
      new_val = new_val > 90 ? new_val - 90 + 64 : new_val
      result << new_val.chr
    else
      result << char
    end
  end
  result.join
end

cipher = caesar_cipher('What a string!', 5)
puts cipher
