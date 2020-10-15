//
//  ColorCicle.swift
//  TrafficLightsApp(SwfitUI)
//
//  Created by ddyack on 15.10.2020.
//

import SwiftUI

struct ColorCicle: View {
    let color: UIColor
    let opacity: Double
    
    var body: some View {
        Color(color)
            .frame(width: 150, height: 150)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 5))
            .opacity(opacity)
            .padding()
        
    }
}

struct ColorCicle_Previews: PreviewProvider {
    static var previews: some View {
        ColorCicle(color: .red, opacity: 0.3)
    }
}
