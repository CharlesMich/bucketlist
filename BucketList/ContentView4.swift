//
//  ContentView4.swift
//  BucketList
//
//  Created by Charles Michael on 11/23/24.
//

import SwiftUI
import MapKit

struct ContentView4: View {
    @State private var position = MapCameraPosition.region(MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.5077, longitude: -0.1275), span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)))
    
    var body: some View {
       
        Map(position: $position)
//            .mapStyle(.imagery)
            .mapStyle(.hybrid)
            .mapStyle(.hybrid(elevation: .realistic))
    }
}

#Preview {
    ContentView4()
}
