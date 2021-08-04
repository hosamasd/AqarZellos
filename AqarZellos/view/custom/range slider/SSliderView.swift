//
//  SSliderView.swift
//  AqarZellos
//
//  Created by hosam on 04/08/2021.
//

import SwiftUI

struct SSliderView: View {
    @ObservedObject var slider: CustomSlider
    var body: some View {
        RoundedRectangle(cornerRadius: slider.lineWidth)
            .fill(Color.gray.opacity(0.2))
            .frame(width: slider.width, height: slider.lineWidth)
            .overlay(
                ZStack {
                    //Path between both handles
                    SSliderPathBetweenView(slider: slider)
                    
                    //Low Handle
                    SSliderHandleView(handle: slider.lowHandle)
                        .highPriorityGesture(slider.lowHandle.sliderDragGesture)
                    
                    //High Handle
                    SSliderHandleView(handle: slider.highHandle)
                        .highPriorityGesture(slider.highHandle.sliderDragGesture)
                }
            )
    }
}

struct SSliderPathBetweenView: View {
    @ObservedObject var slider: CustomSlider
    
    var body: some View {
        Path { path in
            path.move(to: slider.lowHandle.currentLocation)
            path.addLine(to: slider.highHandle.currentLocation)
        }
        .stroke(Color("contac"), lineWidth: slider.lineWidth)
    }
}

struct SSliderHandleView: View {
    @ObservedObject var handle: SliderHandle
    
    var body: some View {
        Circle()
            .frame(width: handle.diameter, height: handle.diameter)
            .foregroundColor(Color("cha"))
            .shadow(color: Color.black.opacity(0.15), radius: 8, x: 0, y: 0)
            .scaleEffect(handle.onDrag ? 0.7 : 0.5)
            .contentShape(Rectangle())
            .position(x: handle.currentLocation.x, y: handle.currentLocation.y)
    }
}

struct SSliderView_Previews: PreviewProvider {
    static var previews: some View {
        SSliderView(slider: CustomSlider(start: 10, end: 100))
    }
}
