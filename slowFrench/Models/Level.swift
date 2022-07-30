//
//  Level.swift
//  slowFrench
//
//  Created by Andrea on 7/13/22.
//

import SwiftUI

struct Level: Identifiable, Codable{
    let id: UUID
    let name: String
    let units: [Unit]
    
//    enum CodingKeys: String, CodingKey{
//        case id
//        case name
//        case units
//    }
}

//unit

struct Unit: Identifiable, Codable{
    let id: UUID
    let unitName: String
    let podcasts: [Podcast]
}


//podcast
struct Podcast: Identifiable, Codable{
    let id: UUID
    let podcastName: String
    let podcastTime: String
 
    }
 
