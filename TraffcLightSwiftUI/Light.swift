//
//  Light.swift
//  TraffcLightSwiftUI
//
//  Created by Kirill Kniga on 22.04.2023.
//

import SwiftUI

struct Light: View {
    
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .frame(width: 120, height: 120)
            .foregroundColor(color)
            .opacity(opacity)
            .overlay(Circle().stroke(Color.white,lineWidth: 4))
    }
}

struct Light_Previews: PreviewProvider {
    static var previews: some View {
        Light(color: .green, opacity: 0.2)
    }
}
