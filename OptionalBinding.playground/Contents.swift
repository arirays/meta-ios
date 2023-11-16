
var weeklyTemperatures: [String:Int] = [:]


weeklyTemperatures = ["Monday": 70, "Tuesday": 75, "Wednesday": 69, "Thursday": 65, "Friday": 69, "Saturday": 70]
weeklyTemperatures["Monday"]! += 30
print("The temperatures on Monday is \(weeklyTemperatures["Monday"]!)")

if let temperature = weeklyTemperatures["Sunday"] {
    print("We have a Sunday forecast: \(temperature)")
} else {
    weeklyTemperatures["Sunday"] = 100
    print("We added Sunday forecast \(weeklyTemperatures["Sunday"]!)")
}

if weeklyTemperatures.count == 7 {
    print("You have weather forecast for the next week.")
    weeklyTemperatures = [:]
    print("Reset weekly temperatures for the next week!")
}
