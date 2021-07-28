//
//  AppDetailView.swift
//  Fructus
//
//  Created by Rajan Singh on 18/05/21.
//

import SwiftUI

struct AppDetailView: View {
    
    var applicationKey: String
    var applicationValue: String?
    var linkLabel: String?
    var linkDestination: String?
    
    var body: some View {
        HStack(spacing: 10) {
            Text(applicationKey)
                .fontWeight(.regular)
                .foregroundColor(Color.gray)
            
            Spacer()
            
            if (applicationValue != nil) {
                Text(applicationValue ?? "" )
            } else if (linkLabel != nil && linkDestination != nil) {
                Link(linkLabel ?? "", destination: URL(string: "https://\(linkDestination ?? "")")!)
            } else {
                /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
            }
            
        }
    }
}

struct AppDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AppDetailView(applicationKey: "Developer", applicationValue: "Rajan Singh")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
