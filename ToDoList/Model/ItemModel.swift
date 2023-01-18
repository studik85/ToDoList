//
//  ItemModel.swift
//  ToDoList
//
//  Created by Andrey Studenkov on 17.01.2023.
//

import Foundation

struct ItemModel: Identifiable {
    let id = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
