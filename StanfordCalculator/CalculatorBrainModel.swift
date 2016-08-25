//
//  CalculatorBrainModel.swift
//  StanfordCalculator
//
//  Created by Dustin Morando on 8/25/16.
//  Copyright © 2016 Dustin Morando. All rights reserved.
//

import Foundation

class CalculatorBrain {
    
    private var accumulator = 0.0
    
    func setOperand(operand: Double){
        accumulator = operand
    }
    
    var operation: Dictionary<String,Operation> = [
        "π": Operation.Constant(M_PI),
        "e": Operation.Constant(M_E),
        "√": Operation.UnaryOperation, //sqrt,
        "cos": Operation.UnaryOperation
    ]
    
    enum Operation {
        case Constant(Double)
        case UnaryOperation
        case BinaryOperation
        case Equals
        
    }
    
    func performOperation(symbol: String) {
        if let operation = operation [symbol] {
            switch operation {
            case .Constant(let value): accumulator = value
            case .UnaryOperation: break
            case .BinaryOperation: break
            case .Equals: break
            }
            
        }
    }
    
    var result: Double {
        get{
            return accumulator
        }
    }
    
}