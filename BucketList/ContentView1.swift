//
//  ContentView1.swift
//  BucketList
//
//  Created by Charles Michael on 11/22/24.
//

import SwiftUI

struct User: Identifiable {
    let id =  UUID()
    var firstName: String
    var lastName: String
}

struct ContentView1: View {
    let users = [
        User(firstName: "Arnold", lastName: "Rimmer"),
        User(firstName: "Arnofgdfld", lastName: "Rimmgdfer"),
        User(firstName: "Arnodfgdfld", lastName: "Cimgdfmer"),
    ].sorted {
        $0.lastName < $1.lastName
    }
    let values = [4,1,5,7,3,6,2,9, 8].sorted()
    
    var body: some View {
        List(values, id: \.self) {
            Text(String($0))
        }
        List(users) {user in
            Text("\(user.lastName), \(user.firstName)")}
        
    }
}

#Preview {
    ContentView1()
}
