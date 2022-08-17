//
//  Theme.swift
//  slowFrench
//
//  Created by Andrea on 8/11/22.
//

import SwiftUI

//using the swiftUI framework because I'm going to add color properties from the swiftUI framework.
// Swift treats colors as View instances that you can add directly to a view hierarchy.


//enum uses the rawValue of String using the name of the case as the string rawValue
//Theme conforms to CaseIterable(to access it from ThemePicker) and Identifiable, uses the theme name as it id if not it gives me an error that it can't conform
enum Theme : String, CaseIterable, Identifiable, Codable {
    case bubblegum
    case buttercup
    case indigo
    case lavender
    case magenta
    case navy
    case orange
    case oxblood
    case periwinkle
    case poppy
    case purple
    case seafoam
    case sky
    case tan
    case teal
    case yellow
    
    //color property that returns .black or .white depending on the value of self

    var accentColor : Color {
        switch self {
        case .bubblegum, .buttercup, .lavender, .orange, .periwinkle, .poppy, .seafoam, .sky, .tan, .teal, .yellow,.indigo, .magenta, .navy, .oxblood, .purple : return .white 
        }
    }
    
    //color property that creates a color using the enums rawValues
    //this property initializes a color fron the asset catalog
    
    var mainColor : Color {
        Color(rawValue)
    }
    
    //adding a property that capitalizes all the cases raw values
    var name: String {
        rawValue.capitalized
    }
    
    //id for Identifiable conformance
    var id: String {
        name
    }
    
    
    
}
