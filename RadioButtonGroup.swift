struct RadioButtonGroup: View {
    var items: [RadioButtonModel]
    @Binding var selectedId: String
    var onClick: (String) -> Void
    
    
    var body: some View {
        VStack(alignment: .leading){
            
                ForEach(items, id: \.id) { radio in
                    RadioButton(onClick, isChecked:  radio.label == selectedId, label: radio.label)
                        .padding([.bottom], 20)
                }
            }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
        .background(Color.primary
          .colorInvert()
          .opacity(0.75))
    }
}
