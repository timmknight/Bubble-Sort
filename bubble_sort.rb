
def bubble_sort(array)
	maxNumOfPass = array.length-1 
	maxNumOfPass.times do

	array.each_with_index do |num, index|
		if index+1 < array.length
			if num > array[index+1]
				largerNum = num
				smallerNum = array[index+1]

				array[index] = smallerNum
				array[index+1] = largerNum
			end
			end
		end
			puts "Bubble sort = #{array}"
	end

end

bubble_sort([4,3,78,2,0,2])
