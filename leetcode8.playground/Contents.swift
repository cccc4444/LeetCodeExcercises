//
//Input: nums = [-2,1,-3,4,-1,2,1,-5,4]
//Output: 6
//Explanation: [4,-1,2,1] has the largest sum = 6.

class Solution {
    func maxSubArray(_  nums: [Int]) -> Int {
        var maxx = nums[0]
        var curr = nums[0]
        
        for i in 1..<nums.count{
            curr = max(nums[i], curr + nums[i])
            maxx = max(curr, maxx)
        }
        
        return maxx
    }
}

let instance = Solution()
print(instance.maxSubArray([1,2,-1,-2,2,1,-2,1,4,-5,4]))

