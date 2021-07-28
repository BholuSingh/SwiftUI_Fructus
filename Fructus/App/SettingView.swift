//
//  SettingView.swift
//  Fructus
//
//  Created by Rajan Singh on 18/05/21.
//

import SwiftUI

struct SettingView: View {
    
    @Environment(\.presentationMode) var presentationModel
    let applicationKey = ["Developer" , "Designer" , "Compatibility" , "website", "Twitter", "SwiftUI", "App Version"]
    let applicationValue = ["Rajan Singh","Neha Singh","iOS 14", "www.google.com","@NehaRajan","2.0", "1.1"]
    
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    // MARK:- Section 1
                    GroupBox(
                        label:
                            SettingLabelView(labelText: "Fructus", labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        HStack(spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                                
                            VStack(alignment: .leading) {
                                Text("consist of 14% carbohydrates, 0.7% protein, 0.3% fat and 84% water (table). They contain only negligible amounts of micronutrients, with moderate levels (relative to respective Daily Values) (DV) of the essential dietary mineral manganese, vitamin C")
                                    .font(.footnote)
                            }
                        }
                    }
                    // MARK:- Section 2
                    GroupBox (label:
                        SettingLabelView(labelText: "Customization", labelImage: "paintbrush")
                    ) {
                        Divider().padding(.vertical, 4)
                        ResetView()
                    }
                    
                    // MARK:- Section 3
                    GroupBox(
                        label: SettingLabelView(labelText: "APPLICATION", labelImage: "apps.iphone")) {
                        Divider().padding(.vertical, 4)
                        ForEach(0..<applicationKey.count) { index in
                            AppDetailView(applicationKey: applicationKey[index], applicationValue: applicationValue[index])
                                .padding(.vertical, 3)
                        }
                    }
                    
                }
                .navigationBarTitle("Setting", displayMode: .inline)
                .navigationBarItems(trailing:
                                        Button(action: {
                                            presentationModel.wrappedValue.dismiss()
                                        }, label: {
                                            Image(systemName: "xmark")
                                        })
                )
            }
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
            .preferredColorScheme(.dark)
    }
}
