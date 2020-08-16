//
//  ContentView.swift
//  ScreenColorTest
//
//  Created by Soleil Yu on 2020/8/9.
//  Copyright © 2020 Soleil Yu. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var currentColor = NSColor.systemBlue
    var colorArray:[NSColor] = [
        .systemBlue,
        .systemYellow,
        .systemOrange,
        .systemPurple,
        .systemIndigo,
        .systemTeal,
        .systemRed,
        .systemGreen,
        .systemGray,
        .systemPink,
        .systemBrown,
    ]
    
    var body: some View {
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            NSCursor.hide()
        }
        
        return Button(action: {
            self.changeColor()
        }) {
            Color(self.currentColor)
                .frame(minWidth: 300, idealWidth: 300, maxWidth: .infinity,
                       minHeight: 300, idealHeight: 300, maxHeight: .infinity,
                       alignment: Alignment(horizontal: .center, vertical: .center))
        }
        .buttonStyle(PlainButtonStyle())
        .animation(.easeInOut)
    }
    
    func changeColor() {
        currentColor = colorArray.shuffled().first!
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
