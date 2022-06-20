//
//  ReelViews.swift
//  Slot Machine
//
//  Created by Jahaan Pardhanani on 6/20/22.
//

import SwiftUI

struct ReelViews: View {
    var body: some View {
        Image("gfx-reel")
            .resizable()
            .modifier(ImageModifier())
    }
}

struct ReelViews_Previews: PreviewProvider {
    static var previews: some View {
        ReelViews()
            .previewLayout(.fixed(width: 220, height: 220))
    }
}
