//
//  AddView.swift
//  TodoList
//
//  Created by Thiago Ogawa on 13/07/25.
//

import SwiftUI

struct AddView: View {
    
    @State var textFieldtext: String = ""
    
    var body: some View {
        VStack {
            ScrollView {
                TextField("Type something here...", text: $textFieldtext)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(.gray).opacity(0.2))
                    .cornerRadius(10)
                
                Button {
                    
                } label: {
                    Text("Save".uppercased())
                        .foregroundStyle(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                }

            }
            .padding(14)
        }
        .navigationTitle("Add an Item 🖋️")
    }
}

#Preview {
    NavigationView {
        AddView()
    }
}
