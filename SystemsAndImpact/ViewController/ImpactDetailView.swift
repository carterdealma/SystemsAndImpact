//
//  ImpactDetailView.swift
//  SystemsAndImpact
//
//  Created by Ma, Carter on 9/21/21.
//

import SwiftUI
import MapKit

struct ImpactDetailView: View
{
    @State private var impact : ComputingImpact
    private var mapItems : [ComputingImpact]
    
    var body: some View
    {
        VStack
        {
            Map(coordinateRegion: $impact.location, annotationItems: mapItems)
            {
                pin in
                
                MapMarker (coordinate: pin.location.center, tint: .blue)
            }
                .frame(height: 400)
            .onAppear()
            {
                withAnimation()
                {
                    impact.location.span = MKCoordinateSpan(latitudeDelta: 10.0, longitudeDelta : 8.6)
                }
            }
            Text(impact.details)
        }
    }
    
    init(with impact: ComputingImpact)
    {
        _impact = State(initialValue: impact)
        mapItems = [ctecLocation, impact]
    }
}

struct ImpactDetailView_Previews: PreviewProvider
{
    static var previews: some View
    {
        let tempImpact = ComputingImpact(title: "Demo", details: "Lookey Here!!!",
            location: MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 40.5875, longitude: -111.8684),
            span: MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.04)))
        
        ImpactDetailView(with: tempImpact)
    }
}
