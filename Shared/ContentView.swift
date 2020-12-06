//
//  ContentView.swift
//  Shared
//
//  Created by jk on 2020/12/5.
//

import SwiftUI

struct ContentView: View {
    //@ObservedObject var students: Students
    var students: [Student] = []
    
    var body: some View {
        // - Mark - todo: add navigation view here
        NavigationView {
            // A list of Students
            List {
                
                ForEach(students) { item in
                    ItemCell(item: item)
                }
                
                HStack {
                    Spacer()
                    Text("\(students.count) Students")
                        .foregroundColor(.secondary)
                    Spacer()
                }
            }
            .navigationTitle("Students")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(students: testData)
    }
}

struct ItemCell: View {
    var item: Student
    var body: some View {
        NavigationLink(
            destination: Text(item.name),
            label: {
                // Cell to display one Student
                Image(systemName: "photo")
                VStack(alignment: .leading) {
                    Text(item.name)
                        .font(.headline)
                    
                    Text("性别: \(item.gender), 年龄: \(item.age)")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
            }
        )
    }
}
