//
//  AudioVM.swift
//  slowFrench
//
//  Created by Andrea on 8/14/22.
//

import Foundation
//By declaring it a final class we disable inheretance.
//Therefore, no subclasses allowed.

final class AudioVM :ObservableObject {
    //private(set) allows reading but no writing
    private(set) var audio: AudioModel
    
    init(audio: AudioModel){
        self.audio = audio
    }
}
