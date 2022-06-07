class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var lowIndex = 0
        var highIndex = nums.count - 1
        
        while(true){
            var currentIndex = (lowIndex + highIndex) / 2
            if nums[currentIndex] == target{
                return currentIndex
            }
            else if lowIndex > highIndex{
                return lowIndex
            }
            else{
                if nums[currentIndex] > target{
                    highIndex = currentIndex - 1
                }
                else{
                    lowIndex = currentIndex + 1
                }
            }
        }
    }
}
var instance = Solution()
print(instance.searchInsert([1,3,5,6],4))

