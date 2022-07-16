//
//  LevelsView.swift
//  slowFrench
//
//  Created by Andrea on 6/25/22.
//

import SwiftUI

struct LevelsView: View {
    @StateObject var french = French()
    
    //  @EnvironmentObject var french : French
    
    var body: some View {
        NavigationView {
            GeometryReader {
                geo in
                
                ZStack {
                    Image("background")
                        .resizable()
                        .aspectRatio(geo.size, contentMode: .fill)
                        .edgesIgnoringSafeArea(.all)
                    Spacer()
                    
                    NavigationLink(destination:UnitView()){
                        VStack{
                            ForEach(french.sections){ section in
                                Text(section.name)
                                // LevelButton(levels1: level2)
                            }.padding()
                            
                            
                            
                        }
                    }
                    
                }
                Spacer()
                
            }
        }
    }



struct LevelsView_Previews: PreviewProvider {
    static var previews: some View {
        LevelsView()
            //.environmentObject(French())
           // .environmentObject(French(level: "Debutant", unit: [Unit(name: "vous estes", podcast: [Unit.Podcast(name: "vous etes", time: "3:30")])]))
        
    }
}






    /*


struct LevelButton: View {
    var french : Level
    var body: some View {
        
      //  NavigationLink(destination: UnitView()){
            
            //Button(action: {}, label: {
            Text(french.name) //using var to access a property in a struct
                    .fontWeight(.bold)
                    .font(.title)
                    .padding()
                    .background(.purple)
                    .cornerRadius(40)
                    .foregroundColor(.white)
                    .padding(7)
                    .overlay(RoundedRectangle(cornerRadius: 40).stroke(.purple, lineWidth: 5))
            //})
                 
        }
        
    }
//}

    
    
    /*
     NavigationLink (destination: SwiftUIView()) {
         VStack{
             ForEach(levelUnit){ level2 in
                 LevelButton(levels1: level2)
             }
     */

/*
Button (action: {}) {
    Text("Débutant")
        .fontWeight(.bold)
        .font(.title)
        .padding()
        .background()
        .cornerRadius(40)
        .foregroundColor(.black)
        .padding(10)
        .overlay(RoundedRectangle(cornerRadius: 40).stroke(.white, lineWidth: 5))
        
}
 /**/*/

*/
}




