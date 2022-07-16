//
//  ContentView.swift
//  slowFrench
//
//  Created by Andrea on 6/24/22.
//

import SwiftUI
struct ContentView: View {
   @State private var selection : String? = nil
   
    
    var body: some View {
        NavigationView {
            GeometryReader { geo in
                ZStack {
                    Image("background")
                        .resizable()
                        .aspectRatio(geo.size, contentMode: .fill)
                        .edgesIgnoringSafeArea(.all)
                    
                    VStack (spacing: 10){
                        Spacer()
                        Text("Slow French")
                            .foregroundColor(.purple)
                            .fontWeight(.heavy)
                            .font(.title)
                        Text("French podcast with subtitles")
                            .bold()
                        Spacer()
                        NavigationLink(destination: LevelsView(), tag: "second", selection: $selection) {}
                        NavigationLink(destination: Text("Third View"), tag: "third", selection: $selection) {}
                        
                        Button("Get Started"){
                            self.selection = "second"
                        }
                        .frame(width: 280, height: 50)
                        .background(.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        
                        Button("Already have an account"){
                            self.selection = "third"
                        }
                        .frame(width: 280, height: 50)
                        .background(.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        
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
            .environmentObject(French())
    }
}
    
    
    /*
     label: {Text("Get started")
             .bold()
             .frame(width: 280, height: 50)
             .background(.blue)
             .foregroundColor(.white)
             .cornerRadius(10)
     */
    
    
    
    
    
    
    
    
    
    
    
    
    
    

/*
 GeometryReader { geo in
     ZStack {
         Image("background")
             .resizable()
             .aspectRatio(geo.size, contentMode: .fill)
             //.frame(width: geo.size.width * 1.0, height: geo.size.height * 1.0, alignment: .center)
             .edgesIgnoringSafeArea(.all)
         
         VStack {
             Spacer()
             Text("Slow French")
                 .font(.largeTitle.bold())
                 .foregroundColor(.purple)
                 .padding(30)
             
             Text("French Podcast with subtitles")
                 .font(.body)
             
             Spacer()
             
             Button(action:{}) {Text("Get Started")
                 .foregroundColor(.white)
                 .bold()
                 .background(
                     RoundedRectangle(cornerRadius: 10)
                         .frame(width: 250, height: 40)
                 )
             } .padding(10)
             Button(action: {}) {Text("Already have an account")
                 .foregroundColor(.white)
                 .bold()
                 .background(
                     RoundedRectangle(cornerRadius: 10)
                         .frame(width: 250, height: 40)
                     )
             }.padding(10)
             
             Spacer()
             
             
         }
         
         
     }
 }
}
 */
