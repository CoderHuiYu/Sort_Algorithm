//
//  InsertionSort.swift
//  排序算法
//
//  Created by yuhui on 2020/11/16.
//

import UIKit

class InsertionSort: Sort {
    override func sort(array: inout [Int]) -> [Int] {
        for j in 1 ..< array.count {
            for i in (0 ..< j).reversed() {
                if array[i] < array[j-1] {
                    mySwap(array: &array, i1: j, i2: j-1)
                }
            }
        }
        return array
    }
}

struct Vector2D {
    var x = 0.0
    var y = 0.0
}

extension Vector2D {
    static func + (left: Vector2D, right: Vector2D) -> Vector2D {
        return Vector2D(x: left.x + right.x, y: left.y + right.y)
    }
    
}

infix operator ..>
extension Int {
    static func ..> (minimum: Int, maximum: Int) -> Range<Int> {
        let range = Range(uncheckedBounds: (lower: minimum, upper: maximum))
        return range
    }
}
