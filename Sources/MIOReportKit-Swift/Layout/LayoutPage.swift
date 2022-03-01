//
//  LayoutPage.swift
//  
//
//  Created by David Trallero on 22/06/2021.
//

import Foundation

public class Page: FooterHeaderContainer
{
    public init ( _ size: Size ) {
        super.init()
        self.size = size
        self.dimensions = size
    }
    
    override open func meassure ( _ context: RenderContext )
    {
        // DO NOT modify the size of a page, as renders treat them in special way
        let initial_size = size
        
        super.meassure( context )
        
        size = initial_size
    }
} // even / odd header
// render => is first child of page


public class A4: Page {
    // TODO: find a way to subclass or extend from other renders
    public convenience init ( ) { self.init( Size( width: 595, height: 842 ) ) }
}