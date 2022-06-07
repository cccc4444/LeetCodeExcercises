class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        var arr = Array(String(x))
        var res = ""
        for i in stride(from: arr.count, to: 0, by: -1){
            res.append(arr[i-1])
        }
        
        if res == String(x){
            return true
        }
        return false
    }
}
var instance = Solution()
instance.isPalindrome(-151)
