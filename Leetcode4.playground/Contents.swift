class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        
        var sub = strs[0]
        
        for i in strs[1..<strs.count]{
            while !i.hasPrefix(sub){
                sub = String(sub.dropLast())
            }
        
        }
        
        return sub
    }
}

var instance = Solution()
print(instance.longestCommonPrefix(
    ["flower","flow","flight"]))
