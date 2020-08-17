//
//  ContentViewModel.swift
//  ScreenColorTest
//
//  Created by Soleil Yu on 2020/8/17.
//  Copyright © 2020 Soleil Yu. All rights reserved.
//

import SwiftUI

class ContentViewModel {
    
    var index = 0
    
    var newColor: NSColor {
        if (index + 1 < colorArray.count) {
            index = index + 1
            return colorArray[index]
        } else {
            index = 0
            return colorArray[index]
        }
    }
    
    fileprivate var colorArray: [NSColor] = [
        .blue,
        .systemBlue,
        .yellow,
        .systemYellow,
        .orange,
        .systemOrange,
        .purple,
        .systemPurple,
        .systemIndigo,
        .systemTeal,
        .red,
        .systemRed,
        .green,
        .systemGreen,
        .gray,
        .darkGray,
        .lightGray,
        .systemGray,
        .systemPink,
        .systemBrown,
    ]
    
    fileprivate var testedColorsInThisLoop: Set<NSColor> = Set()
}
