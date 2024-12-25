//
//  ContentView.swift
//  Tutorial
//
//  Created by Apple on 25.11.2024.
//

import SwiftUI
struct ContentView: View {
    let pages = [
        OnboardingData(image: "Hi"),
        OnboardingData(image: "Func"),
        OnboardingData(image: "Lets")
        ]
    
    @State private var currentPage = 0 // Состояние для отслеживания текущей страницы

    var body: some View {

        NavigationView {
        VStack {
            TabView(selection: $currentPage) {
                ForEach(0..<pages.count) { index in
                    OnboardingView(data: pages[index])
                        .tag(index)
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))

            HStack {
                if currentPage > 0 {
                    Button("Назад"){
                        currentPage -= 1
                    }
                    .foregroundColor(.black)
                }
                Spacer()
                if currentPage < pages.count - 1 {
                       Button("Далее") {
                           currentPage += 1
                       }
                       .foregroundColor(.black)
                   }
                else {
                    NavigationLink(destination: LoginView()) {
                                                Text("Перейти в сервис")
                                                    .foregroundColor(.black)
                                            }
                                        }
                                    }
        }
                   

            .padding()
            .background(Color.ivory)
        }
    }
}
