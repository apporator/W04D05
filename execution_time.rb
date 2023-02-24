
#this is very bad, example of a quadratic classification
# def my_min(arr)
#     return nil if arr.empty?

#     answer = arr[0]

#     arr.each do |ele1|
#         arr.each do |ele2|
#             if ele2 > ele1
#                 copmarison = ele1
#                 if answer > copmarison
#                     answer = copmarison
#                 end
#             end
#         end
#     end
#     answer
# end

arr = [ 0, 3, 5, 4, -5, 10, 1, 90 ]

# p my_min(arr)

def my_min(arr)
    return nil if arr.empty?

    answer = arr.first

    arr.each do |ele|
        answer = ele if answer > ele
    end
    
    answer
end

def largest_contiguous_subsum(arr)
    subs = []

    arr.each.with_index do |ele1, idx1|
        arr.each.with_index do |ele2, idx2|
            subs << arr[idx1..idx2] if idx2 >= idx1
        end
    end

    greatest = subs[0].sum

    subs.each do |sub_array|
        greatest = sub_array.sum if greatest < sub_array.sum
    end

    greatest
end

list = [5, 3, -7]

p largest_contiguous_subsum(list)