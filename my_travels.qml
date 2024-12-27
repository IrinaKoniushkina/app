import QtQuick 2.15
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.15

ApplicationWindow {
    visible: true
    width: 360
    height: 640
    title: qsTr("Мои поездки")

    header: Rectangle {
        height: 100
        color: "#f5f5f5"
        RowLayout {
            anchors.fill: parent
            spacing: 8
            Text {
                text: qsTr("Мои поездки")
                font.pointSize: 24
                anchors.verticalCenter: parent.verticalCenter
                horizontalAlignment: Text.AlignHCenter
            }
            Image {
                source: "profile_picture.png" // Путь к аватарке
                width: 36
                height: 36
                fillMode: Image.PreserveAspectCrop
                anchors.verticalCenter: parent.verticalCenter
            }
        }
    }

    footer: TabBar {
        TabButton { text: qsTr("Home") }
        TabButton { text: qsTr("Photos") }
        TabButton { text: qsTr("Profile") }
    }

    ColumnLayout {
        anchors.fill: parent
        anchors.margins: 16

        Label {
            text: qsTr("Запланированные")
            font.pointSize: 18
            horizontalAlignment: Text.AlignLeft
            Layout.alignment: Qt.AlignLeft
        }

        ListView {
            Layout.fillWidth: true
            Layout.preferredHeight: 120
            model: ListModel {
                ListElement {
                    title: "Москва"
                    price: "30 000 руб."
                    date: "1.01.2025 - 10.01.2025"
                    image: "moscow.png"
                }
            }
            delegate: Rectangle {
                width: parent.width
                height: 100
                border.color: "#dddddd"
                radius: 8
                RowLayout {
                    spacing: 8
                    Image {
                        source: image
                        width: 80
                        height: 80
                        fillMode: Image.PreserveAspectCrop
                        anchors.verticalCenter: parent.verticalCenter
                    }
                    ColumnLayout {
                        spacing: 4
                        Label {
                            text: title
                            font.bold: true
                            font.pointSize: 16
                        }
                        Label {
                            text: price
                            font.pointSize: 14
                            color: "#555555"
                        }
                        Label {
                            // text: date
                            font.pointSize: 12
                            color: "#777777"
                        }
                    }
                }
            }
        }

        Button {
            text: qsTr("+ Создать новую поездку")
            Layout.alignment: Qt.AlignHCenter
            onClicked: console.log("Создать новую поездку нажато")
        }

        Label {
            text: qsTr("Прошлые поездки")
            font.pointSize: 18
            horizontalAlignment: Text.AlignLeft
            Layout.alignment: Qt.AlignLeft
        }
        ListView {
            Layout.fillWidth: true
            Layout.fillHeight: true
            model: ListModel {
                ListElement {
                    title: "Красноярск"
                    price: "30 000 руб."
                    date: "1.01.2025 - 10.01.2025"
                    image: "krasnoyarsk.png"
                }
                ListElement {
                    title: "Тайланд"
                    price: "100 000 руб."
                    date: "1.01.2025 - 10.01.2025"
                    image: "thailand.png"
                }
                ListElement {
                    title: "Москва"
                    price: "30 000 руб."
                    date: "1.01.2025 - 10.01.2025"
                    image: "moscow.png"
                }
            }
            delegate: Rectangle {
                width: parent.width
                height: 100
                border.color: "#dddddd"
                radius: 8
                RowLayout {
                    spacing: 8
                    Image {
                        source: image
                        width: 80
                        height: 80
                        fillMode: Image.PreserveAspectCrop
                        anchors.verticalCenter: parent.verticalCenter
                    }
                    ColumnLayout {
                        spacing: 4
                        Label {
                            text: title
                            font.bold: true
                            font.pointSize: 16
                        }
                        Label {
                            text: price
                            font.pointSize: 14
                            color: "#555555"
                        }
                        Label {
                            text: date
                            font.pointSize: 12
                            color: "#777777"
                        }
                    }
                }
            }
        }
    }
}
