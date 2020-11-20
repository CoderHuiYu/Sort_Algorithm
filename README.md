# Sort_Algorithm
use swift to write the sort algorithm
## Bubble sort
```
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
    ```
    
## SelectionSort
```
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
```

## InsertionSort

```
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

```

## MergeSort 

```
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
```
