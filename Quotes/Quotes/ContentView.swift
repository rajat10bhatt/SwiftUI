//
//  ContentView.swift
//  Quotes
//
//  Created by Rajat on 9/10/19.
//  Copyright © 2019 xsad. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var quotes = [Quote(quote: "Whatever the mind of man can conceive...", name: "James Bond"), Quote(quote: "Whatever the mind of man can conceive...", name: "James Bond"), Quote(quote: "Whatever the mind of man can conceive...", name: "James Bond"), Quote(quote: "Whatever the mind of man can conceive...", name: "James Bond"), Quote(quote: "Whatever the mind of man can conceive...", name: "James Bond"), Quote(quote: "Whatever the mind of man can conceive...", name: "James Bond"), Quote(quote: "Whatever the mind of man can conceive...", name: "James Bond"), Quote(quote: "Whatever the mind of man can conceive...", name: "James Bond"), Quote(quote: "Whatever the mind of man can conceive...", name: "James Bond"), Quote(quote: "Whatever the mind of man can conceive...", name: "James Bond"), Quote(quote: "Whatever the mind of man can conceive...", name: "James Bond"), Quote(quote: "Whatever the mind of man can conceive...", name: "James Bond")]
    var body: some View {
        VStack {
            CircleImage(imageName: "lilly")
                .frame(width: 145, height: 145)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 0))
            MainView(quotes: quotes)
        }.frame(minWidth: 0, idealWidth: 100, maxWidth: .infinity, minHeight: 0, idealHeight: 100, maxHeight: .infinity)
            .padding(.all, 0)
        .background(
            Image("motivation_bg")
            .resizable()
            .renderingMode(.original)
        ).edgesIgnoringSafeArea(.all)
    }
}

struct CircleImage: View {
    var imageName: String
    var body: some View {
        VStack {
            Image(imageName)
            .resizable()
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.gray, lineWidth: 2))
            .shadow(radius: 10)
        }
    }
}

struct MainView: View {
    var quotes: [Quote]
    var body: some View {
        VStack {
            HStack {
                Text("Quotes Available!")
                    .font(.subheadline)
                    .italic()
                    .foregroundColor(.orange)
            }
            ScrollView(Axis.Set.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(self.quotes, id: \.quote) { quote in
                        VStack {
                            CircleImage(imageName: "lilly")
                                .frame(width: 100, height: 100)
                            Text(#""\#(quote.quote)""#)
                                .font(.headline).multilineTextAlignment(.leading).lineLimit(50)
                            Divider()
                            Text(quote.name)
                                .italic()
                                .font(.custom("Helvetica neue", size: 14))
                        }
                        .frame(width: 300, height: 300)
                        .foregroundColor(.gray)
                        .padding(4)
                        .background(Color.white)
                        .cornerRadius(13)
                        .overlay(Rectangle().fill(
                            LinearGradient(gradient: Gradient(colors: [.clear, .pink]), startPoint: .center, endPoint: .topLeading)
                            ).clipped()
                            .shadow(radius: 8))
                    }
                }.padding(.leading, 10)
            }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
