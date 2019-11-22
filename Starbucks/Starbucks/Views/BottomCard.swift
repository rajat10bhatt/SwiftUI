//
//  BottomCard.swift
//  Starbucks
//
//  Created by Rajat on 10/7/19.
//  Copyright © 2019 xsad. All rights reserved.
//

import SwiftUI

struct BottomCard: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 80)
            .frame(width: 380, height: 270)
            .offset(x: -25, y: 270)
            .foregroundColor(Color("LightGreen"))
            
            ZStack(alignment: .bottomLeading) {
                RoundedRectangle(cornerRadius: 80)
                .frame(width: 550, height: 400)
                .offset(x: 100, y: 390)
                .foregroundColor(Color("DarkGreen"))
            }
        }
    }
}

struct BottomCard_Previews: PreviewProvider {
    static var previews: some View {
        BottomCard()
    }
}
