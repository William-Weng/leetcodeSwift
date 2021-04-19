//Task Scheduler
//O(n) O(1)
    func leastInterval(_ tasks: [Character], _ n: Int) -> Int {
        var freq = [Int](repeating: 0 ,count: 26)
        for task in tasks {
            freq[Int(task.asciiValue!) - 65] += 1
        }
        freq.sort(by: >)
        var fmax = freq[0]
        var idle = (fmax - 1) * n
        for i in 1..<freq.endIndex {
            idle -= min(freq[i], fmax - 1)
        }
        return tasks.endIndex + (idle < 0 ? 0 : idle)
    }