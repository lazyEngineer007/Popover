//
//  PopupControllerViewController.swift
//  PopoverPresentationExample
//

import UIKit

final class PopupControllerViewController: UIViewController {
    @IBOutlet weak var descLable: UILabel!
    @IBOutlet weak var closeAction: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap = UITapGestureRecognizer(target: self, action: #selector(didTapClose))
        closeAction.addGestureRecognizer(tap)
    }
    @objc func didTapClose()
    {
        self.dismiss(animated: true)
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        descLable.preferredMaxLayoutWidth = descLable.frame.width
    }
    override var preferredContentSize: CGSize
    {
        get
        {
            return CGSize.init(width: CGFloat(self.view.frame.width - 60), height: calculatePreferredHeight())
        }
        set { super.preferredContentSize = newValue }
    }
    private func calculatePreferredHeight() -> CGFloat {
        view.layoutIfNeeded()
        let contentHeight = view.systemLayoutSizeFitting(UIView.layoutFittingCompressedSize).height
        return contentHeight
    }

}
