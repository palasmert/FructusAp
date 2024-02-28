//
//  SourceViewLink.swift
//  Fructus1App
//
//  Created by mert palas on 28.02.2024.
//

import SwiftUI

struct SourceViewLink: View {
    var body: some View {
        GroupBox() {
            HStack{
                Text("Content source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https//wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}

#Preview {
    SourceViewLink()
        .previewLayout(.sizeThatFits)
        .padding()
}
