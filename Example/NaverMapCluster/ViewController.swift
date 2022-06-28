//
//  ViewController.swift
//  NaverMapCluster
//
//  Created by heomm123@naver.com on 06/28/2022.
//  Copyright (c) 2022 heomm123@naver.com. All rights reserved.
//

import UIKit
import NaverMapClusterFramework
import NMapsMap
import SnapKit

class ViewController: UIViewController {
  struct marker: markerProtocol {
    var storeName: String = ""
    var latitude: CGFloat = 0.0
    var longitude: CGFloat = 0.0
    
    var clusterHandler: (() -> ())?
  }
  
  private let naverMapView = NMFNaverMapView()
  
  var clusterManager: ClusterManager?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.view.addSubview(naverMapView)
    naverMapView.snp.makeConstraints { make in
      make.edges.equalTo(self.view)
    }
    
    // 클러스터 매니저 생성시 Naver지도 객체를 전달.
    clusterManager = ClusterManager.init(mapView: self.naverMapView)
    
    
    // 마커를 선택했을때 그 마커의 중앙으로 이동할것인지에 대한 설정.
//    clusterManager?.setMoveCameraWithMarker(isMove: true)
    
    // 예제를 위해 임의의 클러스터 생성
    generateClusterItems()
    
    // 클러스터링 진행
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
      item.markerInfo = marker.init(storeName: "\(idx)", latitude: lat, longitude: lng, clusterHandler: { [weak self] in
        NSLog("클릭클릭 \(lat) - \(lng)")
        // 마커 클릭했을때의 동작 구현.
      })
      item.position = position
      clusterManager!.add(item)
    }
  }
  
  private func randomScale() -> Double {
    return Double(arc4random()) / Double(UINT32_MAX) * 2.0 - 1.0
  }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

