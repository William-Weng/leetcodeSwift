//Sequential Digits
//O(n), O(1)
    func sequentialDigits(_ low: Int, _ high: Int) -> [Int] {
        var res = [Int]()
        var r = 0
        let arr = Array("123456789")
        
        while r < arr.endIndex {
            let l = 0
            
            var p1 = l, p2 = r
            while p2 < arr.endIndex {
                let n2 = Int(String(arr[p1...p2]))! 
                if n2 >= low && n2 <= high {
                    res.append(n2)
                } 
                p1 += 1
                p2 += 1
            }
            
            r += 1
        }
        
        return res
    }