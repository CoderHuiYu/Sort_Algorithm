//
//  SelectionSort.swift
//  排序算法
//
//  Created by yuhui on 2020/11/16.
//

import UIKit

class SelectionSort: Sort {
    override func sort( array: inout [Int]) -> [Int] {
        for j in 0 ..< array.count {
            var index = j
            for i in 1+j ..< array.count {
                if array[i] > array[index]  {
                    index = i
                }
            }
            if j != index {
                let temp = array[index]
                array[index] = array[j]
                array[j] = temp
            }
        }
        return array
    }
}
