import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    private var shuttleBusLabel: UILabel = {
        var mainLabel = UILabel()
        mainLabel.text = "셔틀버스"
        mainLabel.font = UIFont.boldSystemFont(ofSize: 30)
        mainLabel.translatesAutoresizingMaskIntoConstraints = false
        
        return mainLabel
    }()
    
    private var TopTableView: UITableView = {
        var tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        tableView.isScrollEnabled = true
        tableView.showsHorizontalScrollIndicator = true
        tableView.showsVerticalScrollIndicator = false
        tableView.transform = CGAffineTransform(rotationAngle: CGFloat(-Double.pi / 2))
        
        return tableView
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(shuttleBusLabel)
        self.view.addSubview(TopTableView)
        
        NSLayoutConstraint.activate([
            shuttleBusLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30),
            shuttleBusLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 80)
        ])
        
        NSLayoutConstraint.activate([
            TopTableView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            TopTableView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 150),
            TopTableView.widthAnchor.constraint(equalToConstant: 350),
            TopTableView.heightAnchor.constraint(equalToConstant: 350) // 테이블 뷰의 높이 조정
        ])
        
        TopTableView.delegate = self
        TopTableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        // 셀 설정
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 350 // 각 셀의 높이 설정
    }
    
    
}
