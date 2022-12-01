//
//  ContentView.swift
//  BrokenTextVibrancyExample
//
//  Created by Peter Werry on 2022-11-01.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.colorScheme) var colorScheme
    @State var showPopover = false
    
    var body: some View {
        ZStack {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Button {
                    showPopover.toggle()
                } label: {
                    Text("Hello, world!")
                }
                .buttonStyle(.plain)
            }
            .padding()
            .background(colorScheme == .dark ? Color.black : Color.white)
            .popover(isPresented: $showPopover, arrowEdge: .bottom) {
                Text("Broken Text Vibrancy")
                    .foregroundColor(.secondary)
                    .padding()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(colorScheme == .dark ? Color.white : Color.black)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
