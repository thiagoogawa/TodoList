//
//  ItemModel.swift
//  TodoList
//
//  Created by Thiago Ogawa on 13/07/25.
//
import Foundation

struct ItemModel: Identifiable{
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
