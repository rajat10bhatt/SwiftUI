//
//  ContentView.swift
//  Starbucks
//
//  Created by Rajat on 10/7/19.
//  Copyright © 2019 xsad. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .topLeading) {
            BackSplash()
            TopView()
            ZStack {
                TopCard()
                BottomCard()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
