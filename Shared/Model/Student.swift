//
//  Student.swift
//  Students
//
//  Created by jk on 2020/12/5.
//

import Foundation

struct Student: Identifiable {
    var id = UUID()
    var name: String
    var gender: String
    var age: Float
}

var testData = [
    Student(name: "陈梦兵", gender: "女", age: 22.2),
    Student(name: "曹梦", gender: "女", age: 22.2),
    Student(name: "陈斌", gender: "男", age: 23.2),
    Student(name: "马博", gender: "女", age: 24.2),
    Student(name: "王强", gender: "男", age: 22.4),
    Student(name: "赵敏", gender: "女", age: 21.2),
]
