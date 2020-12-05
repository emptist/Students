//
//  Students.swift
//  Students
//
//  Created by jk on 2020/12/5.
//

import SwiftUI

class Students: ObservableObject {
    @Published var testData: [Student] = [
            Student(name: "陈梦兵", gender: "女", age: 22),
            Student(name: "曹梦", gender: "女", age: 22),
            Student(name: "陈斌", gender: "男", age: 23),
            Student(name: "马博", gender: "女", age: 24),
            Student(name: "王强", gender: "男", age: 22),
            Student(name: "赵敏", gender: "女", age: 21),
        ]
    
}
