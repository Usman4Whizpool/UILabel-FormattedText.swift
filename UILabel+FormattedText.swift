//
//  UILabel+FormattedText.swift
//  UILabel+FormattedText
//  Usman Nisar
//  copyright 2017 :)
//

import Foundation
import UIKit

extension UILabel {

    func underLineText(text:String) {
        let underlineAttriString = NSAttributedString(string:text, attributes:
            [NSUnderlineStyleAttributeName: NSUnderlineStyle.styleSingle.rawValue])
        
        self.attributedText = underlineAttriString
    }
    
    func underLinePartOfText(textToChange:String) {

        let range = self.text?.range(of: textToChange)
        let nsRange = self.text?.nsRange(from: range!)
        let text = NSMutableAttributedString(attributedString: (self.attributedText)!)
        text.addAttribute(NSForegroundColorAttributeName, value: UIConstants.appMainColor, range: nsRange!)
        text.addAttribute(NSUnderlineStyleAttributeName, value: NSUnderlineStyle.styleSingle.rawValue, range: nsRange!)
        self.attributedText = text
    }
}

extension String {
    func nsRange(from range: Range<Index>) -> NSRange {
        return NSRange(range, in: self)
    }
}
