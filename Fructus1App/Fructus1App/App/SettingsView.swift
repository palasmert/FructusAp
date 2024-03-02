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
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
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
                    
                    //MARK: - SEC2
                    
                    GroupBox(
                        label: SettingLabelView(labelText: "Customization", labelImage: "paintbrush")
                    ){
                        Divider().padding(.vertical,4)
                            Text("If you wish you can restart on the application by toggle the switch in this box. That way it starts the onboarding process and you will se the welcome screen again")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                     
                        Toggle(isOn: $isOnboarding) {
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.secondary)
                            }
                            
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 9, style: .continuous))
                        )
                    }
                    
                    
                    
                    
                    
                 
                    
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
