//
//  Level.swift
//  slowFrench
//
//  Created by Andrea on 7/13/22.
//

import Foundation

struct Level: Identifiable, Codable{
    let id: String
    let name: String
    let theme: Theme
    let units: [Unit]
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case units
        case theme
    }
}

//unit
struct Unit: Identifiable, Codable{
    let id: String
    let theme: Theme
    let unitName: String
    let podcasts: [Podcast]
    
    enum UnitKeys: String, CodingKey{
        case id
        case theme
        case unitName
        case podcasts
    }
}


//podcast
struct Podcast: Identifiable, Codable{
    let id: String
    let theme: Theme
    let podcastName: String
    let podcastTime: String
    
    enum PodcastKeys: String, CodingKey{
        case id
        case theme
        case podcastName
        case podcastTime
    }
 }
 
