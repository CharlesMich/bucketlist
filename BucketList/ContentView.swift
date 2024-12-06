//
//  ContentView.swift
//  BucketList
//
//  Created by Charles Michael on 11/21/24.
//
import MapKit
import SwiftUI

struct ContentView: View {
    let startPosition = MapCameraPosition.region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 56, longitude: -3),
        span: MKCoordinateSpan(latitudeDelta: 10, longitudeDelta: 10)
        )
                                                 )
    @State private var viewModel = ViewModel()
    
    var body: some View {
        MapReader { proxy in
            Map(initialPosition: startPosition){
                ForEach(viewModel.locations) { location in
                    Annotation(location.name, coordinate: location.coordinate){
                        Image(systemName: "star.circle")
                            .resizable()
                            .foregroundStyle(.red)
                            .frame(width: 44, height: 44)
                            .clipShape(.circle)
                            .onLongPressGesture{
                                viewModel.selectedPlace = location
                            }
                    }
                }
            }
                .onTapGesture {
                    position in
                    if let coordinate = proxy.convert(position, from: .local) {
                        viewModel.addLocation(at: coordinate)
                    }
                }
                .sheet(item: $viewModel.selectedPlace) { place in
                    EditView(location: place) {
                        viewModel.update(location: $0)
                    }
                }
        }
       
                
//            .mapStyle(.hybrid)
    }
}

#Preview {
    ContentView()
}
