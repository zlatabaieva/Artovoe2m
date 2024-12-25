//
//  CardView.swift
//  Tutorial
//
//  Created by Apple on 26.11.2024.
//

//import SwiftUI
//struct CardView: View {
//var card: Card
//var body: some View {
//VStack(alignment: .leading) {
//Text (card.title)
//.font(.headline)
////Text (card.description)
//.font(.subheadline)
//.lineLimit(2)
//.padding (.top, 5)
//    HStack {
//        ForEach(card.tags, id: \.self) { tag in
//            Text(tag)
//                .font(.caption)
//                .padding(5)
//                .background(Color.gray.opacity(0.2))
//                .cornerRadius(5)
//        }
//    }
//    .padding(.top, 5)
//    }
//    .padding()
//    .background(Color.white)
//    .cornerRadius(10)
//    .shadow(radius: 5)
//    }
//    }
//import SwiftUI
//
//struct CardView: View {
//    var card: Card
//    
//    var body: some View {
//        VStack(alignment: .leading) {
//            Text(card.title)
//                .font(.headline)
//            Text(card.body)
//                .font(.subheadline)
//                .lineLimit(2)
//                .padding(.top, 5)
//            
////            HStack {
////                ForEach(Array(card.tag_list.enumerated()), id: .element) { tag in // Исправлено на id: .self
////                    Text(tag)
////                        .font(.caption)
////                        .padding(5)
////                        .background(Color.gray.opacity(0.2))
////                        .cornerRadius(5)
////                }
////            }
//            .padding(.top, 5)
//        }
//        .padding()
//        .background(Color.white)
//        .cornerRadius(10)
//        .shadow(radius: 5)
//    }
//}
//
//struct CardView_Previews: PreviewProvider {
//    static var previews: some View {
//        CardView(card: Card(title: "Sample Title", body: "Sample Description", tag_list: ["tag1", "tag2"]))
//    }
//}


//import SwiftUI
//
//struct CardView: View {
//    var card: Card
//
//    var body: some View {
//        VStack(alignment: .leading) {
//            Text(card.title)
//                .font(.headline)
//                .padding(.top, 5)
//
//            Text(card.body) // Исправлено на card.body
//                .font(.subheadline)
//                .lineLimit(2)
//                .padding(.top, 5)
//
//            HStack {
//                ForEach(card.tags, id: .self) { tag in
//                    Text(tag)
//                        .font(.caption)
//                        .padding(5)
//                        .background(Color.gray.opacity(0.2))
//                        .cornerRadius(5)
//                }
//            }
//            .padding(.top, 5)
//        }
//        .padding()
//        .background(Color.white)
//        .cornerRadius(10)
//        .shadow(radius: 5)
//    }
//}
