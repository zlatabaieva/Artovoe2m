//
//  AllCardsView.swift
//  Tutorial
//
//  Created by Apple on 26.11.2024.
//
//
import SwiftUI
struct AllCardsView: View {
    @ObservedObject var viewModel: CardViewModel = CardViewModel()

    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.posts, id: \.id) { card in
                    
                   
                    NavigationLink(value: card){
                        HStack {
                            AsyncImage(url: URL(string: card.imageURL) ) { image in
                                
                                image.resizable()
                                    .scaledToFit()
                                
                            } placeholder: {
                                ProgressView()
                            }
                            .frame(width: 100, height: 100)
                            
                            Text(card.title)
                            
                        }
                    }
                    
                   
                }
                
                if viewModel.isLoading {
                    ProgressView()
                } else {
                    Color.clear
                        .onAppear {
                            viewModel.fetchCards()
                        }
                }
              
            }
            .background(Color.ivory)
            .navigationTitle("") // Убираем текст заголовка
                        .toolbar {
                            ToolbarItem(placement: .principal) { // Размещаем элемент в центре
                                Image("Artworks") // Замените "your_image_name" на имя вашего изображения
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 360, height: 64)
                                    .padding(20)
                                   // Установите нужный размер
                            }
                        }
            NavigationLink(destination: ProfileView()) {
                Text("Профиль")
                    .foregroundColor(.black)
            }
            .navigationDestination(for: Card.self) { card in
                
                Text(card.title)
                
            }
            
           
        }
       
    }
}


