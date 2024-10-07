//
//  AboutMeViewModel.swift
//  AboutMe
//
//  Created by admin on 2024/10/7.
//

import Foundation

import SwiftUI

class AboutMeViewModel: ObservableObject {
    @Published var aboutMe: AboutMeModel
    
    init() {
        // 初始化默认数据
        aboutMe = AboutMeModel(
            name: "Xu Yangyang",
            bio: "I am a junior student at the School of Computer Science and Technology, Tongji University. My student ID is 2253729. Male. 20 years old.",
            imageURL: URL(string: "./Resources/MyImage.jpg")!,
            videoURL: URL(string: "https://example.com/your_intro_video.mp4")!
        )
    }
}
