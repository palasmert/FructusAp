//
//  SettingsView.swift
//  Fructus1App
//
//  Created by mert palas on 1.03.2024.
//

import SwiftUI

struct SettingsView: View {
    //MAR: - PROP
    @Environment(\.presentationMode) var presentationMode
    //MARK: - BODYY

    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing: 20){
                    //MARK: - SECT 1
                    
                    GroupBox(
                        label:
                            SettingLabelView(labelText: "Fructus", labelImage: "info.circle")
                           
                    ) {
                        Divider().padding(.vertical, 3)
                        
                        
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80,height: 80)
                                .cornerRadius(10)
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholosterol. Fruits are soruces of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        }
                    }
                    
                    //MARK: - SECT2
                    //MARK: SEC3
                    
                    GroupBox(
                        label: SettingLabelView(labelText: "Application", labelImage: "apps.iphone")
                    ) {
                       
                     
                        SettingRowView(name: "Developer" , content: "Mert PALAS")
                        SettingRowView(name: "Designer" , content: "Robert Petras")
                        SettingRowView(name: "Compatibility" , content: "iOS 17")
                        SettingRowView(name: "Github", linkLabel: "MyProfile",
                        linkDestination: "github.com/palasmert")
                        
                        
                        
                        
                        
                    }//: BOX
                    
                    
                    
                    
                }//VSTACK
                .navigationBarTitle(Text("Settings"),displayMode: .large)
                .navigationBarItems(
                trailing:
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        Image(systemName: "xmark")
                    }
                )
                .padding()
            }//SCROLL
        }//: NAV
    }
}

//MARK: PREVW
#Preview {
    SettingsView()
}
