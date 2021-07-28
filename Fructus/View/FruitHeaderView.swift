//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by Rajan Singh on 17/05/21.
//

import SwiftUI

struct FruitHeaderView: View {
    
    var fruit: Fruit
    @State private var isAnimating = false
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom)
            
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                .scaleEffect(isAnimating ? 1.0 : 0.6)
        }
        .frame(height: 440)
        .onAppear() {
            withAnimation(.easeInOut(duration: 0.5)) {
                isAnimating = true
            }
        }
    }
}

struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitsData.first!)
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
