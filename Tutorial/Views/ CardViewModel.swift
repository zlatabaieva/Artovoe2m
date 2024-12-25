//
//   CardViewModel.swift
//  Tutorial
//
//  Created by Apple on 23.12.2024.
//

import Foundation

class CardViewModel: ObservableObject {
    
    @Published var posts: [Card] = []
    @Published var isLoading = false
    private let service = CardService()
    
    func fetchCards() {
        guard !isLoading else { return }
        
        isLoading = true
        Task {
            let result = await service.fetchCards()
            
            switch result {
            case .success(let char):
                posts.append(contentsOf: char.cards)
                isLoading = false
            case .failure(let error):
                print("Error happened: \(error.localizedDescription)") 
               
            }
        }
    }
}

    
    
    //import SwiftUI
    //import Combine
    //
    //class CardViewModel: ObservableObject {
    //    @Published var cards: [Card] = []
    //    private var cancellables = Set<AnyCancellable>()
    //
    //    func fetchCards() {
    //        guard let url = URL(string:"http://host.docker.internal:3000/api/v1/posts") else { // Замените на ваш URL
    //            print("Invalid URL")
    //            return
    //        }
    //
    //        URLSession.shared.dataTaskPublisher(for: url)
    //            .map { $0.data }
    //            .decode(type: [Card].self, decoder: JSONDecoder())
    //            .receive(on: DispatchQueue.main)
    //            .replaceError(with: [])
    //            .assign(to: &$cards) // Исправлено здесь
    //    }
    //}

