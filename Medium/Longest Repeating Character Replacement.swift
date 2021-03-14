//Longest Repeating Character Replacement
/*The key to sliding window here is to

Keep track of the character with highest count in window
EXPAND WINDOW while windowSize - maxCount is less than k
SHRINK WINDOW while windowSize - maxCount is greater than k
--the reason we shrink is because we have too many characters to replace
----i.e 6 - 4 =2 so we need to replace two characters, lets say k is 1
Lastly keep track of the maxLength of windowSize.
SIde Note - b/c the window only expands when the maxCount increases there is no need to decrease the maxCount
*/
func characterReplacement(_ s: String, _ k: Int) -> Int {
    var dict = Dictionary<Character, Int>()
    var maxCount = 0
    var maxLength = 0
    var left = 0, right = 0 
    let sArr = Array(s)
    while right < sArr.endIndex {
        dict[sArr[right], default: 0] += 1
        maxCount = max(maxCount, dict[sArr[right]]!)
        while right - left + 1 - maxCount > k {
            dict[sArr[left]]! -= 1
            left += 1
        }
        maxLength = max(maxLength, right - left + 1)
        right += 1
    }
    return maxLength
}