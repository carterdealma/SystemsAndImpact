//
//  PDFKitView.swift
//  SystemsAndImpact
//
//  Created by Ma, Carter on 9/23/21.
//

import PDFKit
import SwiftUI

struct PDFKitView: View
{
    var body: some View
    {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}


struct PDFKitRepresentedView : UIViewRepresentable
{
    let url : URL
    
    init (with url : URL)
    {
        self.url = url
    }
    
    func makeUIView(context: Context) -> some UIView
    {
        let pdfView = PDFView()
        pdfView.document = PDFDocument(url: self.url)
        pdfView.autoScales = true
        pdfView.displayDirection = .vertical
        
        return pdfView
    }
    
    func updateUIView(_ uiView: UIViewType, context : Context) -> Void
    {
        
    }
    
}



struct PDFKitView_Previews: PreviewProvider
{
    static var previews: some View
    {
        PDFKitView()
    }
}
