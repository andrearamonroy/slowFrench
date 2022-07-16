//
//  Podcast.swift
//  slowFrench
//
//  Created by Andrea on 7/13/22.
//

import SwiftUI

struct Podcast: Identifiable, Codable {
    let id: UUID
    let podcastName: String
    let podcastTime: String
    
    static let example = Podcast(id: UUID(), podcastName: "example podcast name", podcastTime: "example podcast time")
    
}
