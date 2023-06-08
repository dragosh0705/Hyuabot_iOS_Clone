
import UIKit

class ViewController: UIViewController {
    
    private var ShuttleBusLabel : UILabel = {
        var MainLabel = UILabel()
        MainLabel.text = "셔틀버스"
        MainLabel.font = UIFont.boldSystemFont(ofSize: 30)
        MainLabel.translatesAutoresizingMaskIntoConstraints = false
        
        return MainLabel
    }()
    
    private var stack: UIStackView {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.spacing = 8
        stack.distribution = .fill
        stack.alignment = .leading
        stack.layoutMargins = UIEdgeInsets(top: 16, left: 16, bottom: 16, right: 16)
        stack.isLayoutMarginsRelativeArrangement = true
        
        stack.layer.cornerRadius = 14.0
        stack.layer.shadowColor = UIColor.black.cgColor
        stack.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        stack.layer.shadowOpacity = 0.1
        stack.layer.shadowRadius = 3.0

        return stack
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(ShuttleBusLabel)
        self.view.addSubview(stack)
        
        NSLayoutConstraint.activate([
            self.ShuttleBusLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30),
            self.ShuttleBusLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 80)
        ])
        
        // Add subviews to the stack view
        for _ in 1...3 {
            let subview = UIView()
            subview.backgroundColor = .red
            stack.addArrangedSubview(subview)
            subview.widthAnchor.constraint(equalToConstant: 50).isActive = true
            subview.heightAnchor.constraint(equalToConstant: 50).isActive = true
        }
        
        NSLayoutConstraint.activate([
            self.stack.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30),
            self.stack.topAnchor.constraint(equalTo: self.ShuttleBusLabel.bottomAnchor, constant: 16),
            self.stack.trailingAnchor.constraint(lessThanOrEqualTo: self.view.trailingAnchor, constant: -30)
        ])
    }




}

