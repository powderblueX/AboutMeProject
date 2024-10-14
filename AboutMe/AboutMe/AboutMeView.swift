//
//  AboutMeView.swift
//  AboutMe
//
//  Created by admin on 2024/10/7.
//

import SwiftUI
import AVKit

struct AboutMeView: View {
    @ObservedObject var viewModel: AboutMeViewModel
    
    var body: some View {
        ScrollView {
            Text(viewModel.aboutMe.name)
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            
            Text(viewModel.aboutMe.bio)
                .font(.title)
                .fontWeight(.bold)
                .padding()
            
            Image(viewModel.aboutMe.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 500, height: 400)
                .padding()
            
            VideoPlayer(player: AVPlayer(url: viewModel.aboutMe.videoURL))
                .frame(width: 1000, height: 800)
                .padding()
            
            Spacer()
        }
        .navigationTitle("About Me")
    }
}

#Preview {
    AboutMeView(viewModel: AboutMeViewModel())
}

