//
//  Operators.swift
//  ESCoreGraphicsExtension
//
//  Created by Tomohiro Kumagai on H27/07/29.
//  Copyright © 平成27年 EasyStyle G.K. All rights reserved.
//

import Swim

extension CGPoint : FourArithmeticType {
	
	public static func add(lhs: CGPoint, _ rhs: CGPoint) -> CGPoint {
		
		let x = lhs.x + rhs.x
		let y = lhs.y + rhs.y
		
		return CGPoint(x: x, y: y)
	}

	public static func subtract(lhs: CGPoint, _ rhs: CGPoint) -> CGPoint {
		
		let x = lhs.x - rhs.x
		let y = lhs.y - rhs.y
		
		return CGPoint(x: x, y: y)
	}
	
	public static func multiply(lhs: CGPoint, _ rhs: CGPoint) -> CGPoint {
		
		let x = lhs.x * rhs.x
		let y = lhs.y * rhs.y
		
		return CGPoint(x: x, y: y)
	}
	
	public static func divide(lhs: CGPoint, _ rhs: CGPoint) -> CGPoint {
		
		let x = lhs.x / rhs.x
		let y = lhs.y / rhs.y
		
		return CGPoint(x: x, y: y)
	}
}

extension CGSize : FourArithmeticType {

	public static func add(lhs:CGSize, _ rhs:CGSize) -> CGSize {
	
		let width = lhs.width + rhs.width
		let height = lhs.height + rhs.height
	
		return CGSize(width: width, height: height)
	}
	
	public static func subtract(lhs:CGSize, _ rhs:CGSize) -> CGSize {
		
		guard lhs.width >= rhs.width && lhs.height >= rhs.height else {
			
			fatalError()
		}
		
		let width = lhs.width - rhs.width
		let height = lhs.height - rhs.height
		
		return CGSize(width: width, height: height)
	}
	
	public static func multiply(lhs: CGSize, _ rhs: CGSize) -> CGSize {
		
		let width = lhs.width * rhs.width
		let height = lhs.height * rhs.height
		
		return CGSize(width: width, height: height)
	}
	
	public static func divide(lhs: CGSize, _ rhs: CGSize) -> CGSize {
		
		let width = lhs.width / rhs.width
		let height = lhs.height / rhs.height
		
		return CGSize(width: width, height: height)
	}
}

