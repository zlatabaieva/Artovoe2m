//
//  LoginView.swift
//  Tutorial
//
//  Created by Apple on 26.11.2024.
//

import SwiftUI

struct LoginView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        
        VStack {
            
            Image("Vhod")
                .resizable()
                .scaledToFit()
                .padding(40)
            TextField("Имя пользователя", text: $username)
                .padding()
                .background(Color(.white))
                .cornerRadius(5.0)
                .padding(20)
            
            SecureField("Пароль", text: $password)
                .padding()
                .background(Color(.white))
                .cornerRadius(5.0)
                .padding(20)
            
            NavigationLink(destination: AllCardsView()) { // Исправлено: добавлены скобки
                Image("Vhodb")
                    .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 100)
            }
            .padding()
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("ivory"))
                .ignoresSafeArea()
        
    }
       
}

