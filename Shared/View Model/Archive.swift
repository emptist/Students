//
//  Archive.swift
//  Students
//
//  Created by jk on 2020/12/9.
//

import Foundation

class Archive: ObservableObject {
    @Published var candidates: Array<Student>
    
    init(_ students: Array<Student> = []) {
        self.candidates = students
    }
}

extension Student {
    var isYoung: Bool {
        age < 23
    }
}

let testHome = Archive(testData)
