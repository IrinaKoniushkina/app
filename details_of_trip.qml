import QtQuick 2.15
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.15

ApplicationWindow {
    visible: true
    width: 360
    height: 640
    title: qsTr("Детали поездки")

    header: Rectangle {
        height: 100
        color: "#f5f5f5"
        RowLayout {
            anchors.fill: parent
            spacing: 8
            Button {
                text: "<"
                onClicked: console.log("Назад")
            }
            ColumnLayout {
                spacing: 4
                Text {
                    text: qsTr("Москва")
                    font.pointSize: 20
                    anchors.verticalCenter: parent.verticalCenter
                }
                Text {
                    text: qsTr("Детали поездки")
                    font.pointSize: 14
                    color: "#888888"
                }
            }
            Image {
                source: "profile_picture.png" // Путь к аватарке
                width: 50
                height: 50
                fillMode: Image.PreserveAspectCrop
                radius: 25
                anchors.verticalCenter: parent.verticalCenter
            }
        }
    }

    footer: TabBar {
        TabButton { text: qsTr("Планы") }
        TabButton { text: qsTr("Бюджет") }
        TabButton { text: qsTr("Альбом") }
    }

    ColumnLayout {
        anchors.fill: parent
        anchors.margins: 16

        TabView {
            Layout.fillWidth: true
            Layout.fillHeight: true

            Tab {
                title: qsTr("День 1")
                ColumnLayout {
                    Repeater {
                        model: 3
                        delegate: RowLayout {
                            spacing: 8
                            Rectangle {
                                width: 20
                                height: 20
                                radius: 10
                                color: "#cccccc"
                                Text {
                                    text: model.index + 1
                                    anchors.centerIn: parent
                                    font.pointSize: 12
                                }
                            }
                            Rectangle {
                                Layout.fillWidth: true
                                height: 80
                                border.color: "#dddddd"
                                radius: 8
                                RowLayout {
                                    spacing: 8
                                    Rectangle {
                                        width: 60
                                        height: 60
                                        color: "#eeeeee"
                                        border.color: "#cccccc"
                                    }
                                    ColumnLayout {
                                        spacing: 4
                                        Text {
                                            text: qsTr("Музей")
                                            font.bold: true
                                            font.pointSize: 16
                                        }
                                        Text {
                                            text: qsTr("1 000 руб")
                                            font.pointSize: 14
                                            color: "#555555"
                                        }
                                    }
                                }
                            }
                        }
                    }
                    Button {
                        text: qsTr("+ Добавить место")
                        Layout.alignment: Qt.AlignHCenter
                        onClicked: console.log("Добавить место нажато")
                    }
                }
            }
            Tab {
                title: qsTr("День 2")
                Label {
                    text: qsTr("Нет запланированных мест")
                    anchors.centerIn: parent
                }
            }

            Tab {
                title: qsTr("+")
                Label {
                    text: qsTr("Добавить новый день")
                    anchors.centerIn: parent
                }
            }
        }
    }
}
