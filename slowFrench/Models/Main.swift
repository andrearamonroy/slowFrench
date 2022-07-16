//
//  Main.swift
//  slowFrench
//
//  Created by Andrea on 6/25/22.
//

import SwiftUI

class French: ObservableObject, Codable {
    let sections: [Level]
  
    
    init(){
        do{
            //find .json, ! force unwrapped (if it can't find the file crash the app)
            let url = Bundle.main.url(forResource: "french", withExtension: "json")!
            //load the url
            let data = try Data(contentsOf: url)
            //decode data
            let frenchData = try JSONDecoder().decode(French.self, from: data)
            //if that works, takes it sections and put it on our sections
            sections = frenchData.sections

        } catch {fatalError("french.json is missing or corrupt")}
    }
    
}
