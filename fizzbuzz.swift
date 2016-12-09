import Foundation

let fb: Dictionary<Int, (Int) -> String> = [
    4: {_ in "fizz"}, 
    2: {_ in "buzz"},
    0: {_ in "fizzbuzz"},
    6: { "\($0)" }
]

func lookupValue(num: Int) -> Int {
    let tmp3 = abs(Int(ceil(abs(Double(num).remainder(dividingBy: 3)) / 10))) * 2
    let tmp5 = abs(Int(ceil(abs(Double(num).remainder(dividingBy: 5)) / 10))) * 4
    return tmp3 + tmp5
}

let result = (1...100).map{ fb[lookupValue(num: $0)]!($0) }

print(result)
