enum InlineMessageType {
    case info, error, warning, success
}

struct InlineMessage : Identifiable{
    var id = UUID()
    let type: InlineMessageType
    let message: String
}


struct InlineMessagesView : View {
    var inlineMessages:  [InlineMessage]
    @State private var contentSize: CGSize = .zero
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 0) {
                ForEach(inlineMessages, id: \.id) { item in
                    InlineMessageView(inlineMessage: item)
                }
            }.background(                
                GeometryReader { geo -> Color in //This can be used alternatively
                    DispatchQueue.main.async {
                        contentSize = geo.size
                    }
                    return Color.clear
                }
            )
        }
        .frame(height: contentSize.height)
        
    }
}


struct InlineMessageView : View {
    var inlineMessage: InlineMessage
    
    var body: some View {
        HStack {
            Image(InlineMessageStyleUtils.getMessageIcons(type: inlineMessage.type))
                .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                .foregroundColor(InlineMessageStyleUtils.getIconForegroundColor(type: inlineMessage.type))
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            Text(inlineMessage.message).font(.custom("NotoSans-Regular", size:18))
            Spacer()
        }
        .padding()
        .background(InlineMessageStyleUtils.getBackgroundColor(type: inlineMessage.type))
        .border(InlineMessageStyleUtils.getBorderColor(type: inlineMessage.type))
    }
}
