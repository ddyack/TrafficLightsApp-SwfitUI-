//
//  ContentView.swift
//  TrafficLightsApp(SwfitUI)
//
//  Created by ddyack on 15.10.2020.
//

import SwiftUI

struct ContentView: View {
    @State var textButton = "Start"
    
    @State var redOpaacity = 0.3
    @State var yellowOpaacity = 0.3
    @State var greenOpacity = 0.3
    
    @State var counter = 1
    
    var body: some View {
        ZStack {
            Color(.black)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                ColorCicle(color: .red, opacity: redOpaacity)
                ColorCicle(color: .yellow, opacity: yellowOpaacity)
                ColorCicle(color: .green, opacity: greenOpacity)
                Spacer()
                
                
                Button(action: {buttonPressed()}, label: {
                    Text(textButton).foregroundColor(.white)
                })
                .frame(width: 180, height: 60)
                .background(Color(.blue))
                .clipShape(Capsule())
                .overlay(Capsule().stroke(Color.white, lineWidth: 5))

            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension ContentView {
    private func buttonPressed() {
        textButton = "NEXT"
        switch self.counter {
        case 1:
            redOpaacity = 1
            greenOpacity = 0.3
            self.counter += 1
        case 2:
            yellowOpaacity = 1
            redOpaacity = 0.3
            self.counter += 1
        case 3:
            greenOpacity = 1
            yellowOpaacity = 0.3
            self.counter = 1
        default:
            break
        }
    }
}
