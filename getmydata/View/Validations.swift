//
//  Validations.swift
//  getmydata
//
//  Created by Ammad on 01/09/2022.
//

import Foundation
class Validations{
    
    //Username Validation
    
    func validateUsername(str: String) -> Bool
    {
        do
        {
            let regex = try NSRegularExpression(pattern: "^[0-9a-zA-Z\\_]{7,18}$", options: .caseInsensitive)
            if regex.matches(in: str, options: [], range: NSMakeRange(0, str.count)).count > 0 {return true}
        }
        catch {}
        return false
    }
    
    
    
    
    
    
    
    
    
    
    //Password Validation

    
    //    check if password is strong ?
//
//    length more than or equal 8
//    lowercase
//    uppercase
//    decimal Digits
//    special characters like !@#$%^&*()_-+ is optional

    
  

    func isValidated(_ password: String) -> Bool {
         var lowerCaseLetter: Bool = false
         var upperCaseLetter: Bool = false
         var digit: Bool = false
         var specialCharacter: Bool = false

         if password.count  >= 8 {
             for char in password.unicodeScalars {
                 if !lowerCaseLetter {
                     lowerCaseLetter = CharacterSet.lowercaseLetters.contains(char)
                 }
                 if !upperCaseLetter {
                     upperCaseLetter = CharacterSet.uppercaseLetters.contains(char)
                 }
                 if !digit {
                     digit = CharacterSet.decimalDigits.contains(char)
                 }
                 if !specialCharacter {
                     specialCharacter = CharacterSet.punctuationCharacters.contains(char)
                 }
             }
             if specialCharacter || (digit && lowerCaseLetter && upperCaseLetter) {
                 //do what u want
                 return true
             }
             else {
                 return false
             }
         }
         return false
     }
    
    
    
    
}
