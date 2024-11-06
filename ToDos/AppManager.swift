//
//  Manager.swift
//  ToDos
//
//  Created by Aman Mishra on 06/11/24.
//

import Foundation
public final class AppManager: ObservableObject{
    @Published var currentView: AppView = .lockScreen
    enum AppView{
        case lockScreen
        case homeScreen
    }
}

