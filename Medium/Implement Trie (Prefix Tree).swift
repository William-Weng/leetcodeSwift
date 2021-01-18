/*Implement Trie (Prefix Tree)*/

class Trie {

    class Node {
        var dict: Dictionary<Character, Node> = [:]
        var isEnd: Bool = false
    }
    let root = Node()
    //time O(n) space O(n)
    func insert(_ word: String) {
        var curr = root
        for char in word {
            if curr.dict[char] == nil {
                curr.dict[char] = Node()
            }
            curr = curr.dict[char]!
            
        }
        curr.isEnd = true
    }

    //time O(n) space O(1)
    func search(_ word: String) -> Bool {
        var curr = root
        for char in word {
            if curr.dict[char] == nil {
                return false
            }
            curr = curr.dict[char]!
        }
        return curr.isEnd == true
    }
    
    //time O(n) space O(1)
    func startsWith(_ prefix: String) -> Bool {
        var curr = root
        for char in prefix {
            if curr.dict[char] == nil {
                return false
            }
            curr = curr.dict[char]!
        }
        return true
    }
}