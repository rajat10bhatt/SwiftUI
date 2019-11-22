//
//  NoDo.swift
//  Nodo
//
//  Created by Rajat on 10/3/19.
//  Copyright © 2019 xsad. All rights reserved.
//

import Foundation

let formatter = DateFormatter()

struct Nodo: Identifiable {
    var id = UUID()
    var name: String = ""
    private let dateAdded = Date()
    var isDone = false
    var dateText: String {
        formatter.dateFormat = "MMM d yyyy, h:mm a"
        return formatter.string(from: dateAdded)
    }
}
