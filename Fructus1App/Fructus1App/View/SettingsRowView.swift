//
//  SettingRowView.swift
//  Fructus1App
//
//  Created by mert palas on 1.03.2024.
//

import SwiftUI

struct SettingRowView: View {
    //MARK: - PROP
    var name: String
    var content: String? = nil
    var linkLabel:String? = nil
    var linkDestination: String? = nil
    //MARK: -  BODY
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack{
                Text(name).foregroundColor(Color.gray)
                Spacer()
                if (content != nil) {
                    Text(content!)
                } else if (linkLabel != nil && linkDestination != nil){
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                }
                else {
                    EmptyView()
                }
            }
        }
    }
}
//MARK: PREVW
#Preview {
    Group {
        SettingRowView(name: "Developer", content: "Mert Palas")
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
        SettingRowView(name: "Github", linkLabel: "SwiftUI",
        linkDestination: "https://github.com/palasmert")
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
            .preferredColorScheme(.dark)
    }
}
