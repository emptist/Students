//
//  StudentDetail.swift
//  Students
//
//  Created by jk on 2020/12/6.
//

import SwiftUI

struct StudentDetail: View {
    var student: Student
    @State private var zoomed = false
    
    var body: some View {
        VStack {
            Spacer()
            Image(student.imageName)
                .resizable()
                .aspectRatio(contentMode: zoomed ? .fill : .fit)
                .onTapGesture {
                    withAnimation {
                        zoomed.toggle()
                    }
                }
            Spacer()
            
            if student.isYoung && !zoomed{
                HStack {
                    Spacer()
                    Label("Young", systemImage:"flame.fill")
                    Spacer()
                }
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .font(Font/*@START_MENU_TOKEN@*/.headline/*@END_MENU_TOKEN@*/.smallCaps())
                .background(Color.red)
                .foregroundColor(.yellow)
                .transition(.move(edge: .bottom))
            } else {
                /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
            }
        }
        .navigationTitle("Student")
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct StudentDetail_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NavigationView {
                StudentDetail(student: testData[0])
            }
            NavigationView {
                StudentDetail(student: testData[2])
            }
        }
    }
}
