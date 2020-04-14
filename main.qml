import QtQuick 2.12
import QtQuick.Window 2.12

Window
{
    visible: true
    width: 640
    height: 480
    title: qsTr("Colors")

    Rectangle
    {
        id: pierwszy
        x: 100
        y: 100
        width: 100; height: 100
        color: 'red'

        MouseArea
        {

            anchors.fill: parent
            onClicked:
            {
                parent.color= "blue"
                drugi.color = "red"
            }
        }
    }


    Rectangle
    {
        id: drugi
        x: 300
        y: 100
        width: 100; height: 100
        color: "blue"

        MouseArea
        {
            anchors.fill: parent
            onClicked:
            {
                parent.color = "blue"
                pierwszy.color= "red"

            }
        }
    }
}
