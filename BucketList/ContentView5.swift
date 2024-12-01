//
//  ContentView5.swift
//  BucketList
//
//  Created by Charles Michael on 12/1/24.
//

import SwiftUI
import LocalAuthentication

struct ContentView5: View {
    
    @State private var isUnlocked = false
    
    
    var body: some View {
        VStack {
            if isUnlocked {
                Text("Unlocked")
            } else {
                Text("Locked")
            }
        }
        .onAppear(perform: authenticate)
    }
    func authenticate(){
        let context = LAContext()
           var error: NSError?
        
        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error){
            let reason = "We need to unlock your data"
            
            context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reason) { success, authenticationError in
                if success {
                    isUnlocked = true
                } else {
                    
                }
            }
        } else {
            
        }
    }
}

#Preview {
    ContentView5()
}
