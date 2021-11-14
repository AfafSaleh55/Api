

//
//  ViewController.swift
//  RM
//
//  Created by العــفاف . on 09/04/1443 AH.
//

import UIKit


class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getdagpi()
    }
    func getdagpi(){
//    https://api.mail.tm/docs.json

        
        var urlmail = URLComponents()
        urlmail.scheme = "https"
        urlmail.host = "docs.json"
        urlmail.path = "/api.mail.tm"
        
        //START Request
        let milRequestURL = urlmail.url!
        let milRequest = URLRequest(url: milRequestURL)
        //END of URL Request
        
        //start URL session

        let SessionConfig = URLSessionConfiguration.default
        SessionConfig.allowsCellularAccess = false
        SessionConfig.httpShouldSetCookies = false
        
        let milSession = URLSession(configuration: SessionConfig)
        
        let fetchDataTask = milSession.dataTask(with: milRequest) {
                        (data: Data!, response: URLResponse?, err: Error?) in
            print (String(data: data, encoding: .utf8))
        }.resume()
        
    }
//        var urlRequest = URLRequest(url:urlmail.url!)
//
//        let urlsession = URLSession.shared
//        let task = urlsession.dataTask(with: urlRequest) {
//            (data: Data!, response: URLResponse?, err: Error?) in
//            print (String(data: data, encoding: .utf8));
//
        
        
}
    
    
    




