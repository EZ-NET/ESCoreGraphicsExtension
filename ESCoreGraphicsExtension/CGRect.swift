//
//  CGRect.swift
//  ESCoreGraphicsExtension
//
//  Created by Tomohiro Kumagai on H27/07/29.
//  Copyright © 2015 EasyStyle G.K. All rights reserved.
//

import CoreGraphics
import Swim

// MARK: - Calculate

extension CGRect {
	
	func applyMargin(margin:Margin<CGFloat>) -> CGRect {
		
		let origin = self.origin - CGPoint(x: margin.left, y: margin.top)
		let size = self.size + CGSize(width: margin.horizontalTotal, height: margin.verticalTotal)
		
		return CGRect(origin: origin, size: size)
	}
	
	func applyPadding(padding:Margin<CGFloat>) -> CGRect {
		
		let origin = self.origin + CGPoint(x: padding.left, y: padding.top)
		let size = self.size - CGSize(width: padding.horizontalTotal, height: padding.verticalTotal)
		
		return CGRect(origin: origin, size: size)
	}
	
	public func centerOf(rect:CGRect, truncate truncateIfNeeded:Bool = true) -> CGRect {
		
		let x = (rect.width - self.width).halfValue
		let y = (rect.height - self.height).halfValue
		
		let origin = CGPoint(x: x, y: y).truncate(truncateIfNeeded)
		
		return self.replaced(origin: origin)
	}
}

// MARK: - Scaleable & Truncateable

extension CGRect : Scaleable, Truncateable {
	
	public typealias Scale = CGScale

	public func scaled(scale:CGScale) -> CGRect {
		
		guard !scale.isSameMagnification else {
			
			return self
		}
		
		let origin = self.origin.scaled(scale)
		let size = self.size.scaled(scale)
		
		return CGRect(origin: origin, size: size)
	}
	
	public func truncate() -> CGRect {
		
		let origin = self.origin.truncate()
		let size = self.size.truncate()
		
		return CGRect(origin: origin, size: size)
	}
}

extension CGRect {
	
	public func widthScaleOf(rect:CGRect) -> CGScale {
		
		return self.size.widthScaleOf(rect.size)
	}
	
	public func heightScaleOf(rect:CGRect) -> CGScale {
		
		return self.size.heightScaleOf(rect.size)
	}
}
