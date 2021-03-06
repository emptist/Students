//
//  ContentView.swift
//  Shared
//
//  Created by jk on 2020/12/5.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var home: Archive
    var body: some View {
        NavigationView {
            // A list of Students
            StudentList(home: home)
            
            // this is for iPad and MacOS
            Text("Please Add Some Students")
                .font(.largeTitle)
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(home: testHome)
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
                    .cornerRadius(9.0)
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

struct StudentList: View {
    @ObservedObject var home: Archive //= Archive(candidates: testData) //testHome
    
    var body: some View {
        List {
                ForEach(home.candidates) { student in
                    ItemCell(student: student)
                }
                .onMove(perform: moveStudent)
                .onDelete(perform: deleteStudent)
            
            HStack {
                Spacer()
                Text("\(home.candidates.count) Students")
                    .foregroundColor(.secondary)
                Spacer()
            }
            
        }
        .navigationTitle("Students")
        .toolbar {
            HStack {
                #if os(iOS)
                EditButton()
                #endif
                Button("Add", action: makeStudent)
                //Spacer()
            }
        }
    }
    
    func makeStudent() -> Void {
        withAnimation {
            home.candidates.append(Student(name: "hwa", gender: "male", age: 23, thumbnailName: "Lotus000", imageName: "lotus001"))
            //print(home.students)
        }
    }
    
    func moveStudent(from oldIndex:IndexSet, to newIndex:Int) -> Void {
        withAnimation {
            home.candidates.move(fromOffsets: oldIndex, toOffset: newIndex)
        }
    }
    
    func deleteStudent(offsets:IndexSet) -> Void {
        withAnimation {
            home.candidates.remove(atOffsets: offsets)
        }
    }
}
