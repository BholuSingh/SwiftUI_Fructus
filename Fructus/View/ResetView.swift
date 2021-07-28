//
//  ResetView.swift
//  Fructus
//
//  Created by Rajan Singh on 18/05/21.
//

import SwiftUI

struct ResetView: View {
    @AppStorage(wrappedValue: false, "isOnboarding") var isOnboarding
    var body: some View {
        VStack {
            Text("If you wish, you can restart the application by toggled the switch in this box. That way is starts the onboarding process and you will see the welcome screen again.")
                .font(.footnote)
            GroupBox  {
                HStack {
                    Toggle(isOn: $isOnboarding) {
                        if isOnboarding {
                        Text("Restarted".uppercased())
                            .foregroundColor(Color.green)
                            .fontWeight(.bold)
                        } else {
                            Text("Restart".uppercased())
                                .fontWeight(.bold)
                                .foregroundColor(Color.secondary)
                        }
                    }
                    .padding()
                    .background(Color(UIColor.tertiarySystemBackground)
                                    .clipShape(RoundedRectangle(cornerRadius: 0, style: .continuous)))
                }
            }
        }
    }
}

struct ResetView_Previews: PreviewProvider {
    static var previews: some View {
        ResetView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
