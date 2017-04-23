//
//  Stopwatch.swift
//  StopWatch
//
//  Created by Charles You on 2017-02-16.
//  Copyright © 2017 Charles You. All rights reserved.
//

import Foundation

class Stopwatch {
    
    var current_Time: Date?
    var min: Double = 0.0
    var sec: Double = 0.0
    var milis: Double = 0.0
    
    func start() {
        current_Time = Date() // the current time
    }
    
    func convertToString() -> String {
        let lapse = -current_Time!.timeIntervalSinceNow
        min = lapse / 60
        sec = lapse.truncatingRemainder(dividingBy: 60)
        milis = lapse.truncatingRemainder(dividingBy: 1)
        sec = sec - milis
        min = lapse - sec - milis
        milis *= 100
        let time_String = String(format: "%02d:%02d.%d", Int(min), Int(sec), Int(milis))
        return time_String
    }
    
}

