//
//  CapyMaterial.swift
//  wit26
//
//  Created by Charlotte Chrysostom on 07/03/2026.
//

import SwiftUI

extension Color {
    static func fromHex(r: Int, g: Int, b: Int) -> Color {
        return Color(red: Double(r) / 255, green: Double(g) / 255, blue: Double(b) / 255)
    }
}

class CapyMaterial {
    static let orchidMist = Color.fromHex(r: 0xb9, g: 0x6a, b: 0xc9)
    static let almondSilk = Color.fromHex(r: 0xf7, g: 0xd1, b: 0xcd)
    static let limeCream = Color.fromHex(r: 0xff, g: 0xfc, b: 0x99)
    static let frostedBlue = Color.fromHex(r: 0xa7, g: 0xe2, b: 0xe3)
    static let toffeeBrown = Color.fromHex(r: 0x8a, g: 0x65, b: 0x52)
}
