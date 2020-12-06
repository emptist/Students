//
//  StudentDetail.swift
//  Students
//
//  Created by jk on 2020/12/6.
//

import SwiftUI

struct StudentDetail: View {
    var student: Student
    
    var body: some View {
        VStack {
            Image(student.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .navigationTitle("Student")
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
    }
}

struct StudentDetail_Previews: PreviewProvider {
    static var previews: some View {
        StudentDetail(student: testData[0])
    }
}
