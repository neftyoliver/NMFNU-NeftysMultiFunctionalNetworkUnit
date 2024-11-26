//
//  ContentView.swift
//  NeftysMFNU
//
//  Created by 송현석 on 11/26/24.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        HStack(alignment: .top) {
            NavigationView {
                List { //The menus for left side.
                }
            }
            .opacity(0.5)
            .blur(radius: 0.5)
        }
        .frame(minWidth: 240, maxWidth: .infinity, minHeight: 80, maxHeight: .infinity)
    }
}

#Preview {
    ContentView()
}
