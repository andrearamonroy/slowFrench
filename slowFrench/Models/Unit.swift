//
//  Unit.swift
//  slowFrench
//
//  Created by Andrea on 7/13/22.
//

import SwiftUI

struct Unit: Identifiable, Codable {
    let id: UUID
    let unitName: String
    let podcasts: [Podcast]
}
