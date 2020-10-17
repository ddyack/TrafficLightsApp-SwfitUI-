//
//  CountButton.swift
//  TrafficLightsApp(SwfitUI)
//
//  Created by ddyack on 17.10.2020.
//

import SwiftUI

struct CountButton: View {
    @State var title = "Start"
    @State var completion: (() -> Void)!
    
    var body: some View {
        Button(action: completion, label: {
            Text(title).foregroundColor(.white)
        })
        .frame(width: 180, height: 60)
        .background(Color(.blue))
        .clipShape(Capsule())
        .overlay(Capsule().stroke(Color.white, lineWidth: 5))
    }
}

struct CountButton_Previews: PreviewProvider {
    static var previews: some View {
        CountButton()
    }
}
