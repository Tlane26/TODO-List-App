//
//  ItemModel.swift
//  TodoList
//
//  Created by Tlanetzi Chavez Madero on 27/04/24.
//

import Foundation

// Immutable struct
struct ItemModel: Identifiable {
    let id: String
    let title: String
    let isCompleted: Bool
    
    init(id: String = UUID().uuidString, title: String, isCompleted: Bool) {
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }
    
    // we can only update from here, anywhere else
    func updateCompletion() -> ItemModel {
        return ItemModel(id: id, title: title, isCompleted: !isCompleted)
    }
}
