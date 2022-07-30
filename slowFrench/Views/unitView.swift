//
//  UnitView.swift
//  slowFrench
//
//  Created by Andrea on 7/16/22.
//

import SwiftUI

struct UnitView: View {
    var level : Level

    var body: some View {
        NavigationView {
            List(level.units, id: \.id){unit in
                NavigationLink(destination:PodcastView(podcasts: unit.podcasts)){
                    UnitLabel(unit: unit)}
            }
}
}

    struct UnitLabel: View {
        var unit: Unit
        var body: some View {
            Text(unit.unitName)
        }
    }
    

struct UnitView_Previews: PreviewProvider {
    static var previews: some View {
        UnitView(level: frenchData[0])
          //  .environmentObject(French())
    }
}
}
