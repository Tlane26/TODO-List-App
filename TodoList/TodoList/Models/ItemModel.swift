//
//  ItemModel.swift
//  TodoList
//
//  Created by Tlanetzi Chavez Madero on 27/04/24.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
