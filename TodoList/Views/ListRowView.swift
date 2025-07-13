//
//  ListRowView.swift
//  TodoList
//
//  Created by Thiago Ogawa on 13/07/25.
//
import SwiftUI

struct ListRowView: View {
    let item: ItemModel
    
    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundStyle(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 8)
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ListRowView(item: ItemModel(title: "First item!", isCompleted: false))
            ListRowView(item: ItemModel(title: "Completed item!", isCompleted: true))
        }
        .previewLayout(.sizeThatFits)
    }
}
