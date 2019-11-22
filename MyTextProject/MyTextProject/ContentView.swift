//
//  ContentView.swift
//  MyTextProject
//
//  Created by Rajat on 9/5/19.
//  Copyright © 2019 xsad. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // MARK: Stack
        VStack(alignment: .center, spacing: 10) {
            Text("Another Txt")
                .font(.body).bold().underline().foregroundColor(.green)
            Text("Hello World djksahd asjhdjkas hdjkash djkashd jashjkd haskjdhas jkdhasjk dhajskdh")
                .font(.body).bold().underline().foregroundColor(.green)
        }.background(Color.gray)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
