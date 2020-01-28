import AsyncDisplayKit
import UIKit

final class ASTextNode2CellNode: ASCellNode {
  let text1 = ASTextNode()
  let text2 = ASTextNode2()

  override init() {
    super.init()
    
    addSubnode(text1)
    addSubnode(text2)
    text1.attributedText = NSAttributedString(
      string: "ASTextNode Strikethrough",
      attributes: [
        NSAttributedString.Key.strikethroughStyle: NSUnderlineStyle.single.rawValue,
      ])
    text2.attributedText = NSAttributedString(
      string: "ASTextNode2 Strikethrough",
      attributes: [
        NSAttributedString.Key.strikethroughStyle: NSUnderlineStyle.single.rawValue,
      ])
  }

  override func layoutSpecThatFits(_ constrainedSize: ASSizeRange) -> ASLayoutSpec {
    
    return ASStackLayoutSpec(
      direction: .horizontal,
      spacing: 16,
      justifyContent: .center,
      alignItems: .center,
      children: [ text1, text2 ])
  }
}
