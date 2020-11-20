//
//  ViewController.swift
//  排序算法
//
//  Created by yuhui on 2020/11/16.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        var array = [9,4,6,5,3,1,2,10,7,8,11]
//        let b = BubbleSort()
//        print( b.bubbleSort(array: array))
//        
//        let s = SelectionSort()
//        print( s.sort(array: &array))
//        
        let i = Mergesort()
        print( i.sort(array: &array))
        
       
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        var array = [9,4,6,5,3,1,2,10]
        let merge = Mergesort()
        print( merge.sort(array: &array))
    }

}

