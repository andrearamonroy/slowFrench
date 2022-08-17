//
//  PodcastView.swift
//  slowFrench
//
//  Created by Andrea on 7/26/22.
//

import SwiftUI
struct PodcastView: View {
    var podcasts: [Podcast]
    var body: some View {
        GeometryReader{ geo in
            ZStack{
                Image("background7")
                    .resizable()
                    .aspectRatio(geo.size, contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)
                
                VStack{
                    ForEach(podcasts, id: \.id){ podcast in
                        NavigationLink(destination: PlayerView(audioVM: AudioVM(audio: AudioModel.data), audioManager: AudioManager())){
                            PodcastLabel(podcast: podcast)}}
                } //vstack
            }//zstach
        } //geo
        .navigationTitle("Podcasts")
    }
}
struct PodcastLabel: View {
    var podcast : Podcast
 
    var body: some View {
        Text(podcast.podcastName)
            .bold()
            .frame(width: 280, height: 50)
            .background(podcast.theme.mainColor)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}
struct PodcastView_Previews: PreviewProvider {
    static var previews: some View {
        PodcastView(podcasts: [Podcast(id: "a", theme: .purple, podcastName: "VOUES ETES", podcastTime: "3")])
           // .environmentObject(AudioManager())
    }
}

