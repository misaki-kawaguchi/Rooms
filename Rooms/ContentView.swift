//
//  ContentView.swift
//  Rooms
//
//  Created by 川口美咲 on 2024/05/14.
//

import SwiftUI

struct ColorSelectorView: View {
    @Binding var selection: Color
    let colors: [Color] = [.red, .orange, .purple, .blue, .yellow, .indigo]
    
    var body: some View {
        HStack {
            ForEach(colors, id: \.self) { color in
                Circle()
                    .fill(color)
                    .overlay {
                        selection == color ? Circle().stroke(Color.black, lineWidth: 2) : nil
                    }
                    .onTapGesture {
                        selection = color
                    }
            }
        }
    }
}

struct ContentView: View {
    @State private var name: String = ""
    @State private var color: Color = .red
    
    var body: some View {
        VStack {
            TextField("Name", text: $name)
                .textFieldStyle(.roundedBorder)
            
            ColorSelectorView(selection: $color)
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Save")
                    .frame(maxWidth: .infinity)
            })
            .buttonStyle(.borderedProminent)
            .padding(.top, 20)
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
