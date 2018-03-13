//
//  ItemDetailVC.swift
//  MyDreamList
//
//  Created by Parima Ayazi on 13/03/2018.
//  Copyright © 2018 Parima Ayazi. All rights reserved.
//

import UIKit
import CoreData

class ItemDetailVC: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var storePicker: UIPickerView!
    @IBOutlet weak var titleField: CustomTextField!
    @IBOutlet weak var priceField: CustomTextField!
    @IBOutlet weak var detailsField: CustomTextField!
    
    var stores = [Store]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let topItem = self.navigationController?.navigationBar.topItem {
            topItem.backBarButtonItem = UIBarButtonItem (title: "", style: UIBarButtonItemStyle.plain, target: nil, action: nil)
        }
        
        storePicker.delegate = self
        storePicker.dataSource = self
        
        let store = Store(context: context)
        store.name = "Best Buy"
        let store1 = Store(context: context)
        store1.name = "Amazon"
        let store2 = Store(context: context)
        store2.name = "Target"
        let store3 = Store(context: context)
        store3.name = "Wallmart"
        let store4 = Store(context: context)
        store4.name = "Tesla Dealership"
        
        appDelegate.saveContext()
        
        getStores()
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        let store = stores[row]
        return store.name
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return stores.count
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
       
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
    }
    
    func getStores() {
        let fetchRequest : NSFetchRequest<Store> = Store.fetchRequest()
        
        do {
            self.stores = try context.fetch(fetchRequest)
            storePicker.reloadAllComponents()
        } catch {
            let error = error as NSError
            print("\(error))")
        }
        
    }


}
