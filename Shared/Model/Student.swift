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
    Student(name: "c m b", gender: "f", age: 22.2),
    Student(name: "c b", gender: "f", age: 22.2),
    Student(name: "c m", gender: "m", age: 23.2),
    Student(name: "m b", gender: "f", age: 24.2),
    Student(name: "m", gender: "m", age: 22.4),
    Student(name: "cm b", gender: "f", age: 21.2),
    
]
