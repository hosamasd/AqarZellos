//
//  DynamicHeightTextField.swift
//  AqarZellos
//
//  Created by hosam on 03/08/2021.
//

import SwiftUI


struct DynamicHeightTextField: UIViewRepresentable {
    @Binding var text: String
    @Binding var height: CGFloat
    @Binding var isFocus: Bool

    func makeUIView(context: Context) -> UITextView {
        let textView = UITextView()

        textView.isScrollEnabled = true
        textView.alwaysBounceVertical = false
        textView.isEditable = true
        textView.font = .systemFont(ofSize: 16)
        textView.isUserInteractionEnabled = true
        textView.showsVerticalScrollIndicator=false
        textView.textColor = .black
        textView.text = text
        textView.backgroundColor = UIColor.clear

        context.coordinator.textView = textView
        textView.delegate = context.coordinator
        textView.layoutManager.delegate = context.coordinator

        return textView
    }

    func updateUIView(_ uiView: UITextView, context: Context) {
        uiView.text = text
    }


    func makeCoordinator() -> Coordinator {
        return Coordinator(dynamicSizeTextField: self)
    }
}


class Coordinator: NSObject, UITextViewDelegate, NSLayoutManagerDelegate {

    var dynamicHeightTextField: DynamicHeightTextField

    weak var textView: UITextView?


    init(dynamicSizeTextField: DynamicHeightTextField) {
        self.dynamicHeightTextField = dynamicSizeTextField
    }

    func textViewDidChange(_ textView: UITextView) {
        self.dynamicHeightTextField.text = textView.text
    }

    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        
        if (text == "\n") {
            textView.resignFirstResponder()
            return false
        }
        return true
    }

    func textViewDidBeginEditing(_ textView: UITextView) {
        dynamicHeightTextField.isFocus=true
    }
  
    func textViewDidEndEditing(_ textView: UITextView) {
        dynamicHeightTextField.isFocus=false

    }
    
    func layoutManager(_ layoutManager: NSLayoutManager, didCompleteLayoutFor textContainer: NSTextContainer?, atEnd layoutFinishedFlag: Bool) {

        DispatchQueue.main.async { [weak self] in
            guard let textView = self?.textView else {
                return
            }
            let size = textView.sizeThatFits(textView.bounds.size)
            if self?.dynamicHeightTextField.height != size.height {
                self?.dynamicHeightTextField.height = size.height
            }
        }

    }
}
