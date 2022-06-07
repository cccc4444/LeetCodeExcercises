class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var result = [Int]()
        
        for i in nums.indices{
            for j in nums.indices{
                if i != j && nums[i] + nums[j] == target{
                    result.append(i)
                    result.append(j)
                    return result
                }
            }
        }
        return []
    }
    
}

var instance = Solution()
print(instance.twoSum([2,7,11,15], 9))
