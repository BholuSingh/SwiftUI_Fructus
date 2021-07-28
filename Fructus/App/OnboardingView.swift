//
//  OnboardingView.swift
//  Fructus
//
//  Created by Rajan Singh on 15/05/21.
//

import SwiftUI

struct OnboardingView: View {
    // MARK:- Properties
    var fruits = fruitsData
    // MARK:- Body
    var body: some View {
        TabView {
            ForEach(fruits[0..<5]) { item in
                FruitCardView(fruitData: item)
//                Text(item.title)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

// MARK:- Previews
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
