//
//  StudentHome.swift
//  Students
//
//  Created by jk on 2020/12/9.
//

import Foundation

class StudentHome: ObservableObject {
    @Published var students: Array<Student> // = testData
    
    init(students: Array<Student> = []) {
        self.students = students
    }
}

extension Student {
    var isYoung: Bool {
        age < 23
    }
}

let testHome = StudentHome(students: testData)
