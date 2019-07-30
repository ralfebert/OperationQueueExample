// © 2019 Ralf Ebert — iOS Example Project: OperationQueueExample
// License: https://opensource.org/licenses/0BSD

import Foundation

/**
 Returns an approximation for pi that takes a while to compute:

 See: [Leibnitz formula](https://en.wikipedia.org/wiki/Leibniz_formula_for_%CF%80)
 */
func approximatePi() -> Double {
    debugPrint("Calculation started")

    var result: Double = 0
    for i in 0 ... 100_000_000 {
        let di = Double(i)
        result += pow(-1.0, di) / (2 * di + 1)
    }

    debugPrint("Calculation finished")
    return result * 4
}
