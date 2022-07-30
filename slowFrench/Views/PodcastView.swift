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
      
        List(podcasts, id: \.id){ podcast in
            PodcastLabel(podcast: podcast)
        }
    }
}
struct PodcastLabel: View {
    var podcast : Podcast
    var body: some View {
        Text(podcast.podcastName)
    }
}
struct PodcastView_Previews: PreviewProvider {
    static var previews: some View {
        PodcastView(podcasts: [Podcast(id: UUID(), podcastName: "VOUES ETES", podcastTime: "3")])
    }
}

