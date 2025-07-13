//
//  TodoListApp.swift
//  TodoList
//
//  Created by Thiago Ogawa on 13/07/25.
//

import SwiftUI

/*
 MVVM architecture
 
 Model - data point
 View - UI
 ViewModel - manages model for view
 
 */

@main
struct TodoListApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
