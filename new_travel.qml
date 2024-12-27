import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

ApplicationWindow {
    visible: true
    width: 360
    height: 640
    title: qsTr("Новая поездка")

    header: ToolBar {
        RowLayout {
            spacing: 8
            Text {
                text: qsTr("Новая поездка")
                font.pointSize: 18
                Layout.alignment: Qt.AlignVCenter
            }
            Button {
                text: qsTr(" ")
                icon.source: "camera_icon.png" // Иконка камеры
                onClicked: console.log("Иконка камеры нажата")
            }
        }
    }

    footer: TabBar {
        TabButton { text: qsTr("Планы") }
        TabButton { text: qsTr("Альбом") }
        TabButton { text: qsTr("Настройки") }
    }

    ColumnLayout {
        anchors.fill: parent
        anchors.margins: 16

        TextField {
            placeholderText: qsTr("Название")
            Layout.fillWidth: true
        }

        TextField {
            placeholderText: qsTr("Дата вылета")
            Layout.fillWidth: true
        }

        TextField {
            placeholderText: qsTr("Дата прилета")
            Layout.fillWidth: true
        }

        TextField {
            placeholderText: qsTr("Бюджет")
            Layout.fillWidth: true
        }

        Button {
            text: qsTr("Сохранить изменения")
            Layout.alignment: Qt.AlignHCenter
            onClicked: console.log("Сохранить изменения нажато")
        }
    }
}
