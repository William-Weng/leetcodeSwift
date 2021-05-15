//time O(n log n) space O(nums)
func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
    var dict = Dictionary<Int,Int>()
    for n in nums {
        dict[n, default: 0] += 1
    }
    var arr = [Int]()
    for (key,_) in dict {
        arr.append(key)
    }
    let sortedArr = arr.sorted { a, b in
        return dict[a]! > dict[b]!
    }
    
    return Array(sortedArr[0..<k])
}

    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var dict = [Int: Int]()
        for n in nums {
            dict[n, default:0] += 1
        }
        var list = Array(dict.keys)
        list.sort {a,b in dict[a]! > dict[b]! } 
        return Array(list[0..<k])
    }