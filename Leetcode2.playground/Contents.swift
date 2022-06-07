class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        let res = Array(s)
        var allSubs = [String]()
        var subsWithoutDuplicates = [String]()
        let n = s.count
        
        for i in 0...n{
            var temp = ""
            for j in i..<n{
                if temp.contains(res[j]){
                    break
                }
                temp.append(res[j])
                allSubs.append(temp)
            }
        }
    
        for i in allSubs{
            if Set(i).count < i.count{
            }
            else{
                subsWithoutDuplicates.append(i)
            }
        }
        
        var maxLength = 0
        for i in subsWithoutDuplicates{
            if i.count > maxLength{
                maxLength = i.count
            }
        }
        return maxLength
    }
}

var instance = Solution()

///
///

func lengthOfLongestSubstring(_ s: String) -> Int {
        guard !s.isEmpty else { return 0 }
        var len = 0, chars: [Character] = []
        for c in s {
            if let idx = chars.firstIndex(of: c) {
                chars.removeSubrange(0...idx)
            }
            chars.append(c)
            len = max(len, chars.count)
        }
        return len
    }

print(lengthOfLongestSubstring("vdvf"))

