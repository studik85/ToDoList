//
//  ListView.swift
//  ToDoList
//
//  Created by Andrey Studenkov on 17.01.2023.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [ItemModel] = [
        ItemModel(title: "Buy Cheese", isCompleted: false)
    ]
    
    var body: some View {
        List{
            ForEach(items) { item in
               
                ListRowView(item: item)
                
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


