//
//  Logger.swift
//  Pods
//
//  Created by Mazen on 16/08/2017.
//
//

import Foundation

public protocol LoggerTree {
    func error(_ error: Error)
    func log(_ message: String)
}

public class ConsoleTree: LoggerTree {
    public func error(_ error: Error) {
        print(error.localizedDescription)
    }
    public func log(_ message: String) {
        print(message)
    }
}

public class Logger {
    fileprivate static var shared: Logger = Logger()
    var trees: [LoggerTree] = [ConsoleTree()]
    
    public static func error(_ error: Error) {
        Logger.shared.trees.forEach { (tree) in tree.error(error) }
    }
    
    public static func log(_ message: String) {
        Logger.shared.trees.forEach { (tree) in tree.log(message) }
    }
    
    public static func plant(_ tree: LoggerTree) {
        Logger.shared.trees.append(tree)
    }
}

