//
//  OnboardingView.swift
//  Tutorial
//
//  Created by Apple on 25.11.2024.
//

import SwiftUI
struct OnboardingView: View {
    var data: OnboardingData
    
    var body: some View {
        VStack {
            Image(data.image)
                .resizable()
                .scaledToFill() // Масштабируем изображение, чтобы заполнить пространство
                .aspectRatio(contentMode: .fill) // Сохраняем пропорции изображения
                .clipped()
                .frame(maxWidth: .infinity, maxHeight: 300)
        }
    }
}
