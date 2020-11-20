//
//  Sort.swift
//  排序算法
//
//  Created by yuhui on 2020/11/16.
//

import UIKit

class Sort: NSObject {
    func sort(array: inout [Int]) -> [Int] {
        return array
    }
    
    func mySwap(array: inout [Int], i1: Int, i2: Int) {
        let temp = array[i1]
        array[i1] = array[i2]
        array[i2] = temp
    }
    func cmp(lh: Int, rh: Int) -> Int {
        return lh - rh
    }
}
