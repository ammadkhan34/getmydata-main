//
//  Upload.swift
//  getmydata
//
//  Created by Ammad on 10/07/2022.
//

import Foundation
import UIKit
class Upload{
    
     var dataobj=Model()
    var mydat1:single = single()
    var mylabel:UILabel!
    init(_ label2:UILabel){
        
        mylabel = label2
        
    }
    func gettodata(_ loaddata:Upload){
  

        
        
        let myurl="https://reacttask.mkdlabs.com/v2/api/lambda/login"
      //  let myurl="https://reacttask.mkdlabs.com/v2/api/lambda/register"
        let mytok="eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMDZmYmQ1OTkwM2VjNWE2NWJmNmNiYmFiZjkwMmIxYmZkMTk1MjA1NzY1NTFkZDBiMGU2NDYwNmM1ZDUwMjQ0NTdiYjdiZTEzZWY3N2Q2YjQiLCJpYXQiOjE2NjA0ODMxMDYsIm5iZiI6MTY2MDQ4MzEwNiwiZXhwIjoxNjkyMDE5MTA2LCJzdWIiOiI3MDgiLCJzY29wZXMiOltdfQ.t7muPWrp8oC0RAK9pQYL9qxEIqFO5AEapekbtPqdDgfDMNmUv3VNfPsNVhVhyC1h0McgnldTDOs9arzPu2W_xZoDd_axyBdvnnRaptayA37lxDVMXiExquD-Fhlit7aTmwNC_er8tr4QCj0BdA7CyPiZnMtzGXrfD7agdz4puswFbG_7w1aadDB-pziQr9dkJ3Zkilw15QVciwItr44Xv7qRqe4oaHaj3xwRw1YYn6QVJQPAYIbk18SVDOE8EXalomDq99JqPZRI0JnGDMkswDEks7u-clGdvI5VG2HJ6h_XeunnCfVdrkXLNd_lvlog5cU_omUvphHQX7yIrcPoiBbz8PaGkrokuqt4QeBbjkgrd54UPidHtIlec_iNIbvLsEIDBM5kU3jlNUzAPc-Hku4KbK0WegwjfwFiu3obe5QCZaQyxJvc0NTE-8fYDs3RNdu-_3-eboktflgecZLsOH2NAAYjJJBEW3_Op1OM0eIIHQDmAum4ajmeqle7Zm00EsIwMqT7Wa9F2UmhLq5zW2u2eHb3QcoDg6tVTzAy5H24O1-1CwLhF9ZBJnxMoGGknDgfzOuEv-xO1nbbpUxaUGTEfraHjH_2P05wMKTA13JH93ICHeHBJKiK2IVGQDNLEjF__co-cr8ZjlUX5DCBzdezuywCZCt43pn55yYfE7E"
        let mymet="POST"
        var  myres=self.dataobj.data
       
        var mynetwork=Network()
       // print("yes")
        mynetwork.loadData(myurl,mytok,mymet,loaddata,myres)
        

    //print("yes")
        
    }
    
    func registerdata(_ loaddata:Upload){
  

        
        
      //  let myurl="https://reacttask.mkdlabs.com/v2/api/lambda/login"
        let myurl="https://reacttask.mkdlabs.com/v2/api/lambda/register"
        let mytok="eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMDZmYmQ1OTkwM2VjNWE2NWJmNmNiYmFiZjkwMmIxYmZkMTk1MjA1NzY1NTFkZDBiMGU2NDYwNmM1ZDUwMjQ0NTdiYjdiZTEzZWY3N2Q2YjQiLCJpYXQiOjE2NjA0ODMxMDYsIm5iZiI6MTY2MDQ4MzEwNiwiZXhwIjoxNjkyMDE5MTA2LCJzdWIiOiI3MDgiLCJzY29wZXMiOltdfQ.t7muPWrp8oC0RAK9pQYL9qxEIqFO5AEapekbtPqdDgfDMNmUv3VNfPsNVhVhyC1h0McgnldTDOs9arzPu2W_xZoDd_axyBdvnnRaptayA37lxDVMXiExquD-Fhlit7aTmwNC_er8tr4QCj0BdA7CyPiZnMtzGXrfD7agdz4puswFbG_7w1aadDB-pziQr9dkJ3Zkilw15QVciwItr44Xv7qRqe4oaHaj3xwRw1YYn6QVJQPAYIbk18SVDOE8EXalomDq99JqPZRI0JnGDMkswDEks7u-clGdvI5VG2HJ6h_XeunnCfVdrkXLNd_lvlog5cU_omUvphHQX7yIrcPoiBbz8PaGkrokuqt4QeBbjkgrd54UPidHtIlec_iNIbvLsEIDBM5kU3jlNUzAPc-Hku4KbK0WegwjfwFiu3obe5QCZaQyxJvc0NTE-8fYDs3RNdu-_3-eboktflgecZLsOH2NAAYjJJBEW3_Op1OM0eIIHQDmAum4ajmeqle7Zm00EsIwMqT7Wa9F2UmhLq5zW2u2eHb3QcoDg6tVTzAy5H24O1-1CwLhF9ZBJnxMoGGknDgfzOuEv-xO1nbbpUxaUGTEfraHjH_2P05wMKTA13JH93ICHeHBJKiK2IVGQDNLEjF__co-cr8ZjlUX5DCBzdezuywCZCt43pn55yYfE7E"
        let mymet="POST"
        var  myres=self.dataobj.data
       
        var mynetwork=Network()
       // print("yes")
        mynetwork.loadData1(myurl,mytok,mymet,loaddata,myres)
        

    //print("yes")
        
    }
    
    
    func assignme(_ obj:Upload){
        mydat1=obj.mydat1
        
    }
    
    
    func printdata(){
        print("I am inside")
        mylabel.text=mydat1.name
        print(mydat1.name)
        
    }
    
    

    
    
    
    
}
