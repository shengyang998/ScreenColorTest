//
//  ContentView.swift
//  ScreenColorTest
//
//  Created by Soleil Yu on 2020/8/9.
//  Copyright © 2020 Soleil Yu. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var currentColor: NSColor = NSColor.white
    
    var model: ContentViewModel = ContentViewModel()
    
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
        currentColor = model.newColor
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
