//
//  AudioManager.swift
//  slowFrench
//
//  Created by Andrea on 8/14/22.
//

import Foundation
import AVKit

final class AudioManager: ObservableObject {
    //singleton: Singletons are objects that should only ever be created once, then shared everywhere they need to be used.
   // static let shared = AudioManager()
    
    //AVAudioPlayer is a class (optional class) assigned to the variable player
    var player: AVAudioPlayer?
    
    //isPlaying
    //@published to notifiy the otherlying views of its changes
    @Published private(set) var isPlaying : Bool = false {
        //property observer: gives you a handle on the property's old value
        didSet{
            print("isPlaying", isPlaying)
        }
    }
    
    
    //repeat Button
    @Published private(set) var isLooping : Bool = false
    
    func startPlayer(track: String, isPreview: Bool = false) {
        //guard statements are used to exit early out of a function
        //if the url is not found then exit early and print "resource not found"
        //if it's found we go to the do-catch
        guard let url = Bundle.main.url(forResource: track, withExtension: "mp3") else {
            print("resource not found: \(track)")
            return
        }
        
        //AVAudioPlayer throws (any function that might fail need to be called using try)
        //put it in a do-catch 
        
        do {
           player = try AVAudioPlayer(contentsOf: url)
            
            //this is so the preview don't play the sound while the canvas is on
            if isPreview{
                player?.prepareToPlay()
            } else {
                player?.play()
                isPlaying = true
            }
           
        } catch {
            print("Failed to initialize player", error)
        }
    }
    
    //playPause
    func playPause() {
        guard let player = player else {
            print("Instance of audio player not found")
            return
        }
        if player.isPlaying{
            player.pause()
            isPlaying = false
        } else {
            player.play()
            isPlaying = true
        }
    }
    
    //stop
    func stop(){
        guard let player = player else { return }
        
        if player.isPlaying {
            player.stop()
            isPlaying = false
        }
    }
    
    //repeat
    func toggleLoop(){
        guard let player = player else { return }
        
        //if it's equal to 0 set it to -1 else set it to 0, setting the number of loops to -1 makes it repeat forever
        player.numberOfLoops = player.numberOfLoops == 0 ? -1 : 0
        isLooping = player.numberOfLoops != 0 //as a result isLooping state becomes true is it's not 0
        print("isLooping", isLooping)
        
    }
    
}
