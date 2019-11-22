//
//  TopView.swift
//  Nodo
//
//  Created by Rajat on 10/3/19.
//  Copyright © 2019 xsad. All rights reserved.
//

import SwiftUI

struct TopView: View {
    @Binding var nodoItem: Nodo
    @State var placeHolder = "Add something"
    @Binding var showField: Bool
    @Binding var nodoList: [Nodo]
    
    var body: some View {
        ZStack {
            ZStack(alignment: .leading) {
                TextField(placeHolder, text: self.$nodoItem.name, onEditingChanged: { (changed) in
                    print(changed)
                }) {
                    self.nodoList.insert(Nodo(name: self.nodoItem.name, isDone: false), at: 0)
                    self.nodoItem.name = ""
                }.padding(.all, 10)
                    .frame(width: UIScreen.main.bounds.width - 50, height: 50)
                    .background(Color.blue)
                    .cornerRadius(25)
                    .foregroundColor(.white)
                    .offset(x: self.showField ? 0 : (-UIScreen.main.bounds.width/2 - 180))
                    .animation(.spring())
                
                Image(systemName: "plus.circle")
                .resizable()
                .frame(width: 40, height: 40)
                    .foregroundColor(.yellow)
                    .offset(x: self.showField ? (UIScreen.main.bounds.width - 90) : -30)
                    .animation(.spring())
                    .onTapGesture {
                        self.showField.toggle()
                }
            }.navigationBarTitle("Nodo")
        }
    }
}

//struct TopView_Previews: PreviewProvider {
//    static var previews: some View {
//        TopView()
//    }
//}
