//
//  unitView.swift
//  slowFrench
//
//  Created by Andrea on 7/6/22.
//

import SwiftUI

struct unitView: View {
    @EnvironmentObject var french : French
    
    var body: some View {
       
      
        
    }
}

struct unitView_Previews: PreviewProvider {
    static var previews: some View {
        unitView(, body: <#some View#>)
            .environmentObject(French(French(level: "Debutant", unit: [Unit(name: "vous estes", podcast: [Unit.Podcast(name: "vous etes", time: "3:30")])]))
    }
}
