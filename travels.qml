import QtQuick 2.15
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.15

ApplicationWindow {
    visible: true
    width: 360
    height: 640
    title: qsTr("Путешествия")

    header: Rectangle {
        height: 100
        color: "#f5f5f5"
        RowLayout {
            anchors.fill: parent
            spacing: 8
            Text {
                text: qsTr("Путешествия")
                font.pointSize: 24
                anchors.verticalCenter: parent.verticalCenter
                horizontalAlignment: Text.AlignHCenter
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

        TextField {
            placeholderText: qsTr("\uD83D\uDD0D Поиск")
            Layout.fillWidth: true
        }

        Label {
            text: qsTr("Рекомендации")
            font.pointSize: 18
            horizontalAlignment: Text.AlignLeft
            Layout.alignment: Qt.AlignLeft
        }

        ListView {
            Layout.fillWidth: true
            Layout.fillHeight: true
            model: ListModel {
                ListElement {
                    title: "Париж"
                    price: "68 900 руб."
                    description: "Открой для себя Эйфелеву башню, Лувр, Монмартр и окунись в атмосферу романтики и элегантности."
                    image: "paris.png"
                }
                ListElement {
                    title: "Мальдивы"
                    price: "102 900 руб."
                    description: "Забудь о заботах: белоснежный песок, бирюзовая вода, пальмы и лазурное небо. Отправляйся на отдых мечты."
                    image: "maldives.png"
                }
                ListElement {
                    title: "Пеший тур в горы"
                    price: "28 500 руб."
                    description: "Пробуди в себе дух первооткрывателя: ощути свободу, свежесть горного воздуха и захватывающие виды."
                    image: "mountains.png"
                }
                ListElement {
                    title: "Байкал"
                    price: "39 900 руб."
                    description: "Погрузись в сибирскую сказку: Байкал - самое глубокое озеро в мире, где чистейшая вода и потрясающие пейзажи."
                    image: "baikal.png"
                }
                ListElement {
                    title: "Санкт-Петербург"
                    price: "68 900 руб."
                    description: "Императорский размах и северное очарование: Санкт-Петербург - город-музей, где история оживает."
                    image: "spb.png"
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
                            text: description
                            font.pointSize: 12
                            color: "#777777"
                            elide: Text.ElideRight
                        }
                    }
                }
            }
        }
    }
}
