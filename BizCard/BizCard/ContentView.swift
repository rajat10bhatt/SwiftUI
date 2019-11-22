//
//  ContentView.swift
//  BizCard
//
//  Created by Rajat on 9/6/19.
//  Copyright © 2019 xsad. All rights reserved.
//

import SwiftUI

struct FillImage: View {
    var imageName: String
    var body: some View {
        Image(systemName: imageName)
        .resizable()
        .foregroundColor(.white)
        .frame(width: 100, height: 100)
    }
}

struct MainView: View {
    var body: some View {
        HStack {
            FillImage(imageName: "r.circle.fill")
            VStack(alignment: .leading) {
                Text("Rajat Bhatt")
                    .font(.title).foregroundColor(.white)
                Text("rajat10bhatt@gmail.com").font(.subheadline).foregroundColor(.white)
                HStack {
                    Image(systemName: "t.square.fill")
                        .foregroundColor(.white)
                    Text(": @rajat10bhatt")
                        .font(.subheadline)
                        .foregroundColor(.white)
                        .bold()
                        .italic()
                }
            }
        }.frame(width: 350, height: 200)
            .background(Color.orange)
        .cornerRadius(8)
        .shadow(radius: 5)
    }
}

struct ContentView: View {
    var body: some View {
        MainView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
