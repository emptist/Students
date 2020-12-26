//
//  StudentsApp.swift
//  Shared
//
//  Created by jk on 2020/12/5.
//

import SwiftUI

@main
struct StudentsApp: App {
    @StateObject private var home = Archive(students: testData)
    var body: some Scene {
        WindowGroup {
            ContentView(home:home)
        }
    }
}
