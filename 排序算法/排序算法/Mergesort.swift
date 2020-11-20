//
//  Mergesort.swift
//  排序算法
//
//  Created by yuhui on 2020/11/20.
//

import UIKit

class Mergesort: Sort {
    
    private var leftArray = [Int]()
    private var array = [Int]()
    
    override func sort( array: inout [Int]) -> [Int] {
        self.array = array
        self.leftArray = [Int](repeating: 0, count: self.array.count/2)
        sort(begin: 0, end: array.count)
        return self.array
    }
    
    private func sort(begin: Int, end: Int) {
        if end - begin < 2 { return }
        let mid = (begin + end) >> 1
        sort(begin: begin, end: mid)
        sort(begin: mid, end: end)
        merge(begin: begin, mid: mid, end: end)
    }
    
    private func merge(begin: Int, mid: Int, end: Int) {
        var li = 0; let le = mid - begin;
        var ri = mid; let re = end
        var ai = begin
        for i in li ..< le {
            leftArray[i] = array[begin + i]
        }
        while li < le {
            
            if ri < re &&  leftArray[li] > array[ri]  {
                array[ai] = array[ri]
                ai += 1
                ri += 1
            }else {
                array[ai] = leftArray[li]
                ai += 1
                li += 1
            }
        }
    }
}


