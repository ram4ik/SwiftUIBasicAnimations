//
//  FirstType.swift
//  SwiftUIBasicAnimations
//
//  Created by Ramill Ibragimov on 28.10.2020.
//

import SwiftUI

struct FirstType: View {
    @State private var isHidden = false
    
    var body: some View {
        Button(action: {
            isHidden = true
        }, label: {
            Text("Tap Me")
        })
        .opacity(isHidden ? 0 : 1)
        .animation(.easeInOut(duration: 2))
    }
}

struct FirstType_Previews: PreviewProvider {
    static var previews: some View {
        FirstType()
    }
}
