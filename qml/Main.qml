import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import QtQuick.Window

Window {
    width: 840
    height: 580
    visible: true
    title: qsTr("Hyprpixels")
    color: "#292b3a"

    maximumWidth: 840
    maximumHeight: 580
    minimumWidth: 840
    minimumHeight: 580

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

        Label {
            id: label1
            anchors.verticalCenter: parent.verticalCenter
            anchors.verticalCenterOffset: 80
            anchors.horizontalCenter: parent.horizontalCenter
            font.family: productsans.name
            font.bold: true
            color: "#ddd8ff"
            text: qsTr("1920x1080 @ 60hz")
        }

        RowLayout{
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            spacing: 10
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
                    radius: 5
                    color: customButton1.checked ? "#ddd8ff" : "#505163"

                }
                onClicked: {

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
                    radius: 5
                    color: customButton2.checked ? "#ddd8ff" : "#505163"

                }
                onClicked: {

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
                    radius: 5
                    color: customButton3.checked ? "#ddd8ff" : "#505163"

                }
                onClicked: {

                }
            }
        }
    }






}
