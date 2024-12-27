import QtQuick 2.15
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.15

ApplicationWindow {
    visible: true
    width: 360
    height: 640
    title: qsTr("Freevel - Log in")

    header: ToolBar {
        RowLayout {
            spacing: 8
            Image {
                source: "logo.png" // Путь к логотипу с пчелой
                width: 36
                height: 36
                fillMode: Image.PreserveAspectFit
            }
            Text {
                text: qsTr("Freevel")
                font.pointSize: 24
                Layout.alignment: Qt.AlignVCenter
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

        RowLayout {
            Layout.fillWidth: true
            Button {
                text: qsTr("Log in")
                Layout.alignment: Qt.AlignLeft
                onClicked: console.log("Log in clicked")
            }
            Button {
                text: qsTr("Sign up")
                Layout.alignment: Qt.AlignRight
                onClicked: console.log("Sign up clicked")
            }
        }

        Label {
            text: qsTr("Welcome back!")
            font.pointSize: 24
            horizontalAlignment: Text.AlignHCenter
            Layout.alignment: Qt.AlignHCenter
        }

        TextField {
            placeholderText: qsTr("E-mail")
            Layout.fillWidth: true
        }

        TextField {
            placeholderText: qsTr("Password")
            Layout.fillWidth: true
            echoMode: TextInput.Password
        }

        RowLayout {
            Layout.fillWidth: true
            Button {
                text: qsTr("forgot password?")
                onClicked: console.log("Forgot password clicked")
            }
        }

        Button {
            text: qsTr("Log in")
            Layout.alignment: Qt.AlignHCenter
            onClicked: console.log("Log in clicked")
        }
    }
}
