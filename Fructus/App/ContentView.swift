//
//  ContentView.swift
//  Fructus
//
//  Created by Rajan Singh on 14/05/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var isSettingVisible = false
    
    var body: some View {
        NavigationView {
            List(fruitsData.shuffled()) { fruit in
                NavigationLink(
                    destination: FruitDetailView(fruit: fruit)) {
                    FruitRowView(fruit: fruit)
                }
            }
            .navigationTitle("Fruit")
            .navigationBarItems(trailing:
                                    Button(action: {
                                        isSettingVisible = true
                                    }) {
                                        Image(systemName: "slider.horizontal.3")
                                    }
            )
            .sheet(isPresented: $isSettingVisible, content: {
                SettingView()
            }
            )
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
