//
//  ContentView.swift
//  Shared
//
//  Created by jk on 2020/12/5.
//

import SwiftUI

struct ContentView: View {
    var students: [Student] = []
    
    
    var body: some View {
        List(students) { item in
            Image(systemName: "photo")
            VStack(alignment: .leading) {
                Text(item.name)
                    .font(.headline)
                Text("G: \(item.gender), A: \(item.age)")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(students: testData)
    }
}
