//
//  ViewController.swift
//  MapView
//
//  Created by amiet on 16/07/19.
//  Copyright © 2019 amiet. All rights reserved.
//

import UIKit
import MapKit  

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.mapView.delegate = self
        mapView.register(mkMarkerAnnotationView.self, forAnnotationViewWithReuseIdentifier: MKMapViewDefaultAnnotationViewReuseIdentifier)
        
        setupUI()
        // initial Location
        let initalLocation = CLLocation(latitude: 18.515810, longitude: 73.927193)
     centerMapOnLocayion(location: initalLocation)
    }


    //MARK: Helper Functions
    let regionRadius: CLLocationDistance = 500
    func centerMapOnLocayion(location: CLLocation)
    {
        
        let coordinateRegion = MKCoordinateRegion.init(center: location.coordinate, latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
        mapView.setRegion(coordinateRegion, animated: true)
    }
    
 func setupUI()
 {
    
    let _anotation1 = myAnotation(title: "1", locationName: "Magarpatta City", descipline: "Ok", coordinate: CLLocationCoordinate2DMake(18.515810, 73.927193))
    mapView.addAnnotation(_anotation1)
    
    let _anotation2 = myAnotation(title: "2", locationName: "Magarpatta Tower", descipline: "B", coordinate: CLLocationCoordinate2DMake(18.516281, 73.927593))
    mapView.addAnnotation(_anotation2)
    
    let _anotation3 = myAnotation(title: "3", locationName: "Magarpatta Pentagon", descipline: "A", coordinate: CLLocationCoordinate2DMake(18.516712, 73.926893))
    mapView.addAnnotation(_anotation3)
    
    let _anotation4 = myAnotation(title: "4", locationName: "Magarpatta View", descipline: "Ok", coordinate: CLLocationCoordinate2DMake(18.515712, 73.926593))
    mapView.addAnnotation(_anotation4)
 }
    
}

extension ViewController : MKMapViewDelegate
{
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
//        guard let _annotation = annotation as? MKAnnotation else {return nil}
//        let _identifier = "marker"
//        var view: MKMarkerAnnotationView
//        if let dequeuedView = mapView.dequeueReusableAnnotationView(withIdentifier: _identifier) as? MKMarkerAnnotationView
//        {
//
//            dequeuedView.annotation = annotation
//            view = dequeuedView
//        }else
//        {
//            view = MKMarkerAnnotationView(annotation: annotation, reuseIdentifier: _identifier)
//            view.canShowCallout = true // A Boolean value indicating whether the annotation view is able to display extra information in a callout bubble.
//            view.calloutOffset = CGPoint(x: -5, y: 5)
//            view.rightCalloutAccessoryView = UIButton(type: .detailDisclosure)
//
//        }
        
        return nil
        
    }
    
}
