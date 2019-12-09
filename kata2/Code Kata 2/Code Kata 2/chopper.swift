//
//  chopper.swift
//  Code Kata 2
//
//  Created by skadiuser on 8.12.2019.
//  Copyright © 2019 Timo Koola. All rights reserved.
//

import Foundation



func recursiveChopImpl(_ toFind: Int, index: Int, array: [Int]) -> Int {
    if(array.isEmpty) {
        return -1
    } else if(array.count == 1) {
        return array[0] == toFind ? index : -1
    } else if(array.count == 2) {
        if(array[0] == toFind) {
            return index
        } else if(array[1] == toFind) {
            return index + 1
        }
    } else {
        var end = array.count - 1
        var start = 0
        let midPoint = array.count / 2
        
        if(array[midPoint] == toFind) {
            return midPoint
        } else if(array[midPoint] < toFind) {
            start = midPoint
            return recursiveChopImpl(toFind, index: index + start, array: Array(array[start...end]))
        } else if(array[midPoint] > toFind) {
            end = midPoint
            return recursiveChopImpl(toFind, index: index, array: Array(array[start...end]))
        }
    }
    return -1
}


// I think this is cheating a bit :)
// Actually not binary search at all :D
func sliceChop(_ toFind: Int, array: [Int]) -> Int  {
    
    if(array.isEmpty) {
        return -1
    } else if(array.count == 1) {
        return array[0] == toFind ? 0 : -1
    } else if(array.count == 2) {
        if(array[0] == toFind) {
            return 0
        } else if(array[1] == toFind) {
            return 0 + 1
        }
    } else {
        let smaller = array.filter {$0 < toFind}
        if(smaller.count == array.count) {
            return -1
        } else if(array[smaller.count] == toFind) {
            return smaller.count
        }
    }
    return -1
}

func recursiveChop(_ toFind: Int, array: [Int]) -> Int  {
    return recursiveChopImpl(toFind, index: 0, array: array)
}

func iterativeChop(_ toFind: Int, array: [Int]) -> Int  {
    if(array.isEmpty) {
        return -1
    } else if(array.count == 1) {
        return array[0] == toFind ? 0 : -1
    } else {
        var end = array.count - 1
        var start = 0
        var midPoint = array.count / 2
        
        while(start < (end - 1)) {
            if(array[midPoint] == toFind) {
                return midPoint
            } else if(array[midPoint] < toFind) {
                start = midPoint
                midPoint = start + (end - start) / 2
            } else if(array[midPoint] > toFind) {
                end = midPoint
                midPoint = start + (end - start) / 2
            }
            print("Array slice is \(array[start...end])  [\(start) - \(midPoint) - \(end)]")
        }
        if(array[start] == toFind) {
            return start
        } else if(array[end] == toFind) {
            return end
        }
        
        return -1
    }
}

func iterativeChopRandom(_ toFind: Int, array: [Int]) -> Int  {
    if(array.isEmpty) {
        return -1
    } else if(array.count == 1) {
        return array[0] == toFind ? 0 : -1
    } else {
        var end = array.count
        var last = end - 1
        var start = 0
        var midPoint = Int.random(in: 0..<end)
        
        while(start < (last - 1)) {
            if(array[midPoint] == toFind) {
                return midPoint
            } else if(array[midPoint] < toFind) {
                start = midPoint
                midPoint = Int.random(in: start..<end)//start + (end - start) / 2
            } else if(array[midPoint] > toFind) {
                end = midPoint + 1
                last = end - 1
                midPoint = Int.random(in: start..<end)
            }
            print("Array slice is \(array[start..<end])  [\(start) - \(midPoint) < \(end)]")
        }
        if(array[start] == toFind) {
            return start
        } else if(array[last] == toFind) {
            return last
        }
        
        return -1
    }
}
