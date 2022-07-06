//
//  Main.swift
//  slowFrench
//
//  Created by Andrea on 6/25/22.
//

import Foundation
import SwiftUI

/*
class French: ObservableObject {
    @Published var level : String
    @Published var unit : [Unit]
   // @Published var podcast : [Podcast]
    
    init(id: UUID = UUID(), level : String, unit : [Unit]){
    
        self.level = level
        self.unit = unit
       // self.podcast = podcast
}
}
    */
    
    

struct Level :  Hashable, Identifiable {
    var id = UUID()
    var level : String
    var unit : [Unit]
    
    //Add an initializer that assigns a default value to the id property.
    //When you define a default value for a parameter, you can omit that parameter when you call an initializer or function.
    //making them identifiable in case the name repeats
    
    // init so the code compiles, it doesnt if we conform to identifiable and the array befolow doesn't have an id
    //this init assigns a defualt value to id
    init(id: UUID = UUID(), level : String, unit : [Unit]){
        self.id = id
        self.level = level
        self.unit = unit
       
    }
    
}
//nested struct, nested array
struct Unit : Hashable, Identifiable {
    var id = UUID()
    var name : String
    var podcast : [Podcast]
    
    struct Podcast : Hashable, Identifiable {
        var id = UUID()
        var name : String
        var time : String
    }
    
}
                            


extension Level {
    static func sampleData() -> [Level] {
    
    return [
        Level(level: "Debutant",
              unit: [Unit(name: "unit 1", podcast: [Unit.Podcast(name: "vous etes", time: "2:30"), Unit.Podcast(name: "verbs en -er", time: "3:40"), Unit.Podcast(name: "verbos", time: "4:50")]),
                     Unit(name: "unit 2", podcast: [Unit.Podcast(name: "comment ça va?", time: "3:20")])
                    ]),
        
        Level(level: "Intermediate", unit: [Unit(name: "unit 1", podcast: [Unit.Podcast(name: "vous etes", time: "2:30"), Unit.Podcast(name: "verbs en -er", time: "3:40"), Unit.Podcast(name: "verbos", time: "4:50")])]),
        
        Level(level: "Avance", unit: [Unit(name: "unit 1", podcast: [Unit.Podcast(name: "vous etes", time: "2:30"), Unit.Podcast(name: "verbs en -er", time: "3:40"), Unit.Podcast(name: "verbos", time: "4:50")])]),
    ]
}
}
