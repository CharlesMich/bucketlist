//
//  ContentView2.swift
//  BucketList
//
//  Created by Charles Michael on 11/23/24.
//

import SwiftUI

struct ContentView2: View {
    var body: some View {
        Button("Read and Write") {
            let data = Data("Test Message".utf8)
            let url = URL.documentsDirectory.appending(path: "message.txt")
            
            do {
                try data.write(to:url, options: [.atomic, .completeFileProtection])
                let input = try String(contentsOf: url)
                print(input)
            } catch {
                print(error.localizedDescription)
            }
        }
    }
    func test(){
        print(URL.desktopDirectory)
    }
}

#Preview {
    ContentView2()
}
