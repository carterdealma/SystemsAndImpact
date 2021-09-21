//
//  ComputingImpact.swift
//  SystemsAndImpact
//
//  Created by Ma, Carter on 9/21/21.
//

import MapKit

struct ComputingImpact : Identifiable
{
    let id = UUID()
    let title : String
    let details : String
    var location : MKCoordinateRegion
}
