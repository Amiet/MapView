//
//  File.swift
//  MapView
//
//  Created by amiet on 17/07/19.
//  Copyright © 2019 amiet. All rights reserved.
//

//import Foundation
import MapKit

class myAnotation : NSObject, MKAnnotation
{
    
    let title: String?
//    let subtitle: String?
    let locationName: String
//    let vlink: String
    let descipline: String
    let coordinate: CLLocationCoordinate2D
    
    
    
    init(title: String, locationName: String, descipline: String, coordinate: CLLocationCoordinate2D)
    {
        self.title = title
        self.locationName = locationName
//        self.vlink = vlink
        self.descipline = descipline
        self.coordinate = coordinate
           
    super.init()
    }
    
    var subtitle: String?
    {
        return locationName
    }
    
    var markerTintColor: UIColor
    {
        
        switch descipline {
        case "A":
            return .red
        case "B":
            return .blue
        default:
            return .black
        }
        
    }
    
    var imageName: String?
    {
        
        if descipline == "One Great Mobile" {return "location"}
        return nil
        
    }
    
//    var imageName: String?
//    {
//        return "image"
//    }
    
}
