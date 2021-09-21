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
                Section(header: Text("Definitions"))
                {
                  Text("Coming Soon!")
                }
                Section(header: Text("Impacts"))
                {
                    ForEach(impacts.indices)
                    {
                        index in
                        
                        NavigationLink(impacts[index].title, destination: ImpactDetailView (with: impacts[index]))
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
