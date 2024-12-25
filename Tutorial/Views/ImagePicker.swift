//
//  ImagePicker.swift
//  Tutorial
//
//  Created by Apple on 26.11.2024.
//


import SwiftUI
struct ImagePicker: UIViewControllerRepresentable {
@Binding var image: UIImage?

class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
let parent: ImagePicker

init(parent: ImagePicker) {
self.parent = parent
}

func imagePickerController(
_ picker: UIImagePickerController,
didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]
) {
if let uiImage = info[.originalImage] as? UIImage {
parent.image = uiImage
}
parent.presentationMode.wrappedValue.dismiss()
}
}

@Environment(\.presentationMode) var presentationMode

func makeCoordinator() -> Coordinator {
return Coordinator(parent: self)
}

func makeUIViewController(context: UIViewControllerRepresentableContext<ImagePicker>) ->
    UIImagePickerController {
        let picker = UIImagePickerController()
        picker.delegate = context.coordinator
        return picker
    }

    func updateUIViewController(
    _ uiViewController: UIImagePickerController,
    context: Context
    ) { }
    }
