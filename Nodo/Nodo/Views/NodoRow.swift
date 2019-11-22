//
//  NodoRow.swift
//  Nodo
//
//  Created by Rajat on 10/3/19.
//  Copyright © 2019 xsad. All rights reserved.
//

import SwiftUI

struct NodoRow: View {
    @State var nodoItem: Nodo
    var body: some View {
        VStack(alignment: .center, spacing: 2) {
            Group {
                HStack {
                    Text(self.nodoItem.name)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    
                    Spacer()
                    
                    Image(systemName: self.nodoItem.isDone ? "checkmark" : "square").padding()
                }
                HStack(alignment: .center, spacing: 3) {
                    Spacer()
                    Text("Added: \(self.nodoItem.dateText)")
                        .foregroundColor(.white)
                    .italic()
                        .padding(.all, 5)
                }.padding(.bottom, 5)
            }.padding(.all, 4)
        }.blur(radius: self.nodoItem.isDone ? 1 : 0)
        .opacity(self.nodoItem.isDone ? 0.3 : 1)
        .background(self.nodoItem.isDone ? Color.gray : Color.pink)
        .clipShape(RoundedRectangle(cornerRadius: 5))
        .shadow(radius: 5)
            .onTapGesture {
                self.nodoItem.isDone.toggle()
        }
        .offset(x: self.nodoItem.isDone ? -50 : 0)
        .animation(.spring())
    }
}

//struct NodoRow_Previews: PreviewProvider {
//    static var previews: some View {
//        NodoRow()
//    }
//}
