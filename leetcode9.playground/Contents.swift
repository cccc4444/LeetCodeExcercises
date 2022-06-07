class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        
        var arr = Array(s)
        var counter = 0
        
        for i in stride(from: arr.count - 1, to: -1, by: -1){
            if arr[i] == " "{
                arr = arr.dropLast()
            }
            else{
                break
            }
        }
        
        if arr.count == 1{
            return 1
        }

        
        for i in stride(from: arr.count - 1, to: -1, by: -1){
            if arr[i] != " "{
                counter += 1
            }
            else{
                break
            }
        }


                
        return counter
    }
}
var instance = Solution()
print(instance.lengthOfLastWord("  b day sss2  "))
