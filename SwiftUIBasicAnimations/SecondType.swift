//
//  SecondType.swift
//  SwiftUIBasicAnimations
//
//  Created by Ramill Ibragimov on 28.10.2020.
//

import SwiftUI

struct SecondType: View {
    @State private var hasOffset = false
    
    var body: some View {
        Button(action: {
            withAnimation(.interpolatingSpring(mass: 1, stiffness: 80, damping: 4, initialVelocity: 0)) {
                hasOffset.toggle()
            }
        }, label: {
            Text("Tap Me")
        })
        .offset(y: hasOffset ? 40 : 0)
    }
}

struct SecondType_Previews: PreviewProvider {
    static var previews: some View {
        SecondType()
    }
}
