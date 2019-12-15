//
//  main.swift
//  Kata4
//
//  Created by skadiuser on 15.12.2019.
//  Copyright © 2019 Timo Koola. All rights reserved.
//

import Foundation

// [Swift Minimum GET/POST Request Codes - DEV Community
// 👩‍💻👨‍💻](https://dev.to/mishimay/swift-minimum-getpost-request-codes-1085)

typealias dateRange = (date: Int, range: Int)

// Returns the date number of
func handleWeatherData(data: String) -> dateRange {
    let rows = data.split(separator: "\n")
    var dates: [dateRange] = []
    
    for row in rows {
        guard(row.split(separator: " ").count > 2) else {
            continue
        }
        
        let dy = Int(row.split(separator: " ")[0]) ?? 0
        
        guard dy > 0 else {
            continue
        }
        let maxT = Int(row.split(separator: " ")[1].components(separatedBy: CharacterSet.decimalDigits.inverted).joined()) ?? Int.max
        let minT = Int(row.split(separator: " ")[2].components(separatedBy: CharacterSet.decimalDigits.inverted).joined()) ?? Int.min
        
        dates.append((dy, maxT - minT))
    }
    
    return dates.min {a,b in a.range < b.range} ?? (date: 0, range: 0)
}


let url = URL(string: "http://codekata.com/data/04/weather.dat")!
let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
    if let error = error {
        print("error: \(error)")
    } else {
        if let response = response as? HTTPURLResponse {
            print("statusCode: \(response.statusCode)")
        }
        if let data = data, let dataString = String(data: data, encoding: .utf8) {
            let first = handleWeatherData(data: dataString)
            print("Date is \(first)")
        }
    }
}
task.resume()

sleep(4000)
