//
//  TodoListApp.swift
//  TodoList
//
//  Created by Tlanetzi Chavez Madero on 26/04/24.
//

import SwiftUI

/*
 
 MVVM Architecture
 
 Model - data point
 View - UI
 ViewModel - manages Models for View
 
 */

@main
struct TodoListApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack{
                ListView()
            }
        }
    }
}
