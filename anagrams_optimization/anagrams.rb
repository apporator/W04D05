# =begin=

# str1

# str1.length.times do
#     (stre1.length -1.times do)
#         (stre1.length -1.times do)

# 012
# 210


# end

# "liv"
# "lvi"
# "ilv"
# "ivl"
# "vli"
# "vil"

# =end

# def anagram?(word)
#     return [word] if word.length <= 1

#     word_array = anagram?(word[1..-1])

#     # return [word[0]] + word[1..-1].split.map{|char| word + char}
# end


# def anagram?(word)
#     new_words = []
#     word.length.times do |i|
#         word.length.times do |j|
#             word.length.times do |k|
#                 new_words << word[i] + word[j] + word[k] unless i == j || k == j || i == k
#             end
#         end
#     end

#     new_words
# end

# p anagram?("liv")

# 0 1 2
# 0 1 2

=begin

def anagram?(word)
    return word if word.length <= 1

    return word[0] + word[1..-1].split.map{|char| word + char}
end

=end

# "abc" a + bc or cb

# def anagram?(string1, string2)

#     hash1 = Hash.new(0)
#     hash2 = Hash.new(0)

#     string1.each_char do |char|
#         hash1[char] += 1
#     end

#     string2.each_char do |char|
#         hash2[char] += 1
#     end

#     hash1 == hash2
# end

# p anagram?("elvis", "lives" )
# p anagram?("gizmo", "sally")


def anagram?(string1, string2)

    hash1 = Hash.new(0)

    string1.each_char do |char|
        hash1[char] += 1
    end

    string2.each_char do |char|
        hash1[char] -= 1
    end

    hash1.values.all? { |v| v == 0}
end

p anagram?("elvis", "lives" )
p anagram?("gizmo", "sally")
