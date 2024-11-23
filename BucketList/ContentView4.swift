//
//  ContentView4.swift
//  BucketList
//
//  Created by Charles Michael on 11/23/24.
//

import SwiftUI
import MapKit

struct ContentView4: View {
    
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        Map()
//            .mapStyle(.imagery)
            .mapStyle(.hybrid)
            .mapStyle(.hybrid(elevation: .realistic))
    }
}

#Preview {
    ContentView4()
}
