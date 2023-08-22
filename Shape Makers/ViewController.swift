//
//  ViewController.swift
//  Shape Makers
//
//  Created by way to shine on 21/08/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var shapeChangeButton: UIButton!
    @IBOutlet weak var shapeNameLabel: UILabel!
    @IBOutlet weak var shapeBackgroundView: UIView!
    
    var shapeLayer = CAShapeLayer()
    var shapePath = UIBezierPath()
    var clickCount: Int = 1 // 1 - circle, 2 - square, 3 - triangle, 4 - star, 5 - rectAngle, 6 - oval, 7 - diamond.
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
        drawShape(clickCount: clickCount)
    }

    @IBAction func shapeChangingButtonAction(_ sender: UIButton) {
        
    }
    
}

extension ViewController {
    func setUpUI() {
        shapeNameLabel.text = AppConstants.shapeCircleString
    }
    func getShapeString(clickCount: Int) -> String {
        return ""
    }
    func drawShape(clickCount: Int) {
        shapeChangeButton.layer.cornerRadius = 8
        shapeBackgroundView.layer.cornerRadius = 10
        shapeBackgroundView.backgroundColor = clickCount == 1 ? ExtensionConstants().hexStringToUIColor(hex: ColorConstants.shapeCircleBgColor) : clickCount == 2 ? ExtensionConstants().hexStringToUIColor(hex: ColorConstants.shapeSquareBgColor) : clickCount == 3 ? ExtensionConstants().hexStringToUIColor(hex: ColorConstants.shapeTraingleBgColor) : clickCount == 4 ? ExtensionConstants().hexStringToUIColor(hex: ColorConstants.shapeCircleBgColor) : clickCount == 5 ? ExtensionConstants().hexStringToUIColor(hex: ColorConstants.shapeCircleShapeColor) : clickCount == 6 ? ExtensionConstants().hexStringToUIColor(hex: ColorConstants.shapeOvalBgColor) : ExtensionConstants().hexStringToUIColor(hex: ColorConstants.shapeDiamondBgColor)
        shapeLayer.path = shapePath.cgPath
        shapeLayer.lineWidth = 3.0
        shapeLayer.fillColor = ((clickCount == 1 ? ExtensionConstants().hexStringToUIColor(hex: ColorConstants.shapeCircleShapeColor) : clickCount == 2 ? ExtensionConstants().hexStringToUIColor(hex: ColorConstants.shapeCircleBgColor) : clickCount == 3 ? ExtensionConstants().hexStringToUIColor(hex: ColorConstants.shapeTraingleShapeColor) : clickCount == 4 ? ExtensionConstants().hexStringToUIColor(hex: ColorConstants.shapeStarShapeColor) : clickCount == 5 ? ExtensionConstants().hexStringToUIColor(hex: ColorConstants.shapeRectAngleShapeColor) : clickCount == 6 ? ExtensionConstants().hexStringToUIColor(hex: ColorConstants.shapeOvalShaapeColor) : ExtensionConstants().hexStringToUIColor(hex: ColorConstants.shapeDiamondShaapeColor)) as! CGColor)
        shapeLayer.strokeColor = ((clickCount == 1 ? ExtensionConstants().hexStringToUIColor(hex: ColorConstants.shapeCircleBgColor) : clickCount == 2 ? ExtensionConstants().hexStringToUIColor(hex: ColorConstants.shapeSquareBgColor) : clickCount == 3 ? ExtensionConstants().hexStringToUIColor(hex: ColorConstants.shapeTraingleBgColor) : clickCount == 4 ? ExtensionConstants().hexStringToUIColor(hex: ColorConstants.shapeCircleBgColor) : clickCount == 5 ? ExtensionConstants().hexStringToUIColor(hex: ColorConstants.shapeCircleShapeColor) : clickCount == 6 ? ExtensionConstants().hexStringToUIColor(hex: ColorConstants.shapeOvalBgColor) : ExtensionConstants().hexStringToUIColor(hex: ColorConstants.shapeDiamondBgColor)) as! CGColor)
        self.shapeBackgroundView.layer.addSublayer(shapeLayer)
    }
}
