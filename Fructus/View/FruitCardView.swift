//
//  FruitCardView.swift
//  Fructus
//
//  Created by Rajan Singh on 15/05/21.
//

import SwiftUI

struct FruitCardView: View {
    // MARK:- Properties
    var fruitData: Fruit
    @State private var isAnimating = false
    
    // MARK:- Body
    
    
    var body: some View {
        ZStack {
            VStack(spacing: 21) {
                // Fruit: Image
                Image(fruitData.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                // Fruit: Title
                Text(fruitData.title)
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                
                //: Headline
                Text(fruitData.headline)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                //: Button
                StartButtonView()
                
            }//: VStack
        } //: ZStack
        .onAppear {
            withAnimation(.easeOut(duration: 0.5) ) {
                isAnimating = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxHeight: .infinity, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .background(
            LinearGradient(
                gradient: Gradient(colors: fruitData.gradientColors),
                startPoint: .top,
                endPoint: .bottom)
        )
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}

// MARK:- Preview
struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruitData: fruitsData.first!)
            .previewLayout(.sizeThatFits)
    }
}
