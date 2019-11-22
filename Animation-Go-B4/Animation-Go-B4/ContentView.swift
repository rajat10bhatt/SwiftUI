//
//  ContentView.swift
//  Animation-Go-B4
//
//  Created by Rajat on 9/25/19.
//  Copyright © 2019 xsad. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var show = false
    var body: some View {
        CardView(show: self.$show)
            .onTapGesture {
                self.show.toggle()
        }
    }
}

struct CardView: View {
    @Binding var show: Bool
    
    var body: some View {
        RoundedRectangle(cornerRadius: 12)
            .shadow(radius: 12)
            .foregroundColor(.pink)
            .frame(width: 300, height: 300)
            .rotationEffect(Angle(degrees: self.show ? -12 : 12))
            .blur(radius: self.show ? 0 : 2)
            .scaleEffect(self.show ? 0.5 : 1)
            .offset(x: self.show ? 0 : 300)
            .animation(.spring())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
