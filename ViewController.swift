//
//  ViewController.swift
//  Aplicativo-coivd
//
//  Created by kelvin mende silvaa on 01/07/22.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var Mapview: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
                let Location = CLLocationCoordinate2DMake(-23.5489, -46.6388)
                let annotation = MKPointAnnotation()
                annotation.coordinate = Location
                annotation.subtitle = "Sao paulo"
        
                let LocationRJ = CLLocationCoordinate2DMake(-22.9035, -43.2096)
                let annotationRJ = MKPointAnnotation()
                annotationRJ.coordinate = LocationRJ
                annotationRJ.subtitle = "Rio de janeiro"
        
                let LocationMG = CLLocationCoordinate2DMake(-19.912998, -43.940933)
                let annotationMG = MKPointAnnotation()
                annotationMG.coordinate = LocationMG
                annotationMG.subtitle = "Minas Gerais"
        
                let LocationES = CLLocationCoordinate2DMake(-20.3222, -40.3381)
                let annotationES = MKPointAnnotation()
                annotationES.coordinate = LocationES
                annotationES.subtitle = "Espirito Santo"

                let LocationPR = CLLocationCoordinate2DMake(-25.4284, -49.2733)
                let annotationPR = MKPointAnnotation()
                annotationPR.coordinate = LocationPR
                annotationPR.subtitle = "Paraná"
        
        
                Mapview.addAnnotation(annotation)
                Mapview.addAnnotation(annotationRJ)
                Mapview.addAnnotation(annotationMG)
                Mapview.addAnnotation(annotationES)
                Mapview.addAnnotation(annotationPR)
    }


}

