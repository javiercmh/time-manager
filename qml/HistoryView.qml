import QtQuick 2.13
import QtQuick.Controls 2.13
import QtQuick.Controls.Material 2.13
import QtQuick.Layouts 1.13

SplitView{
    id: historyGrid
    width: columnLayout.width
    height: columnLayout.height
    ListView {
        id: myListView
        SplitView.fillWidth: true
        implicitWidth: columnLayout.width / 2
        width: parent.width /2
        height: parent.height
        spacing: 10
        focus: true
        Layout.topMargin: 20
        Layout.bottomMargin: 20
        model: taskListModel
        delegate: TaskPane{}
        ScrollBar.vertical: ScrollBar {
            active: true
        }
    }
    Rectangle {
        color: "grey"
        width: columnLayout.width / 2
        implicitWidth: columnLayout.width / 2
        Layout.fillHeight: true
    }


}

