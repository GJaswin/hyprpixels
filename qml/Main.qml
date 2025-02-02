import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import QtQuick.Window

Window {
    width: 840
    height: 480
    visible: true
    title: qsTr("Hyprpixels")
    color: "#292b3a"

    maximumWidth: 840
    maximumHeight: 480
    minimumWidth: 840
    minimumHeight: 480

    FontLoader {
        id: productsans
        source: "qrc:/res/fonts/ProductSansRegular.ttf"

    }

    Rectangle {

        id: rectangle1
        anchors.horizontalCenter: parent.horizontalCenter
        width: 5
        height: 580
        color : "#ddd8ff"
    }

    Rectangle {

        id: rectangle2
        anchors.left: parent.left
        anchors.leftMargin: 110
        anchors.verticalCenter: parent.verticalCenter
        width: 190
        height: 110
        color: "#ddd8ff"
        radius: 5

        Label {
            id: label
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            font.family: productsans.name
            font.bold: true
            color: "#292b3a"
            text: qsTr("HDMI-A-1")
        }

        RowLayout{
            anchors.verticalCenter: parent.verticalCenter
            anchors.verticalCenterOffset: 80
            anchors.horizontalCenter: parent.horizontalCenter

            Label {
                id: resLabel
                font.family: productsans.name
                font.bold: true
                color: "#ddd8ff"
                text: qsTr("1920x1080")
            }

            Label {
                font.family: productsans.name
                font.bold: true
                color: "#ddd8ff"
                text: qsTr("@")
            }

            Label {
                id: hertz
                font.family: productsans.name
                font.bold: true
                color: "#ddd8ff"
                text: qsTr("60hz")
            }

        }

        RowLayout{
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            spacing: 15
            anchors.verticalCenterOffset:-100

            Button {
                id: customButton1
                font.family: productsans.name
                font.bold: true
                text: qsTr("1")
                checkable: true
                contentItem: Text {
                        text: customButton1.text
                        font: customButton1.font
                        color: customButton1.checked ? "#505163" : "#ddd8ff"
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                    }
                background: Rectangle {
                    radius: 3
                    color: customButton1.checked ? "#ddd8ff" : "#505163"
                }
            }

            Button {
                id: customButton2
                font.family: productsans.name
                font.bold: true
                text: qsTr("2")
                checkable: true
                contentItem: Text {
                        text: customButton2.text
                        font: customButton2.font
                        color: customButton2.checked ? "#505163" : "#ddd8ff"
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                    }
                background: Rectangle {
                    radius: 3
                    color: customButton2.checked ? "#ddd8ff" : "#505163"

                }
            }

            Button {
                id: customButton3
                font.family: productsans.name
                font.bold: true
                text: qsTr("3")
                checkable: true
                contentItem: Text {
                        text: customButton3.text
                        font: customButton3.font
                        color: customButton3.checked ? "#505163" : "#ddd8ff"
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                    }
                background: Rectangle {
                    radius: 3
                    color: customButton3.checked ? "#ddd8ff" : "#505163"
                    
                }
            }
        }
    }

    RowLayout{
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.horizontalCenterOffset: 200
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 50
        spacing: 20

        Button {
            id: saveBut
            font.family: productsans.name
            font.bold: true
            text: qsTr("Save")

            background: Rectangle {
                radius: 3
                color: saveBut.down ? "#1bc274" : (saveBut.hovered ? "#17a864" : "#1bc274")
            }

            contentItem: Text {
                text: saveBut.text
                font: saveBut.font
                color: "#fafcfc"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
            MouseArea {
                anchors.fill: parent
                cursorShape: Qt.PointingHandCursor
                onClicked: {
                    resLabel.text = resolutionCombo.currentText
                    hertz.text = refreshcombo.currentText
                }
            }
        }


        Button {
            id: resetBut
            font.family: productsans.name
            font.bold: true
            text: qsTr("Reset")
            background: Rectangle {
                radius: 3
                color: resetBut.down ? "#e04a4d" : (resetBut.hovered ? "#f04548" : "#ff5c5f")

            }
            contentItem: Text {
                text: resetBut.text
                font: resetBut.font
                color: "#fafcfc"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
            MouseArea {
                anchors.fill: parent
                cursorShape: Qt.PointingHandCursor
                onClicked: {

                }
            }
        }

        CheckBox {
            id: checkbox1
            text: qsTr("Disable")
            font.family: productsans.name
            font.pixelSize: 16

            contentItem: Text {
                text: checkbox1.text
                font: checkbox1.font
                color: "#ddd8ff"
                verticalAlignment: Text.AlignVCenter
                leftPadding: 20
            }

            HoverHandler {
                cursorShape: Qt.PointingHandCursor
            }


            onCheckedChanged: {
                    var check = checkbox1.checked
                    if (check === true) {
                        checkbox1.text = "Disabled"
                    }
                    else{
                        checkbox1.text = "Disable"
                    }
                }
        }

    }

    Label{
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.horizontalCenterOffset: 220
        anchors.top:parent.top
        anchors.topMargin: 30

        font.family: productsans.name
        font.bold: true
        font.pixelSize: 30
        color: "#ddd8ff"
        text: label.text

    }

    Row{
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.horizontalCenterOffset: 220
        anchors.top:parent.top
        anchors.topMargin: 90
        spacing: 40


        ColumnLayout{
            spacing: 15

            Label{
                font.family: productsans.name
                font.bold: true
                color: "#ddd8ff"
                text: qsTr("Resolution")
            }

            ComboBox {
                id: resolutionCombo
                font.family: productsans.name
                Layout.preferredWidth: 150
                model: ["1920x1080", "1280x720"]
                HoverHandler {
                    cursorShape: Qt.PointingHandCursor
                }
            }

            Label{
                font.family: productsans.name
                font.bold: true
                color: "#ddd8ff"
                text: qsTr("Width Offset")
            }

            TextField{
                id : widthCombo
                Layout.preferredWidth: 150
                text: "0"

            }

            Label{
                font.family: productsans.name
                font.bold: true
                color: "#ddd8ff"
                text: qsTr("Mirror")
            }

            ComboBox {
                id: mirrorCombo
                Layout.preferredWidth: 150
                font.family: productsans.name
                model:["None"]
                HoverHandler {
                    cursorShape: Qt.PointingHandCursor
                }

            }

        }

        ColumnLayout{
            spacing: 15
            Label{
                font.family: productsans.name
                font.bold: true
                color: "#ddd8ff"
                text: qsTr("Refresh Rate")
            }

            ComboBox {
                id : refreshcombo
                Layout.preferredWidth: 150
                font.family: productsans.name
                height: 20
                model: ["60 Hz", "90 Hz", "120 Hz"]
                HoverHandler {
                    cursorShape: Qt.PointingHandCursor
                }

            }

            Label{
                font.family: productsans.name
                font.bold: true
                color: "#ddd8ff"
                text: qsTr("Height Offset")
            }

            TextField{
                id : heigtoffsetCombo
                Layout.preferredWidth: 150
                font.family: productsans.name
                text: "0"
            }
        }
    }
}
