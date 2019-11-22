//
//  ContentView.swift
//  Nodo
//
//  Created by Rajat on 10/3/19.
//  Copyright © 2019 xsad. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var nodoList: [Nodo] = []
    @State var nodoItem = Nodo()
    @State var showField = false
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    TopView(nodoItem: self.$nodoItem, showField: self.$showField, nodoList: self.$nodoList)
                }
                List {
                    ForEach(nodoList) { item in
                        NodoRow(nodoItem: item)
                    }
                }
            }
        }
    }
    
    func delete(at offsets: IndexSet) {
        guard let index = Array(offsets).first else { return }
        self.nodoList.remove(at: index)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
