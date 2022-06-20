//
//  InfoView.swift
//  Slot Machine
//
//  Created by Jahaan Pardhanani on 6/20/22.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            LogoView()
            
            Spacer()
            
            Form {
                Section(header: Text("About the application")) {
                    FormRowView()
                }
            }
            .font(.system(.body, design: .rounded))
        }
    }
}

struct FormRowView: View {
    var body: some View {
        HStack {
            Text("Application").foregroundColor(Color.gray)
            Spacer()
            Text("Slot Machine")
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
