struct RadioButton: View {
    var onClick: ((String) -> Void?)
    var isChecked : Bool
    var label: String
    
    init(_ onClick: @escaping (String) -> Void, isChecked: Bool = false, label: String = "Test") {
        self.onClick = onClick
        self.isChecked = isChecked
        self.label = label
    }
    
    
    var body: some View {
        HStack {
            Button (
                action: {
                    withAnimation {
                        self.onClick(label)
                    }
                }
            ) {
                Image(systemName: isChecked ? "largecircle.fill.circle" : "circle")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 20, height: 20)
                    .foregroundColor(Color.rdy_color_allports)
                Text(label)
                
            }.foregroundColor(Color.black)
      
        }
        
    }
}
