//
//  Extensions.swift
//  slowFrench
//
//  Created by Andrea on 8/16/22.
//

import Foundation

//DateComponentsFormatter = is a formatter that creates string representations of quantities of time.
extension DateComponentsFormatter {
    static let positional: DateComponentsFormatter = {
        print("Initializing DateComponentsFormatter.positional")
        let formatter = DateComponentsFormatter()
        
        formatter.allowedUnits = [.minute, .second]
        formatter.unitsStyle = .positional
        formatter.zeroFormattingBehavior = .pad //adds zeros where needed
        
        return formatter
    }() //lazy initialization = won't initialize until used
}
