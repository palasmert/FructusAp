//
//  SettingLabelView.swift
//  Fructus1App
//
//  Created by mert palas on 1.03.2024.
//

import SwiftUI

struct SettingLabelView: View {
    //MARK: - PROP
    var labelText: String
    var labelImage: String
    //MARK: - BODY
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}
//MARK: - PREVW
#Preview {
    SettingLabelView(labelText: "Fructus", labelImage: "info.circle")
        .previewLayout(.sizeThatFits)
        .padding()
}
