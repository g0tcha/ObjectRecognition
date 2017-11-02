//
//  PreviewView.swift
//  ObjectRecognition
//
//  Created by vincent on 02/11/2017.
//  Copyright © 2017 infostrates. All rights reserved.
//

import UIKit
import AVFoundation

class PreviewView: UIView {
    
    var videoPreviewLayer: AVCaptureVideoPreviewLayer {
        return layer as! AVCaptureVideoPreviewLayer
    }
    
    var session: AVCaptureSession? {
        get {
            return videoPreviewLayer.session
        }
        set {
            videoPreviewLayer.session = newValue
        }
    }
    
    override class var layerClass: AnyClass {
        return AVCaptureVideoPreviewLayer.self
    }
    
}
