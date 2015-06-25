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
	end
	puts "Bubble sort = #{array}"
end

bubble_sort([4,3,78,2,0,2])
# should return [0, 2, 2, 3, 4, 78]

def bubble_sort_by(array)
	maxNumOfPass = array.length-1 
			index = 0
	maxNumOfPass.times do

		left = array[index]
		right = array[index+1]

			if (yield left,right) < 0
				array[index] = right
				array[index+1] = left
			end

				index +=1	

			end
	
	puts "Bubble sort = #{array}"
end


bubble_sort_by(["hi","hello","hey"]) do |left,right| 
	 right.length - left.length
end
# Should return ["hi", "hey", "hello"]

bubble_sort_by(["hi","hello","hey"]) do |left,right| 
	 left.length - right.length
end
# Should return ["hello", "hey", "hi"]