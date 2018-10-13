//
//  ViewController.swift
//  Triton Go
//
//  Created by Weiran Xiong on 10/12/18.
//  Copyright © 2018 Weiran Xiong. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {

  @IBOutlet weak var mapView: MKMapView!
  
  // inital map loc
  let initialLoc = CLLocation(latitude: 32.8801, longitude: -117.2340)
  let region = CLLocationDistance(5000)

  
  override func viewDidLoad() {
    super.viewDidLoad()
   
    let coordinateRegion = MKCoordinateRegion.init(center: initialLoc.coordinate, latitudinalMeters: region, longitudinalMeters: region)
    mapView.setRegion(coordinateRegion, animated: true)
    
  }


}

