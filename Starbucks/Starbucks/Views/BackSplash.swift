//
//  BackSplash.swift
//  Starbucks
//
//  Created by Rajat on 10/7/19.
//  Copyright © 2019 xsad. All rights reserved.
//

import SwiftUI

struct BackSplash: View {
    var body: some View {
        Rectangle()
            .fill(LinearGradient(gradient: Gradient(colors: [Color("LightGreen"), Color("LightGreen")]), startPoint: .top, endPoint: .bottom))
            .edgesIgnoringSafeArea(.all)
    }
}

struct BackSplash_Previews: PreviewProvider {
    static var previews: some View {
        BackSplash()
    }
}
