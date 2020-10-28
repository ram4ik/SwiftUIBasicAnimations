//
//  ContentView.swift
//  SwiftUIBasicAnimations
//
//  Created by Ramill Ibragimov on 28.10.2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Group {
                FirstType()
                SecondType()
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
