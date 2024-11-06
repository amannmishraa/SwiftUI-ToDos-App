//
//  LockView.swift
//  ToDos
//
//  Created by Aman Mishra on 06/11/24.
//

import SwiftUI
import LocalAuthentication
struct LockView: View {
    @EnvironmentObject var appManager: AppManager
    var body: some View {
        VStack{
            Text("The Screen is Locked!")
            
            Button{
                authenticate()
                // unlock the app
            }label: {
                Text("To unlock the app press here")
            }
            .padding()
        }
    }
    private func authenticate(){
        let context = LAContext()
        var error: NSError?
        if
            context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error){
            let reason = "we need to unlock your data!"
            context.evaluatePolicy(
                .deviceOwnerAuthenticationWithBiometrics, localizedReason: reason){ success, authError in
                    if success{
                        appManager.currentView = .homeScreen
                    }else{
                        
                    }
                }
        }
    }
}

#Preview {
    LockView()
}
