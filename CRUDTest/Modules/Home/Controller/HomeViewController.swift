//
//  HomeViewController.swift
//  CRUDTest
//
//  Created by Infotech Solutions on 22/12/21.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var signUpButton: UIBarButtonItem!
    @IBOutlet weak var signInButton: UIBarButtonItem!
    
    var productList: [Product] = []
    
    private var isLoading = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupGestures()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupData()
    }
    
    //MARK: Setup View decoration and register view
    func setupView(){
        tableView.register(UINib.init(nibName: "ProductCell", bundle: nil), forCellReuseIdentifier: "ProductCell")
        searchBar.delegate = self
    }
    
    //MARK: View Gestures Setup
    func setupGestures(){
//        let hospitalGesture = UITapGestureRecognizer(target: self, action: #selector(self.showHospitals))
//        hospitalPickerView.isUserInteractionEnabled = true
//        hospitalPickerView.addGestureRecognizer(hospitalGesture)
    }
    
    //MARK: Setup Data - Fetch Data needed
    func setupData(){
        showProgressDialog(show: true)
        let fetchDataGroup = DispatchGroup()
        fetchProducts(dipatchGroup: fetchDataGroup)
        fetchDataGroup.notify(queue: DispatchQueue.main, execute: {
            self.showProgressDialog(show: false)
        })
    }
    
    //MARK: Fetch Doctor List
    func fetchProducts(dipatchGroup: DispatchGroup){
        dipatchGroup.enter()
        ProductRequest().getProductList { [weak self](response) in
            dipatchGroup.leave()
            if response.status, response.data != nil {
                self?.productList = response.data!

                DispatchQueue.main.async {
                    print("new productList list")
                    dump(self?.productList)
                    self?.tableView.reloadData()
                }
            } else {
                self?.isLoading = ((self?.onRequestFailed(message: response.message)) != nil)
            }
        }
    }
}


//MARK: SearchBar Delegate
extension HomeViewController : UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        updateDoctorList(searchText: searchText)
    }
    
    //MARK: - Update Product list based on search keyword
    func updateDoctorList(searchText: String){

        tableView.reloadData()
    }
}
    
//MARK: TableView Doctor List
extension HomeViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell", for: indexPath) as! ProductCell
        cell.product = productList[indexPath.row]
        return cell
    }
    
    
}
