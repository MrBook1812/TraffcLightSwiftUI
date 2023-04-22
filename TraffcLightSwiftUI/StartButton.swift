//
//  StartButton.swift
//  TraffcLightSwiftUI
//
//  Created by Kirill Kniga on 22.04.2023.
//

import SwiftUI

struct StartButton: View {
    
    let title: String
    var action: () -> Void
    
    var body: some View {
        Button(action: action){
            Text(title)
                .font(.title)
                .fontWeight(.medium)
                .foregroundColor(.white)
        }
        .frame(width: 160, height: 70)
        .background(Color.blue)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.white, lineWidth: 4)
        )
    }
}

struct StartButton_Previews: PreviewProvider {
    static var previews: some View {
        StartButton(title: "START", action: {})
    }
}
