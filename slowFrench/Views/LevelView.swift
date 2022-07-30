//
//  LevelList.swift
//  slowFrench
//
//  Created by Andrea on 7/26/22.
//

import SwiftUI

struct LevelView: View {
    var body: some View {
        
        VStack {
                ForEach(frenchData, id: \.id){data in
                    NavigationLink(destination: UnitView(level: data)) {
                        LevelButton(level: data)}
                }.padding()
            }
        }
      
    }


struct LevelButton: View {
        var level : Level
        var body: some View {
            
                Text(level.name) //using var to access a property in a struct
                        .fontWeight(.bold)
                        .font(.title)
                        .padding()
                        .background(.purple)
                        .cornerRadius(40)
                        .foregroundColor(.white)
                        .padding(7)
                        .overlay(RoundedRectangle(cornerRadius: 40).stroke(.purple, lineWidth: 5))
           
                     
            }
            
}
struct LevelView_Previews: PreviewProvider {
    static var previews: some View {
        LevelView()
    }
}
