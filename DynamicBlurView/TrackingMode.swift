//
//  TrackingMode.swift
//  DynamicBlurView
//
//  Created by Kyohei Ito on 2017/08/17.
//  Copyright © 2017年 kyohei_ito. All rights reserved.
//

@objc public enum TrackingMode : Int, RawRepresentable {
    case tracking
    case common
    case none
    
    public typealias RawValue = String
    
    public var rawValue: RawValue {
        switch self {
        case .tracking:
            return RunLoopMode.UITrackingRunLoopMode.rawValue
        case .common:
            return RunLoopMode.commonModes.rawValue
        case .none:
            return ""
        }
    }
    
    public init?(rawValue: RawValue) {
        switch rawValue {
        case RunLoopMode.UITrackingRunLoopMode.rawValue:
            self = .tracking
        case RunLoopMode.commonModes.rawValue:
            self = .common
        default:
            self = .none
        }
    }
}
