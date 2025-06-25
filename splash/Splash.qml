import QtQuick 2.1


Image {
    id: root

    property int stage

    FontLoader {
        id: minecraftFont
        source: "resources/MinecraftRegular-Bmg3.otf"
    }

    source: "images/background.png"

    Image {
        id: stageImage
        anchors.horizontalCenter: parent.horizontalCenter
        y: root.height * 0.44
        height: root.height * 0.13
        width: height * (178/176)
        source: stage === 1 ? "images/stage1.png" :
                stage === 2 ? "images/stage2.png" :
                stage === 3 ? "images/stage3.png" :
                stage === 4 ? "images/stage4.png" :
                stage === 5 ? "images/stage5.png" :
                              "images/stage6.png"

        Text {
            color: "#ffffff"
            font {
                pixelSize: root.height * 0.021
                family: minecraftFont.name
            }
            // these percentage values are not really accurate and were chosen somewhat arbitrarily
            text: stage === 1 ? "8%" :
                stage === 2 ? "24%" :
                stage === 3 ? "42%" :
                stage === 4 ? "58%" :
                stage === 5 ? "76%" :
                stage === 6 ? "93%" :
                "unexpected stage value" // this case should never occur

                anchors.horizontalCenter: parent.horizontalCenter
                y: -height - (height * 0.2) // first part is the alignment at bottom edge, second part is the margin
        }
    }
}
