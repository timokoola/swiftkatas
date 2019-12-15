//
//  football.swift
//  Kata4
//
//  Created by skadiuser on 15.12.2019.
//  Copyright © 2019 Timo Koola. All rights reserved.
//

import Foundation


typealias goalDiff = (team: String, diff: Int)

func findSmallestGoalDiff(data: String) -> goalDiff {
    let rows = data.split(separator: "\n")
    var goals : [goalDiff] = []
    
    for row in rows {
        guard row.split(separator: " ").count > 8 else {
            continue
        }
        
        let items = row.split(separator: " ")
        
        let team = String(items[1])
        let maxT = Int(items[6].components(separatedBy: CharacterSet.decimalDigits.inverted).joined()) ?? 0
        let minT = Int(items[8].components(separatedBy: CharacterSet.decimalDigits.inverted).joined()) ?? 1000
        
        goals.append((team: String(team), diff: maxT - minT))
    }
    
    return goals.min {a, b in a.diff < b.diff} ?? (team: "", diff: 0)
}

func getFootBallTask() -> URLSessionDataTask {
    let url = URL(string: "http://codekata.com/data/04/football.dat")!
    let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
        if let error = error {
            print("error: \(error)")
        } else {
            if let response = response as? HTTPURLResponse {
                print("statusCode: \(response.statusCode)")
            }
            if let data = data, let dataString = String(data: data, encoding: .utf8) {
                //let diff = handleWeatherData(data: dataString)
                let diff = findSmallestGoalDiff(data: dataString)
                let genDiff = genericDiffHandler(data: dataString, titleCol: 1, largeCol: 6, smallCol: 8, diffType: DiffType.min)
                print("Smallest goal diff is by \(diff) or \(genDiff)")
            }
        }
    }
    return task
}


