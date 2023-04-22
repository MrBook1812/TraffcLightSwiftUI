//
//  ContentView.swift
//  TraffcLightSwiftUI
//
//  Created by Kirill Kniga on 22.04.2023.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}

struct ContentView: View {
    
    @State private var buttonTitle = "Start"
    
    @State private var redOpacity = 0.3
    @State private var yellowOpacity = 0.3
    @State private var greenOpacity = 0.3
    
    @State private var currentLight = CurrentLight.red
    
    private func nextColor() {
        let lightIsOn = 1.0
        let lightIsOff = 0.3
        
        switch currentLight {
        case .red:
            currentLight = .yellow
            greenOpacity = lightIsOff
            redOpacity = lightIsOn
        case .yellow:
            currentLight = .green
            redOpacity = lightIsOff
            yellowOpacity = lightIsOn
        case .green:
            currentLight = .red
            greenOpacity = lightIsOn
            yellowOpacity = lightIsOff
        }
    }
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                Light(color: .red, opacity: redOpacity)
                    .padding(.bottom)
                Light(color: .yellow, opacity: yellowOpacity)
                    .padding(.bottom)
                Light(color: .green, opacity: greenOpacity)
                
                Spacer()
                
                StartButton(title: buttonTitle) {
                    if buttonTitle == "Start" {
                        buttonTitle = "Next"
                    }
                    nextColor()
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
