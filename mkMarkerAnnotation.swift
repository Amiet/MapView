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
    guard let _myAnnotation = newValue as? MKAnnotation else {return}

    canShowCallout = true // A Boolean value indicating whether the annotation view is able to display extra information in a callout bubble.
    calloutOffset = CGPoint(x: -5, y: 5)
    rightCalloutAccessoryView = UIButton(type: .detailDisclosure)
            markerTintColor = _myAnnotation.markerTintColor
            glyphText = String(_myAnnotation.descipline.first!)
    }
        }
    }
}
