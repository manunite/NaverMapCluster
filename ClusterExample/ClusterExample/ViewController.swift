//
//  ViewController.swift
//  ClusterExample
//
//  Created by heogj123 on 2022/06/29.
//

import UIKit
import NaverMapClusterFramework
import NMapsMap
import SnapKit

class ViewController: UIViewController {
  
  struct marker: markerProtocol {
    var markerName: String = ""
    var latitude: CGFloat = 0.0
    var longitude: CGFloat = 0.0
    
    var markerHandler: (() -> ())?
  }
  
  private let naverMapView = NMFNaverMapView()
  
  var clusterManager: ClusterManager?
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    self.view.addSubview(naverMapView)
    naverMapView.snp.makeConstraints { make in
      make.edges.equalTo(self.view)
    }
    
    clusterManager = ClusterManager.init(mapView: self.naverMapView)
    generateClusterItems()
    clusterManager!.cluster()
  }

  let kClusterItemCount = 500
  let kCameraLatitude = 36.0109466
  let kCameraLongitude = 127.7890828
  
  private func generateClusterItems() {
    let extent = 1.5
    for idx in 1...kClusterItemCount {
      let lat = kCameraLatitude + extent * randomScale()
      let lng = kCameraLongitude + extent * randomScale()
      let position = CLLocationCoordinate2D(latitude: lat, longitude: lng)
      let item = ClusterItem.init()
      item.markerInfo = marker.init(markerName: "\(idx)", latitude: lat, longitude: lng, markerHandler: { [weak self] in
        NSLog("클릭클릭 \(lat) - \(lng)")
        // 마커에대한 동작 구현.
      })
      item.position = position
      clusterManager!.add(item)
    }
  }
  
  private func randomScale() -> Double {
    return Double(arc4random()) / Double(UINT32_MAX) * 2.0 - 1.0
  }

}

