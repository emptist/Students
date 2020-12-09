//
//  StudentHome.swift
//  Students
//
//  Created by jk on 2020/12/9.
//

import Foundation

class StudentHome: ObservableObject {
    var students: Array<Student>
    init(students: Array<Student> = []) {
        self.students = students
    }
}

let testHome = StudentHome(students: testData)
