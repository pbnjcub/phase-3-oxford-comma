def oxford_comma(array)
    if array.length == 1
        array[0]
    elsif array.length == 2
        array.join(" and ")
    elsif array.length == 3
        array.insert(1, ', ').insert(3, ', ').insert(4, 'and ').join()
    elsif array.length > 3
        array.each_with_index do |string, index|
            if index < array.length - 1
                array[index] << ", "
            elsif index == array.length - 1
                array[index].prepend("and ")
            end
        end
        array.join()
    end
end

























# def oxford_comma(array)
#     if array.length == 1
#         array[0]
#     elsif array.length == 2
#         array.join(" and ")
#     elsif array.length == 3
#         newArray = array.insert(1, ', ').insert(3, ', ').insert(4, 'and ')
#         newArray.join()
#     elsif array.length > 3
#         array.each_with_index do |string, index|
#             if index < array.length - 1
#                 array[index] << ", "
#             elsif index == array.length - 1
#                 array[index].prepend("and ")
#             end
#         end
#         array.join()
#     end



# end