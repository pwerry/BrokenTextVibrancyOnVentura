//
//  ContentView.swift
//  BrokenTextVibrancyExample
//
//  Created by Peter Werry on 2022-11-01.
//

import SwiftUI

struct ContentView: View {
    @State var showPopover = false
    
    var body: some View {
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
        .popover(isPresented: $showPopover, arrowEdge: .bottom) {
            Text("Broken Text Vibrancy")
                .foregroundColor(.secondary)
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
