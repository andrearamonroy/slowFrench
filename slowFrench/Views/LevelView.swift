//
//  LevelList.swift
//  slowFrench
//
//  Created by Andrea on 7/26/22.
//

import SwiftUI

struct LevelView: View {
    //source of truth 
    @StateObject var viewModel = French()
    
    var body: some View {
        GeometryReader { geo in
            ZStack{
                Image("background3")
                    .resizable()
                    .aspectRatio(geo.size, contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    ForEach(viewModel.frenchData, id: \.id){data in
                        NavigationLink(destination: UnitView(units: data.units)) {
                            LevelButton(level: data)}
                        .navigationBarHidden(true)
                    }.padding()
                }
                
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
                        .background(level.theme.mainColor)
                        .cornerRadius(40)
                        .foregroundColor(level.theme.accentColor)
                        .padding(7)
                        .overlay(RoundedRectangle(cornerRadius: 40).stroke(level.theme.mainColor, lineWidth: 5))
           
                     
            }
            
}
    struct LevelView_Previews: PreviewProvider {
        static var previews: some View {
            LevelView()
               // .environmentObject(AudioManager())
        }
    }
    
}
