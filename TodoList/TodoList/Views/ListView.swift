//
//  ListView.swift
//  TodoList
//
//  Created by Tlanetzi Chavez Madero on 26/04/24.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [ItemModel] = [
        ItemModel(title: "This is the first", isCompleted: false),
        ItemModel(title: "This is the second", isCompleted: true),
        ItemModel(title: "Third", isCompleted: false)
    ]
    
    var body: some View {
        List {
            ForEach(items) { item in
                ListRowView(item: item)
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Todo List 📝")
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                NavigationLink("Add", destination: AddView())
            }
            ToolbarItem(placement: .topBarLeading) {
                EditButton()
            }
        }
    }
}

#Preview {
    NavigationStack {
        ListView()
    }
}


