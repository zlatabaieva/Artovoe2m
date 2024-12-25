//
//  UserProfile.swift
//  Tutorial
//
//  Created by Apple on 26.11.2024.
//

import SwiftUI
struct UserProfile: Identifiable {
var id = UUID()
var firstName: String
var lastName: String
var email: String
var avatar: UIImage?
}
