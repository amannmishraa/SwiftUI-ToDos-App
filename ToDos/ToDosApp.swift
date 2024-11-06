//
//  ToDosApp.swift
//  ToDos
//
//  Created by SwiftieDev on 03/02/2024.
//

import SwiftUI
import SwiftData

@main
struct ToDosApp: App {
    @StateObject var appManager = AppManager()
    var body: some Scene {
        WindowGroup {
            Group{
                switch appManager.currentView{
                case .lockScreen:
                    LockView()
                case .homeScreen:
                    HomeView()
                }
            }
            .environmentObject(appManager)
        }
        .modelContainer(for: ReminderList.self)
    }
}
