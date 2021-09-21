//
//  ImpactData.swift
//  SystemsAndImpact
//
//  Created by Ma, Carter on 9/21/21.
//

import MapKit

let definitions = Bundle.main.url(forResource: "Computing Definitions", withExtension: "pdf")

func loadImpactData() -> [ComputingImpact]
{
    var impactItems : [ComputingImpact] = []
    
    let regions : [CLLocationCoordinate2D] =
    [
        CLLocationCoordinate2D(latitude: 20.5937, longitude: 78.9629),
        CLLocationCoordinate2D(latitude: 61.5240, longitude: 105.3188),
        CLLocationCoordinate2D(latitude: 34.0479, longitude: 100.6197),
        CLLocationCoordinate2D(latitude: 28.396837, longitude: -80.605659),
        CLLocationCoordinate2D(latitude: 37.3875, longitude: -122.0575)
    ]
    
    let titles : [String] =
    [
        "Gender Inequity in Social Media Voice Forums",
        "Russian Interference in the U.S Election",
        "Automation of Industrial Jobs in Asia",
        "America's Moon Landing",
        "Environmental Risk in Silicon Valley",
    ]
    
    let details : [String] =
    [
        "Women face systematic discrimination and encountered abuse content, flirts, threats and harrassment.",
        "Alleged that the Russian government illicitly collected emails and documents of the DNC.",
        "There is expected to be a 16% growth in industrial robots jobs in Asia between 2019 and 2021.",
        "The Apollo Guidance Computer (ACG) played a very significant role in America's successful moon landing.",
        "Silicon Valley moved from an agricultural industry to a high-tech industry very fast. This lead to heavy metals and toxic chemicals to pollute the soil and contaminate groundwater.",
    ]
    
    for index in 0 ..< 5
    {
        let currentRegion = MKCoordinateRegion(center:regions[index],
                                               span: MKCoordinateSpan(latitudeDelta: 10.0, longitudeDelta: 10.0))
        impactItems.append(ComputingImpact(title: titles[index], details: details [index], location: currentRegion))
    }
    
    return impactItems
}
