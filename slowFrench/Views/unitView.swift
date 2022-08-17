//
//  UnitView.swift
//  slowFrench
//
//  Created by Andrea on 7/16/22.
//

import SwiftUI


struct UnitView: View {
    let units : [Unit]
    
    var body: some View {
        GeometryReader { geo in
            ZStack {
                Image("background7")
                    .resizable()
                    .aspectRatio(geo.size, contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)
                
                VStack{
                    ForEach(units) {unit in
                        NavigationLink(destination:PodcastView(podcasts: unit.podcasts)){
                            UnitLabel(unit: unit)}
                    }
                }//vstack
            } //zstack
        } //geo
        .navigationTitle("Units")
     
    }//view

    struct UnitLabel: View {
        var unit: Unit
        var body: some View {
            Text(unit.unitName)
                .bold()
                .frame(width: 280, height: 50)
                .background(unit.theme.mainColor)
                .foregroundColor(.white)
                .cornerRadius(10)
        }
    }
    

    struct UnitView_Previews: PreviewProvider {
        static var previews: some View {
            UnitView(units: [Unit(id: "1", theme: Theme.purple, unitName: "1", podcasts: [Podcast(id: "1", theme: .purple, podcastName: "1", podcastTime: "1")])])
                // .environmentObject(AudioManager())
        }
    }
}
