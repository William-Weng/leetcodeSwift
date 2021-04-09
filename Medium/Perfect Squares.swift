//Perfect Squares
    func numSquares(_ n: Int) -> Int {
        var dp = [0]
        for i in 1...n {
            dp.append(i)
            var j = 1
            while j*j <= i {
                dp[i] = min(dp[i], dp[i-j*j] + 1)
                j+=1
            }
        }
        return dp[n]
    }