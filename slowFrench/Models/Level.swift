//
//  Level.swift
//  slowFrench
//
//  Created by Andrea on 7/13/22.
//

import SwiftUI

struct Level: Identifiable, Codable {
    let id: UUID
    let name: String
    let units: [Unit]
}
