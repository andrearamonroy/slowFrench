//
//  PlayButton.swift
//  slowFrench
//
//  Created by Andrea on 8/14/22.
//

import SwiftUI

struct PlayButton: View {
    var systemName: String = "play"
    var fontSize: CGFloat = 24
    var color: Color = .white
    var action: () -> Void
    //function type that returns void
    var body: some View {
        
        Button{ action() } label: {
            Image(systemName: systemName)
                .font(.system(size: fontSize))
                .foregroundColor(color)
        }
        
    }
}

struct PlayButton_Previews: PreviewProvider {
    static var previews: some View {
        PlayButton(action: {})
            .preferredColorScheme(.dark)
    }
}
