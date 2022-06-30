//
//  LevelsView.swift
//  slowFrench
//
//  Created by Andrea on 6/25/22.
//

import SwiftUI

struct LevelsView: View {
    
    
    var body: some View {
        
        GeometryReader {
            geo in
            
            ZStack {
                Image("background")
                    .resizable()
                    .aspectRatio(geo.size, contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    ForEach(levels){ level in LevelButton(levels1: level)}
                        .padding()
                }.offset(y: -60)
            }
        }
    }
}



struct LevelsView_Previews: PreviewProvider {
    static var previews: some View {
        LevelsView()
    }
}



struct LevelButton: View {
    var levels1: Level
    var body: some View {
        
       // Button(action: {}) {
            Text(levels1.level) //using var to access a property in a struct
                .fontWeight(.bold)
                .font(.title)
                .padding()
                .background(.purple)
                .cornerRadius(40)
                .foregroundColor(.white)
                .padding(7)
                .overlay(RoundedRectangle(cornerRadius: 40).stroke(.purple, lineWidth: 5))
        }//
        
    }
//}


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

