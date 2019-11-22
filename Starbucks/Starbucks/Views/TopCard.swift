//
//  TopCard.swift
//  Starbucks
//
//  Created by Rajat on 10/7/19.
//  Copyright © 2019 xsad. All rights reserved.
//

import SwiftUI

struct TopCard: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 45)
            .frame(width: 380, height: 270)
            .offset(x: -17)
            .foregroundColor(Color("CreamWhite"))

            RoundedRectangle(cornerRadius: 10)
            .frame(width: 100, height: 100)
            .offset(x: -165, y: 130)
            .foregroundColor(Color("CreamWhite"))

            HStack {
                Image("frappe")
                .resizable()
                    .renderingMode(.original)
                .frame(width: 150, height: 150)

                VStack(alignment: .leading) {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(0..<5) { item in
                                ZStack {
                                    RoundedRectangle(cornerRadius: 30)
                                    .frame(width: 90, height: 90)
                                    .foregroundColor(Color("CreamDarker"))

                                    Image("cupcake")
                                    .resizable()
                                    .frame(width: 70, height: 70)
                                        .background(Color("CreamWhite"))
                                        .clipShape(Circle())
                                    .overlay(Circle().stroke(Color("CreamWhite"), lineWidth: 1))
                                }
                            }
                        }
                    }.frame(width: 215)
                    VStack(alignment: .leading) {
                        Text("Caramel Cream Frappucchino")
                            .fontWeight(.heavy)
                            .font(.title)
                            .foregroundColor(Color("DarkGreen"))
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .lineLimit(nil)
                    }.padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
                }
            }.padding(.trailing, 5)
                .padding(.leading, 60)
        }
    }
}

struct TopCard_Previews: PreviewProvider {
    static var previews: some View {
        TopCard()
    }
}
