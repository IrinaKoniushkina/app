import QtQuick 2.15
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.15

ApplicationWindow {
    visible: true
    width: 360
    height: 640
    title: qsTr("Редактировать профиль")

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
            Image {
                source: "profile_picture.png" // Путь к аватарке
                width: 50
                height: 50
                fillMode: Image.PreserveAspectCrop
                anchors.verticalCenter: parent.verticalCenter
            }
            ColumnLayout {
                spacing: 4
                Text {
                    text: qsTr("Алёна")
                    font.pointSize: 20
                    anchors.verticalCenter: parent.verticalCenter
                }
                Text {
                    text: qsTr("Alenka28@mail.ru")
                    font.pointSize: 14
                    color: "#888888"
                }
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
            text: qsTr("Личные данные")
            font.pointSize: 18
            horizontalAlignment: Text.AlignLeft
            Layout.alignment: Qt.AlignLeft
        }

        TextField {
            placeholderText: qsTr("Логин")
            Layout.fillWidth: true
        }
        TextField {
            placeholderText: qsTr("Почта")
            Layout.fillWidth: true
        }
        TextField {
            placeholderText: qsTr("Пароль")
            Layout.fillWidth: true
            echoMode: TextInput.Password
        }
        TextField {
            placeholderText: qsTr("Дата рождения")
            Layout.fillWidth: true
        }

        Button {
            text: qsTr("Выйти из аккаунта")
            Layout.fillWidth: true
            onClicked: console.log("Выйти из аккаунта нажато")
        }
        Button {
            text: qsTr("Удалить аккаунт")
            Layout.fillWidth: true
            onClicked: console.log("Удалить аккаунт нажато")
        }

        Button {
            text: qsTr("Сохранить изменения")
            Layout.fillWidth: true
            onClicked: console.log("Сохранить изменения нажато")
        }
    }
}
