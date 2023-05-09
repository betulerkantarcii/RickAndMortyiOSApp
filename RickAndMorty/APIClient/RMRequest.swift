//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by Betül Erkantarcı on 7.05.2023.
//

import Foundation

/// Object that represents a single API Call
final class RMRequest {
    
    
    /// API constants
    private struct Constants {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    /// Desired endpoint
    let endpoint: RMEndpoint
    
    let pathComponents: [String]
    
    let queryParameters: [URLQueryItem]
    
    
    /// constructed url for the API request in string format
    public var urlString: String {
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty{
            pathComponents.forEach({
                string += "/\($0)"
            })
        }
        
        if !queryParameters.isEmpty{
            string += "?"
            
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else{return nil}
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += argumentString
            
        }
        
        return string
        
    }
    
    public var url:URL? {
        return URL(string: urlString)
    }
    
    public let httpMethod = "GET"
    
    init(endpoint: RMEndpoint, pathComponents: [String] = [], queryParameters: [URLQueryItem] = []) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
    
}
