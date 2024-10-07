//
//  AboutMeView.swift
//  AboutMe
//
//  Created by admin on 2024/10/7.
//

import SwiftUI
import AVKit  // 需要引入 AVKit 以便使用 VideoPlayer

struct AboutMeView: View {
    @ObservedObject var viewModel: AboutMeViewModel
    
    var body: some View {
        VStack {
            Text(viewModel.aboutMe.name)
                .font(.largeTitle)
                .padding()
            
            Text(viewModel.aboutMe.bio)
                .font(.body)
                .padding()
            
            Image(viewModel.aboutMe.imageURL)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
                .padding()
            
            VideoPlayer(player: AVPlayer(url: viewModel.aboutMe.videoURL))
                .frame(height: 300)
                .padding()
            
            Spacer()
        }
        .navigationTitle("About Me")
    }
}



