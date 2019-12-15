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

typealias chopParams = (toFind: Int, array: [Int], start: Int, midPoint: Int, end: Int)

func caseChopImpl(_ params: chopParams) -> Int  {
    print("Parameters are \(params)")
    switch params {
    case (_, let x, _, _, _) where x.isEmpty:
        return -1
    case (let x, let a, _, let m, _) where a[m] == x:
        return m
    case (_, _, let s, let m, let e) where s == m || m == e:
        return -1
    case (let x, let a, let s, let m, _) where x < a[m] && x >= a[s]:
        let val: chopParams = (toFind: x, array: a, start: s, midPoint: s + (m - s)/2, end: m)
        return caseChopImpl(val)
    case (let x, let a, _, let m, let e) where x > a[m] && x <= a[e - 1]:
        let val: chopParams = (toFind: x, array: a, start: m, midPoint: m + (e - m)/2, end: e)
        return caseChopImpl(val)
    default:
        return -1
    }
}

func caseChop(_ toFind: Int, array: [Int]) -> Int  {
    guard !array.isEmpty else {
        return -1
    }
    
    guard array[0] <= toFind && toFind <= array[array.count-1] else {
        return -1
    }
    
    let params: chopParams = (toFind: toFind, array: array, start: 0, midPoint: array.count/2, end: array.count)
    
    return caseChopImpl(params)
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
