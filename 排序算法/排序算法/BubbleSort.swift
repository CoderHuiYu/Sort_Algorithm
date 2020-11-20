//
//  BubbleSort.swift
//  排序算法
//
//  Created by yuhui on 2020/11/16.
//

import UIKit

class BubbleSort: Sort {
    
    func bubbleSort(array:[Int]) -> [Int] {
        var newArray = array
        for j in (0 ..< array.count).reversed() {
            for i in 1 ..< j+1 {
                if newArray[i-1] > newArray[i]  {
                    let temp = newArray[i]
                    newArray[i] = newArray[i-1]
                    newArray[i-1] = temp
                }
            }
        }
        return newArray
    }
}
