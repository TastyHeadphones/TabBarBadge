//
//  UIImage+Badge.swift
//  TabBarBadge
//
//  Created by younggeo on 7/11/24.
//

import UIKit

extension UIImage {
    func withBadge(iconColor: UIColor, badgeColor: UIColor = .red) -> UIImage {
        let render = UIGraphicsImageRenderer(size: size)
        return render.image { _ in
            let iconTintedImage = withRenderingMode(.alwaysTemplate)
            iconColor.setFill()
            iconTintedImage.draw(at: .zero)
            let badgeSize = CGSize(width: 8, height: 8)
            let badgeOrigin = CGPoint(x: size.width - badgeSize.width, y: 0)
            let badgeRect = CGRect(origin: badgeOrigin, size: badgeSize)
            let badgePath = UIBezierPath(ovalIn: badgeRect)
            badgeColor.setFill()
            badgePath.fill()
        }
        .withRenderingMode(.alwaysOriginal)
    }
}
