//
//  CGImage.swift
//  ESCoreGraphicsExtension
//
//  Created by Tomohiro Kumagai on H27/07/31.
//  Copyright © 平成27年 EasyStyle G.K. All rights reserved.
//

import CoreGraphics

extension CGImage {
	
	public func widthScaleOf(size:CGSize) -> CGScale {
		
		return CGFloat(CGImageGetWidth(self)).scaleOf(size.width)
	}
	
	public func heightScaleOf(size:CGSize) -> CGScale {
		
		return CGFloat(CGImageGetHeight(self)).scaleOf(size.height)
	}
}
