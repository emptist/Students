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
                
                ForEach(students) { student in
                    ItemCell(student: student)
                }
                
                HStack {
                    Spacer()
                    Text("\(students.count) Students")
                        .foregroundColor(.secondary)
                    Spacer()
                }
            }
            .navigationTitle("Students")
            
            // this is for iPad and MacOS
            Text("Please Add Some Students")
                .font(.title)
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(students: testData)
    }
}

struct ItemCell: View {
    var student: Student
    var body: some View {
        NavigationLink(
            destination: StudentDetail(student:student),
            label: {
                // Cell to display one Student
                Image(student.thumbnailName)
                    //.resizable()
                VStack(alignment: .leading) {
                    Text(student.name)
                        .font(.headline)
                    
                    Text("性别: \(student.gender), 年龄: \(student.age)")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
            }
        )
    }
}
