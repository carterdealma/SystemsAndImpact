//
//  ContentView.swift
//  SystemsAndImpact
//
//  Created by Ma, Carter on 9/15/21.
//

import SwiftUI

struct ImpactAndSystemsView: View
{
    let impacts = loadImpactData()
    
    var body: some View
    {
        NavigationView
        {
            List
            {
                Section(header: Text("Systems"))
                {
                    NavigationLink("All the definitions!", destination: PDFKitView())
                }
                Section(header: Text("Impacts"))
                {
                    ForEach(impacts)
                    {
                        impact in
                        
                        NavigationLink(impact.title, destination: ImpactDetailView (with: impact))
                    }
                }
            }
        }
    }
}

struct ImpactAndSystemsView_Previews: PreviewProvider
{
    static var previews: some View
    {
        ImpactAndSystemsView()
    }
}
