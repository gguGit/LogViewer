import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    id:mainWindow
    width: 640
    height: 480
    visible: true
    title: qsTr("Log Viewer")

    Column
    {
        anchors.fill:parent
        MenuBarView
        {
            width:mainWindow.width
            height:30
        }
        QuickMenuView
        {
            width:mainWindow.width
            height:30
        }
        Row
        {
            width:mainWindow.width
            height:(mainWindow.height-60)*0.7
            FilterView
            {
                width:parent.width*0.3
                height:parent.height
            }
            /*
              LogView & FilterResultView
            */
        }
        SearchResultView
        {
            width:mainWindow.width
            height:(mainWindow.height-60)*0.3
        }
    }
}
