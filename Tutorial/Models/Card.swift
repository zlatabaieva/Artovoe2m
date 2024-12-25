//
//  Card.swift
//  Tutorial
//
//  Created by Apple on 26.11.2024.
//

//import SwiftUI
//struct Card: Identifiable, Hashable, Codable {
//var id = UUID()
//var title: String
//var body: String
//var tag_list: [String]
//}
import Foundation
// MARK: - CardResponse
struct CardResponse: Codable {
    let cards: [Card]
}

// MARK: - Card
struct Card: Codable, Hashable, Equatable {
    let id: Int
    let title, description: String
    let tags: [String]
    let imageURL: String
    let profile: Profile

    enum CodingKeys: String, CodingKey {
        case id, title, description, tags
        case imageURL = "image_url"
        case profile
    }
}

// MARK: - Profile
struct Profile: Codable, Hashable, Equatable {
    let name: String
}
//import SwiftUI
//
//struct Card: Identifiable, Hashable, Codable { // Добавлено Codable
//    var id: Int // Изменено на Int, чтобы соответствовать вашему JSON
//    var title: String
//    var body: String // Изменено на body для соответствия вашему JSON
//    var tags: [String]
//}
