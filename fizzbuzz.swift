import Foundation

let fb: Array<(Int) -> String> = [ { _ in "fizzbuzz"}, { _ in "buzz"}, { _ in "fizz"}, { "\($0)" } ]

let idx : (Int, Int) -> Int = { (Int(ceil(Double($0.1 % $0.0) / 10)) * ($0.0 - 1)) / 2 }

print((1...20).map{ fb[[(3, $0), (5, $0)].map(idx).reduce(0, +)]($0) })