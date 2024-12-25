//
//  CardService.swift
//  Tutorial
//
//  Created by Apple on 23.12.2024.
//

//import Foundation
//enum CardError: Error {
//    case urlError
//}
//
//class CardService {
//    
//    func fetchCards() async -> Result<Card, Error> {
//        guard let url = URL(string: "http://host.docker.internal:3000/api/v1/posts") else {
//            return .failure(CardError.urlError)
//        }
//        
//        do {
//            let (data, response) = try await URLSession.shared.data(from: url)
//            let decoded = try JSONDecoder().decode(Card.self, from: data)
//            print(decoded.title) 
//            return .success(decoded)
//        } catch {
//            return .failure(error)
//        }
//    }
//}
import Foundation

enum CardError: Error {
    case urlError
}

class CardService {
    
    func fetchCards() async -> Result<CardResponse, Error> {
        guard let url = URL(string: "http://localhost:3000/api/v1/posts") else {
            return .failure(CardError.urlError)
        }
        
        do {
            let (data, response) = try await URLSession.shared.data(from: url)
            let decoded = try JSONDecoder().decode(CardResponse.self, from: data)
            print(decoded.cards.first?.title)
            return .success(decoded)
        } catch {
            return .failure(error)
        }
       
        
        
    }
}
