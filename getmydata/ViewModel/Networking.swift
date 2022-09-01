//
//  Networking.swift
//  getmydata
//
//  Created by Ammad on 12/07/2022.
//

import Foundation
//import SwiftyJSON
import UIKit
struct User:Codable{
    //let annon_check ? = nil
        let follower:Int
        let following:Int
    
}
class Network{
    
    
    func loadData3(_ myurl:String,_ tok:String,_ met:String,_ loaddata:Upload,_ myres:single) {
        var dataobj=myres
         
       

        guard let url = URL(string:myurl ) else {
                print("Invalid URL")
             //   break
          return
            
            }
        
        
     
        
        url.appending("email", value: "member@manaknight.com")
      //  url.appending("last_name", value: "a123456")
       // url.appending("role", value: "member")

        
        
       // url.appending("email", value: "adminreacttask@manaknight.com")
        //url.appending("password", value: "a123456")
      //  url.appending("role", value: "admin")
      //  url.appending("x-project", value: "cmVhY3R0YXNrOjVmY2h4bjVtOGhibzZqY3hpcTN4ZGRvZm9kb2Fjc2t5ZQ==")

        var request = URLRequest(url: url)

        request.httpMethod = met

        URLSession.shared.dataTask(with: request) { [self] data, response, error in






            print("My data is",data)
            print("My data1 is",data?.description)



            if error != nil {
                          print("some error occured")
                      } else {


var mydat=data
                          if let urlContent = mydat {
//print(urlContent)
                              do{
                                  let jsonResult = try JSONSerialization.jsonObject(with: urlContent, options: JSONSerialization.ReadingOptions.mutableContainers)

                                  print("Json result is",jsonResult)
                                  // I would not recommend to use NSDictionary, try using Swift types instead
                                  guard let newValue = jsonResult as? [String: Any] else {
                                      print("invalid format")
                                      return
                                  }

                                  // Check for the weather parameter as an array of dictionaries and than excess the first array's description
                                  print(newValue.keys)


                              }catch {
                                  print("JSON Preocessing failed")
                              }
                          }
                      }








            }.resume()

  
        return
    }
    
    func loadData2(_ myurl:String,_ tok:String,_ met:String,_ loaddata:Upload,_ myres:single) {
        var dataobj=myres
         
       

        guard let url = URL(string:myurl ) else {
                print("Invalid URL")
             //   break
          return
            
            }
        
        
     
        
        url.appending("first_name", value: "member@manaknight.com")
        url.appending("last_name", value: "a123456")
       // url.appending("role", value: "member")

        
        
       // url.appending("email", value: "adminreacttask@manaknight.com")
        //url.appending("password", value: "a123456")
      //  url.appending("role", value: "admin")
      //  url.appending("x-project", value: "cmVhY3R0YXNrOjVmY2h4bjVtOGhibzZqY3hpcTN4ZGRvZm9kb2Fjc2t5ZQ==")

        var request = URLRequest(url: url)

        request.httpMethod = met

        URLSession.shared.dataTask(with: request) { [self] data, response, error in






            print("My data is",data)
            print("My data1 is",data?.description)



            if error != nil {
                          print("some error occured")
                      } else {


var mydat=data
                          if let urlContent = mydat {
//print(urlContent)
                              do{
                                  let jsonResult = try JSONSerialization.jsonObject(with: urlContent, options: JSONSerialization.ReadingOptions.mutableContainers)

                                  print("Json result is",jsonResult)
                                  // I would not recommend to use NSDictionary, try using Swift types instead
                                  guard let newValue = jsonResult as? [String: Any] else {
                                      print("invalid format")
                                      return
                                  }

                                  // Check for the weather parameter as an array of dictionaries and than excess the first array's description
                                  print(newValue.keys)


                              }catch {
                                  print("JSON Preocessing failed")
                              }
                          }
                      }








            }.resume()

  
        return
    }
    
    
    
    
    
    
    func loadData1(_ myurl:String,_ tok:String,_ met:String,_ loaddata:Upload,_ myres:single) {
        var dataobj=myres
         
       

        guard let url = URL(string:myurl ) else {
                print("Invalid URL")
             //   break
          return
            
            }
        
        
     
        
        url.appending("email", value: "member@manaknight.com")
        url.appending("password", value: "a123456")
        url.appending("role", value: "member")

        
        
       // url.appending("email", value: "adminreacttask@manaknight.com")
        //url.appending("password", value: "a123456")
      //  url.appending("role", value: "admin")
      //  url.appending("x-project", value: "cmVhY3R0YXNrOjVmY2h4bjVtOGhibzZqY3hpcTN4ZGRvZm9kb2Fjc2t5ZQ==")

        var request = URLRequest(url: url)

        request.httpMethod = met

        URLSession.shared.dataTask(with: request) { [self] data, response, error in






            print("My data is",data)
            print("My data1 is",data?.description)



            if error != nil {
                          print("some error occured")
                      } else {


var mydat=data
                          if let urlContent = mydat {
//print(urlContent)
                              do{
                                  let jsonResult = try JSONSerialization.jsonObject(with: urlContent, options: JSONSerialization.ReadingOptions.mutableContainers)

                                  print("Json result is",jsonResult)
                                  // I would not recommend to use NSDictionary, try using Swift types instead
                                  guard let newValue = jsonResult as? [String: Any] else {
                                      print("invalid format")
                                      return
                                  }

                                  // Check for the weather parameter as an array of dictionaries and than excess the first array's description
                                  print(newValue.keys)


                              }catch {
                                  print("JSON Preocessing failed")
                              }
                          }
                      }








            }.resume()

  
        return
    }
    func loadData(_ myurl:String,_ tok:String,_ met:String,_ loaddata:Upload,_ myres:single) {
        var dataobj=myres
         
       

        guard let url = URL(string:myurl ) else {
                print("Invalid URL")
             //   break
          return
            
            }
        
        
        let body: [String: Any] = ["email": "adminreacttask@manaknight.com", "password": "a123456"]
        var request = URLRequest(url: url)
        
        do {
            let jsonData = try JSONSerialization.data(withJSONObject: body, options: .prettyPrinted)
            request.httpBody = jsonData
        } catch let e {
            print(e)
        }
            
        request.httpMethod = met
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")

        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data, error == nil else {
                print(error?.localizedDescription ?? "No data")
                return
            }
            let responseJSON = try? JSONSerialization.jsonObject(with: data, options: [])
            if let responseJSON = responseJSON as? [String: Any] {
                print(responseJSON)
            }
        }

