//
//  RMService.swift
//  RickAndMorty
//
//  Created by Betül Erkantarcı on 7.05.2023.
//

import Foundation



/// Primary API service object to get Rick and Morty Data
final class RMService {
    
    /// Shared singelton instance
    static let shared = RMService()
    
    private init(){}
    
    /// Send Rick & Morty API Call
    /// - Parameters:
    ///   - request: Request Instance
    ///   - completion: Callback with data or error
    public func execute(_ request: RMRequest, completion: @escaping () -> Void){
        
    }
    
    
}
