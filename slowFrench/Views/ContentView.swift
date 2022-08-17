//
//  ContentView.swift
//  slowFrench
//
//  Created by Andrea on 6/24/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            GeometryReader { geo in
                ZStack {
                    Image("background")
                        .resizable()
                        .aspectRatio(geo.size, contentMode: .fill)
                        .edgesIgnoringSafeArea(.all)
                    
                    
                    VStack (alignment: .center,spacing: 10){
                      Spacer()
                        
                        Text("Slow French")
                            .foregroundColor(.purple)
                            .fontWeight(.heavy)
                            .font(.title)
                        Text("French podcast with subtitles")
                            .bold()
                            .padding(.bottom,30)
                            
                        NavigationLink(destination: LevelView()){
                            Text("Get Started")
                                .bold()
                                .frame(width: 280, height: 50)
                                .background(.blue)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                            
                          
                        }
                        Spacer()
                        Spacer()
                    }
                }
            }
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
           // .environmentObject(AudioManager())
    }
}
    
    
  
    
    
    
    
    
    
    
    
    
    
    
    
    
    
