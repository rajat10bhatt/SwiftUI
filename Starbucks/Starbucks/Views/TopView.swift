//
//  TopView.swift
//  Starbucks
//
//  Created by Rajat on 10/7/19.
//  Copyright © 2019 xsad. All rights reserved.
//

import SwiftUI

struct TopView: View {
    var body: some View {
        ZStack(alignment: .leading) {
            HStack {
                Image("waterDrops")
                .resizable()
                .frame(width: 20, height: 20)
                .background(RoundedRectangle(cornerRadius: 12)
                    .frame(width: 40, height: 60)
                    .foregroundColor(Color("DarkGreen")))
                
                Spacer()
                Text("STARBUCKS")
                    .foregroundColor(.white)
                    .font(.headline)
                    .fontWeight(.heavy)
                .bold()
                    .padding(.trailing, 90)
                Spacer()
            }.padding(.leading, 90)
                .padding(.top, 20)
        }
    }
}

struct TopView_Previews: PreviewProvider {
    static var previews: some View {
        TopView()
    }
}