//    @State private var cards: [Card] = [
//        Card(title: "Artist to Watch in 2012", description: "Здесь была как была manifesta–3 script форумов manifesta павла в", tags: ["графика" ]),
//        Card(title: "Royal Academy of Painting and Sculpture", description: "Манифеста непременно была именно искусства начиная выставке биеннале от и.", tags: ["природа"]),
//        Card(title: "Fullerton-Brighton-Norwell Award", description: "Была не непременно проходит как с художников непременно представлена году.", tags: ["онтология"]),
//        Card(title: "New Orleans, LA", description: "Была manifesta выставке – направление но outline не была значительных только европа альтхамера.", tags: ["сюр"]),
//        Card(title: "New York University", description: "Только выставка в первая непременно и была в manifesta форумов manifesta манифеста биеннале т мизиано как manifesta как быть.", tags: ["керамика"]),
//        Card(title: "New Orleans, LA", description: "Manifesta представлена была перформанс выставка искусства европе европа такого от роттердаме.", tags: ["природа"]),
//        Card(title: "New Orleans, LA", description: "В от восточная именно европейских в является отвергающее manifesta была script.", tags: ["цифра"]),
//        Card(title: "New York University", description: "Но как мизиано отмечает европа е искусства но от должна.", tags: ["графика"]),
//        Card(title: "Royal Academy of Painting and Sculpture", description: "пределена зрелищность была начиная роттердаме первая т значительных такого была такого была форумов 1996.", tags: ["сюр"]),
//        Card(title: "Fullerton-Brighton-Norwell Awar", description: "Script зато значительных на биеннале е перформанс и 1996 перформанс художников роттердаме выставки современного восточная в биеннале зато но западная.", tags: ["природа"]),
//        Card(title: "Chicago, I", description: "От в самого манифеста молодых была роттердаме от зато искусстве манифеста и самого представлена в была перформанс театральность.", tags: ["фотография"]),
//        Card(title: "Royal Academy of Painting and Sculpture", description: "И является отмечает script определена выставки направление театральность искусство в.", tags: ["картина"]),
//        Card(title: "Royal Academy of Painting and Sculpture", description: "И является отмечает script определена выставки направление театральность искусство в.", tags: ["картина"]),
//        Card(title: "China International Art University", description: "Зато начиная года биеннале примером павла только выставка манифеста павла выставки 1996 т такого должна восточная современном.", tags: ["картина"]),
//        Card(title: "New Orleans, LA", description: "Восточная manifesta нонспектакулярное европа года только представлена 1996 биеннале была перформанс перформанс непременно.", tags: ["онтология"]),
//        Card(title: "Chicago, I", description: "Года outline зато как не проходила проходила как выставка отвергающее других зато отвергающее польского значительных только.", tags: ["цифра"]),
//        Card(title: "China International Art University", description: "Году куратор вся с на 1996 на европейских но отмечает manifesta быть европейских искусстве в script должна outline была отвергающее.", tags: ["цифра"]),
//        Card(title: "Art College in New Dehli", description: "Быть как выставка вся на от отличие отмечает в куратор в.", tags: ["природа"]),
//        Card(title: "China International Art University", description: "Роттердаме организовна отмечает является на западная искусство западная от и представлена и.", tags: ["сюр"]),
//        Card(title: "Artist to Watch in 2012", description: "Современного такого выставки и молодых вся года в проходила от направление как с в куратор.", tags: ["онтология"]),
//        Card(title: "New York University", description: "Примером script мизиано куратор года определена мизиано т виктор искусстве в.", tags: ["фотография"]),
//        Card(title: "Chicago, IL", description: "Словении не была отмечает должна manifesta непременно с других определена была мизиано.", tags: ["картина"]),
//    ]
//    
//
//    
//    @State private var showModal = false
//    @State private var selectedTag: String = "All"
//    @State private var searchText: String = ""
//    var filteredCards: [Card] {
//        let filteredByTag = selectedTag == "All"
//        ? cards
//        : cards.filter { $0.tags.contains(selectedTag) }
//
//        if searchText.isEmpty {
//        return filteredByTag
//        } else {
//        return filteredByTag.filter {
//        $0.title.contains(searchText) || $0.description.contains(searchText)
//        }
//
//        }
//    }
//    var body: some View {
//        NavigationView {
//            VStack {
//                Picker("Filter by Tag", selection: $selectedTag) {
//                    Text("All").tag("All")
//                    ForEach(cards.flatMap { $0.tags }, id: \.self) { tag in
//                        Text(tag).tag(tag)
//                    }
//                }
//                .pickerStyle(SegmentedPickerStyle())
//                .padding()
//                TextField ("Search", text: $searchText)
//                .padding()
//                .background (Color(.secondarySystemBackground))
//                .cornerRadius(10)
//                .padding(.horizontal)
//                List {
//                    ForEach(filteredCards) { card in
//                        NavigationLink(destination: CardView(card: card)) {
//                            CardView(card: card)
//                        }
//                    }
//                }
//                .toolbar {
//                                ToolbarItem(placement: .navigationBarTrailing) {
//                                    NavigationLink(destination: ProfileView()) {
//                                        Text("Профиль")
//                                            .foregroundColor(.blue)
//                                }
//                            }
//                        }
//                .navigationBarTitle("Cards")
//                .navigationBarItems (trailing: Button (action: {
//                    showModal.toggle()
//                }) {
//                    Image(systemName: "plus")
//                })
//                .sheet (isPresented: $showModal) {
//                    AddCardView(cards: $cards)
//                }
//            }
//        }
//    }
//    struct AddCardView: View {
//        @Binding var cards: [Card]
//        @State private var title: String = ""
//        @State private var description: String = ""
//        @State private var tags: String = ""
//        var body: some View {
//            NavigationView {
//                Form {
//                    Section (header: Text("Card Information")) {
//                        TextField("Title", text: $title)
//                        TextField("Description", text: $description)
//                        TextField("Tags (comma separated)", text: $tags)
//                    }
//                    
//                    Button("Add Card") {
//                        let tagList = tags.split(separator: ",").map {
//                            String($0).trimmingCharacters (in: .whitespaces)
//                        }
//                        
//                        let newCard = Card(title: title, description: description, tags: tagList)
//                        cards.append(newCard)
//                    }
//                }
//                .navigationBarTitle("Add Card")
//                .navigationBarItems (trailing: Button("Done") {
//                })
//            }
//        }
//    }
//}
//    @StateObject private var viewModel = CardViewModel()
//
//        var body: some View {
//            NavigationView {
//                List(viewModel.cards) { card in
//                    CardView(card: card)
//                }
//                .navigationTitle("Cards")
//                .onAppear {
//                    viewModel.fetchCards()
//                }
//            }
//        }
//    }
//
//    struct AllCardsView_Previews: PreviewProvider {
//        static var previews: some View {
//            AllCardsView()
//        }
//    }
//import SwiftUI
//
//struct AllCardsView: View {
//    let cards: [Card] = loadCards() // Загрузка карт
//
//    var body: some View {
//        NavigationView {
//            List(cards) { card in
//                VStack(alignment: .leading) {
//                    Text(card.title)
//                        .font(.headline)
//                    Text(card.body)
//                        .font(.subheadline)
//                    Text(card.tags.joined(separator: ", "))
//                        .font(.footnote)
//                        .foregroundColor(.gray)
//                }
//            }
//            .navigationTitle("Карты")
//        }
//    }
//}
