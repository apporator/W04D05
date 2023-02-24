
#this is very bad, example of a quadratic classification
def my_min(arr)
    return nil if arr.empty?

    answer = arr[0]

    arr.each do |ele1|
        arr.each do |ele2|
            if ele2 > ele1
                copmarison = ele1
                if answer > copmarison
                    answer = copmarison
                end
            end
        end
    end
    answer
end

arr = [ 0, 3, 5, 4, -5, 10, 1, 90 ]

p my_min(arr)