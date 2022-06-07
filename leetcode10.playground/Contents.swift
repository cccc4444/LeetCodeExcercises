class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var offset = 1, nums = digits
        
        for i in stride(from: nums.count - 1, through: 0, by: -1){
            nums[i] = nums[i] + offset
            offset = nums[i] / 10
            nums[i] = nums[i] % 10
        }
        print(offset)
        
//        if offset > 0 {
//            nums.insert(offset, at: 0)
//        }
        
        return nums
    }
}
var instance = Solution()
print(instance.plusOne([1,9,9,9]))
