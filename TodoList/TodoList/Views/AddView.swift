//
//  AddView.swift
//  TodoList
//
//  Created by Tlanetzi Chavez Madero on 26/04/24.
//

import SwiftUI

struct AddView: View {
    
    @Environment(\.presentationMode) var presentatinMode
    @EnvironmentObject var listViewModel: ListViewModel
    @State var textFieldText: String = ""
    
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    var body: some View {
        ScrollView{
            VStack {
                TextField("Type something here...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(UIColor.secondarySystemBackground))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                
                Button(action: saveButtonPress, label: {
                    Text("Save".uppercased())
                        .foregroundStyle(Color.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                })
            }
            .padding(14)
        }
        .navigationTitle("Add an Item 🖊️")
        .alert(isPresented: $showAlert, content: getAlert)
    }
    
    func saveButtonPress() {
        if textIsApropiate() {
            listViewModel.addItem(title: textFieldText)
            presentatinMode.wrappedValue.dismiss() // go back in the view hierarchy
        }
    }
    
    func textIsApropiate() -> Bool {
        if textFieldText.count < 3 {
            alertTitle = "Your new todo item must be at least 3 chars long"
            showAlert.toggle()
            return false
        }
        return true
    }
    
    func getAlert() -> Alert {
        return Alert(title: Text(alertTitle))
    }
}

#Preview {
    NavigationStack{
        AddView()
    }
    .environmentObject(ListViewModel())
}
