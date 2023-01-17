//
//  ListView.swift
//  ToDoList
//
//  Created by Andrey Studenkov on 17.01.2023.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [String] = [
        "This is the 1 tittle of my ToDo list.",
        "This is the 2 tittle of my ToDo list.",
        "This is the 3 tittle of my ToDo list."
    ]
    
    var body: some View {
        List{
            ForEach(items, id: \.self) { item in
                ListRowView(title: item)
                
            }
        }
        .listStyle(.plain)
        .navigationTitle("ToDo List")
        .navigationBarItems(
            leading: EditButton(),
            trailing: NavigationLink("Add", destination: AddView()))
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ListView()
        }
        
    }
}


