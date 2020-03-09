//
//  Map.swift
//  subscriptionBoxTutorial
//
//  Created by Henry Calderon on 3/9/20.
//  Copyright © 2020 Henry Calderon. All rights reserved.
//

import SwiftUI
import MapKit

struct Map: UIViewRepresentable {
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    func updateUIView(_ view: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(latitude: 37.4852, longitude: -122.2364)
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        view.setRegion(region, animated: true)
    }
}

struct Map_Previews: PreviewProvider {
    static var previews: some View {
        Map()
    }
}