        task.resume()
        
//        url.appending("email", value: "member@manaknight.com")
//        url.appending("password", value: "a123456")
//        url.appending("role", value: "member")

        
        
//        url.appending("email", value: "adminreacttask@manaknight.com")
//        url.appending("password", value: "a123456")
//      //  url.appending("role", value: "admin")
//      //  url.appending("x-project", value: "cmVhY3R0YXNrOjVmY2h4bjVtOGhibzZqY3hpcTN4ZGRvZm9kb2Fjc2t5ZQ==")
//
//        var request = URLRequest(url: url)
//
//        request.httpMethod = met
//
//        URLSession.shared.dataTask(with: request) { [self] data, response, error in
//
//
//
//
//
//
//            print("My data is",data)
//            print("My data1 is",data?.description)
//
//
//
//            if error != nil {
//                          print("some error occured")
//                      } else {
//
//
//var mydat=data
//                          if let urlContent = mydat {
////print(urlContent)
//                              do{
//                                  let jsonResult = try JSONSerialization.jsonObject(with: urlContent, options: JSONSerialization.ReadingOptions.mutableContainers)
//
//                                  print("Json result is",jsonResult)
//                                  // I would not recommend to use NSDictionary, try using Swift types instead
//                                  guard let newValue = jsonResult as? [String: Any] else {
//                                      print("invalid format")
//                                      return
//                                  }
//
//                                  // Check for the weather parameter as an array of dictionaries and than excess the first array's description
//                                  print(newValue.keys)
//
//
//                              }catch {
//                                  print("JSON Preocessing failed")
//                              }
//                          }
//                      }
//
//
//
//
//
//
//
//
//            }.resume()
//
  
        return
    }
  
    
}

extension URL {

    func appending(_ queryItem: String, value: String?) -> URL {

        guard var urlComponents = URLComponents(string: absoluteString) else { return absoluteURL }

        // Create array of existing query items
        var queryItems: [URLQueryItem] = urlComponents.queryItems ??  []

        // Create query item
        let queryItem = URLQueryItem(name: queryItem, value: value)

        // Append the new query item in the existing query items array
        queryItems.append(queryItem)

        // Append updated query items array in the url component object
        urlComponents.queryItems = queryItems

        // Returns the url from new url components
        return urlComponents.url!
    }
}
