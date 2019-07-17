//
//  mkMarkerAnnotation.swift
//  MapView
//
//  Created by amiet on 17/07/19.
//  Copyright © 2019 amiet. All rights reserved.
//

import Foundation
import MapKit

class mkMarkerAnnotationView: MKMarkerAnnotationView
{
    
    override var annotation: MKAnnotation?
        {
        
        willSet
        {
    guard let _myAnnotation = newValue as? myAnotation else {return}

    canShowCallout = true // A Boolean value indicating whether the annotation view is able to display extra information in a callout bubble.
    calloutOffset = CGPoint(x: -5, y: 5)
            
            
        let button = UIButton(frame: CGRect(origin: CGPoint.zero, size: CGSize(width: 30, height:30)))
            button.addTarget(self, action: #selector(viewNew), for: .touchUpInside)
            rightCalloutAccessoryView = button
            
//    rightCalloutAccessoryView = UIButton(type: .detailDisclosure)
            markerTintColor = _myAnnotation.markerTintColor
            glyphText = String(_myAnnotation.descipline.first!)
            if let imageName = _myAnnotation.imageName
            {
                glyphImage = UIImage(named: imageName)
            }else
            {
                glyphImage = nil
                
            }
            
            
            
            
            // if class is MKAnnotationView
//            if let imageName = _myAnnotation.imageName
//            {
//                image = UIImage(named: imageName)
//            }else
//            {
//                image = nil
//
//            }
        }
    }
    
    @objc func viewNew()
    {
        
        print("Hi")
        
    }
    
    
}
