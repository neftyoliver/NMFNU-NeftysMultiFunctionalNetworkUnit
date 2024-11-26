//
//  ContentView.swift
//  NeftysMFNU
//
//  Created by 송현석 on 11/26/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hosting Network!")
            
            
        }
        .padding()
        .frame(minWidth: 240, maxWidth: .infinity, minHeight: 120, maxHeight: .infinity)
    }
}

#Preview {
    ContentView()
}
