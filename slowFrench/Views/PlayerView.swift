//
//  PlayerView.swift
//  slowFrench
//
//  Created by Andrea on 8/12/22.
//

import SwiftUI

struct PlayerView: View {
    @StateObject var audioVM : AudioVM
    @State private var value: Double = 0.0
    var isPreview: Bool = false //music doesn't play automatically on the preview
    @StateObject var audioManager: AudioManager
    @State private var isEditing: Bool = false
    
    //timer publisher (is a method) for slider comes with Combine framework
    let timer = Timer
        .publish(every: 0.5, on: .main, in: .common)
        .autoconnect()
    
    var body: some View {
        GeometryReader { geo in
            ZStack {
                Image("background7")
                    .resizable()
                    .aspectRatio(geo.size,contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)
                
                //Blur effect bc the white button are hard to see
                Rectangle()
                    .background(.thinMaterial)
                    .opacity(0.25)
                    .ignoresSafeArea()
                
                
                
                VStack{
                    Spacer()
                    
                    Text(audioVM.audio.title)
                        .foregroundColor(.white)
                        .bold()
                        .font(.system(size: 24))
                    
                    Spacer()
                      
                    //optional binding
                    if let players = audioManager.player {
                        VStack{
                            //editing is true when u move it and false when it stops
                            Slider(value: $value, in: 0...players.duration){editing in
                                print("editing", editing)
                                isEditing = editing
                                if !editing {players.currentTime = value}
                            }
                                .accentColor(.white)
                            
                            /*Slider(value: $value, in: 0...audioManager.player?.duration)
                             .accentColor(.white)*/
                            
                            HStack{
                                Text(DateComponentsFormatter.positional.string(from: players.currentTime) ?? "0:00")
                                Spacer()
                                Text(DateComponentsFormatter.positional.string(from:players.duration - players.currentTime) ?? "0:00")
                            }
                            .font(.caption)
                            .foregroundColor(.white)
                        }
                       
                        HStack{
                            //repeat
                            //change icon color when isLooping is true
                            let color : Color = audioManager.isLooping ? .teal : .white
                            PlayButton(systemName: "repeat", color: color){audioManager.toggleLoop()} //action closure
                            Spacer()
                            
                            //backward
                            PlayButton(systemName: "gobackward.10"){ players.currentTime -= 10 }
                            //substract 10 from current time
                            Spacer()
                            
                            //playPause
                            PlayButton(systemName: audioManager.isPlaying ? "pause.circle.fill" : "play.circle.fill" , fontSize: 44){
                                audioManager.playPause()
                            }
                            Spacer()
                            
                            //foward
                            PlayButton(systemName: "goforward.10"){ players.currentTime += 10 }
                            Spacer()
                            
                            //stop
                            PlayButton(systemName: "stop.fill"){ audioManager.stop()}
                        }
                    } //optional binding
                } .padding()
            } //zstack
        } //geo
        .onAppear{
            audioManager.startPlayer(track: audioVM.audio.track, isPreview: isPreview)
        }
        //the view can subscribe to the Timer publisher notifications with the .onReceive modifier
        .onReceive(timer) { _ in
            //making sure there's an instancer of player beforehand
            guard let player = audioManager.player, !isEditing else {return}
            value = player.currentTime //updating the value of the slider witht the currentTime
        }
    }
}

struct PlayerView_Previews: PreviewProvider {
    static let audioVM = AudioVM(audio: AudioModel.data)
    static let audioManager = AudioManager()
    static var previews: some View {
        PlayerView(audioVM: audioVM, isPreview: true, audioManager: audioManager)
           // .environmentObject(AudioManager())
    }
}
