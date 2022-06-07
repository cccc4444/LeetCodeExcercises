
class Solution {
    func isValid(_ s: String) -> Bool {
        var arr = Array(s)
        guard s.count % 2 == 0 else {
            return false
        }
        
        var dict: Dictionary = [String:String]()
        dict["("] = ")"
        dict["["] = "]"
        dict["{"] = "}"
        
        
        for i in arr{
            if dict[String(i)] != nil && arr.contains(Character(dict[String(i)]!)){
                let element = dict[String(i)]!
                arr.remove(at: arr.firstIndex(of: i)!)
                arr.remove(at: arr.firstIndex(of: Character(element))!)
            }
        }
        
        
        guard arr.isEmpty else{
            return false
        }
        
        return true
    }
}

var instance = Solution()
//
//print(instance.isValid("([{}])")) // t
//print(instance.isValid("(]")) // f
//print(instance.isValid("([)]")) // f


// Leetcode Solution

class SolutionFromLeetCode{
    func isValid(_ s: String) -> Bool{
        
        guard s.count % 2 == 0 else{
            return false
        }
        
        var dict: Dictionary = [
            "}":"{",
            ")":"(",
            "]":"["
        ]
        
        var stack = [String]()
        
        for char in Array(s){
            let elem = String(char)
            if let someValue = dict[elem]{
                if stack.last == someValue{
                    stack.removeLast()
                }
                else{
                    return false
                    
                }
            }
            else{
                stack.append(elem)
            }
            
        }
        
        return stack.count == 0
    }
}
var newInstance = SolutionFromLeetCode()
print(newInstance.isValid("([{}])"))
