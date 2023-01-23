//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Andrey Studenkov on 17.01.2023.
//

import SwiftUI

@main
struct ToDoListApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ListView()
            }
//            .navigationSplitViewStyle(StackNavigationViewStyle())
            .environmentObject(listViewModel)
        }
    }
}
