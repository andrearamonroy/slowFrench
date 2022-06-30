//
//  Main.swift
//  slowFrench
//
//  Created by Andrea on 6/25/22.
//

import Foundation
import SwiftUI

struct Level : Hashable, Identifiable {
    var id = UUID()
    var level : String
    var unit : [Unit]
}

struct Unit : Hashable, Identifiable {
    var id = UUID()
    var name : String
    var podcast : [Podcast]
    
}

struct Podcast : Hashable, Identifiable {
    var id = UUID()
    var name : String
    var time : String
}


var levels = [Level(level: "Debutant", unit: [Unit(name: "Unit 1", podcast: [Podcast(name: "Vous estes", time: "2:36"), Podcast(name: "verbs en -er", time: "3:34")]),Unit(name: "unit 2", podcast: [Podcast(name: "irregular vers", time: "2:30"), Podcast(name: "verbos", time: "2:30")])]),
              
              
              Level(level: "Intermediate", unit: [Unit(name: "unit 1", podcast: [Podcast(name: "quel est votre", time: "2,30")]), Unit(name: "unit 2", podcast: [Podcast(name: "ver", time: "4:30"), Podcast(name: "pronunciation", time: "2:40")])]),
              
              Level(level: "Avance", unit: [Unit(name: "unit 1", podcast: [Podcast(name: "quel est votre", time: "2,30")]), Unit(name: "unit 2", podcast: [Podcast(name: "ver", time: "4:30"), Podcast(name: "pronunciation", time: "2:40")])]),
]
