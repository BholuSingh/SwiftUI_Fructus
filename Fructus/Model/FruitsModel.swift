//
//  FruitsModel.swift
//  Fructus
//
//  Created by Rajan Singh on 15/05/21.
//

import SwiftUI

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description:  String
    var nutrition: [String]
}
