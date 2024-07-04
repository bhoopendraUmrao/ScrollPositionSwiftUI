//
//  ContentView.swift
//  ScrollPositionSwiftUI
//
//  Created by Bhoopendra Umrao on 09/06/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var contentOffset: CGFloat = 0

    var body: some View {
        VStack {
            Text("Content Offset: \(contentOffset)")
                .padding()

            ObservableScrollView(contentOffset: $contentOffset) {
                VStack {
                    ForEach(0..<50) { i in
                        Text("Item \(i)")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.blue.opacity(0.3))
                            .cornerRadius(8)
                            .padding(.horizontal)
                            .padding(.vertical, 4)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
