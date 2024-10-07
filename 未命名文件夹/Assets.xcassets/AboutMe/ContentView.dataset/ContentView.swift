//
//  ContentView.swift
//  AboutMe
//
//  Created by admin on 2024/10/7.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                // 原有的内容，比如 Globe, Orbit, Solar 等
                NavigationLink(destination: AboutMeView(viewModel: AboutMeViewModel())) {
                    Text("About Me")
                        .font(.title)
                        .padding()
                }
                Spacer()
            }
            .navigationTitle("Hello World")
        }
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
