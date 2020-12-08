//
//  StudentClass.swift
//  Students
//
//  Created by jk on 2020/12/9.
//

import Foundation

class StudentClass {
    var students: Array<Student>
    init(students: Array<Student> = []) {
        self.students = students
    }
}

let testClass = StudentClass(students: testData)
