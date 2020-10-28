//
//  ThirdType.swift
//  SwiftUIBasicAnimations
//
//  Created by Ramill Ibragimov on 28.10.2020.
//

import SwiftUI

struct ThirdType: View {
    @Namespace private var animation
    @State private var isFlipped = false
    
    var body: some View {
        HStack {
            if isFlipped {
                Circle()
                    .fill(Color.green)
                    .frame(width: 30, height: 30)
                    .matchedGeometryEffect(id: "Shape", in: animation)
                Text("Tap Me")
                    .matchedGeometryEffect(id: "Text", in: animation)
            } else {
                Text("Tap Me")
                    .matchedGeometryEffect(id: "Text", in: animation)
                Circle()
                    .fill(Color.green)
                    .frame(width: 30, height: 30)
                    .matchedGeometryEffect(id: "Shape", in: animation)
            }
        }.onTapGesture(perform: {
            withAnimation {
                isFlipped.toggle()
            }
        })
    }
}

struct ThirdType_Previews: PreviewProvider {
    static var previews: some View {
        ThirdType()
    }
}
