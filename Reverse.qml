import Page 1.0
import QtQuick 1.1
import "../common"

Rectangle {
    id: rectangle1
    width: 800
    height: 480
    color: "#FFF800F8"
    property string picPath: pageMain_sp.bIsTianMaScreen ? "pic_t":"pic"
//    Text {
//        id: txt_test
//        width: 119
//        height: 25
//        color: "#ffffff"
//        text: qsTr("REVERSE")
//        font.bold: true
//        anchors.horizontalCenter: parent.horizontalCenter
//        anchors.verticalCenter: parent.verticalCenter
//        verticalAlignment: Text.AlignVCenter
//        horizontalAlignment: Text.AlignHCenter
//        font.pixelSize: 12
//    }
    Image {
        id: camara_icon
        x: 10
        y: 10
        visible: pageReverse_sp.bShowCamera
        source: picPath + "/camara.png"
    }

    ImageBotton {
        id: traceAngleOption
        y: 20;  z: 1
        anchors.horizontalCenter: parent.horizontalCenter
        visible: pageReverse_sp.bShowReverseTrace && pageReverse_sp.bShowTraceButton
        pressUp_source: pageReverse_sp.iTraceAngle === PageReverseSp.E_TraceAngle_High ?("../PageRevsPdc/" + picPath + "/Lfree.png") :
                        pageReverse_sp.iTraceAngle === PageReverseSp.E_TraceAngle_Low ? ("../PageRevsPdc/" + picPath + "/Nfree.png") :
                                                                                        ("../PageRevsPdc/" + picPath + "/Hfree.png")
        pressDown_source: pageReverse_sp.iTraceAngle === PageReverseSp.E_TraceAngle_High ?("../PageRevsPdc/" + picPath + "/Lsel.png") :
                          pageReverse_sp.iTraceAngle === PageReverseSp.E_TraceAngle_Low ? ("../PageRevsPdc/" + picPath + "/Nsel.png") :
                                                                                          ("../PageRevsPdc/" + picPath + "/Hsel.png")
        alias_mouseArea.onClicked: pageReverse_sp.traceBtn_Click();
    }

    Image {
        id: trace
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        visible: pageReverse_sp.bShowReverseTrace &&
                 pageReverse_sp.iTraceAngle !== PageReverseSp.E_TraceAngle_None
        source: pageReverse_sp.iTraceAngle === PageReverseSp.E_TraceAngle_High ? (picPath + "/trace/high/"+pageReverse_sp.iTraceIndex+".png") :
                pageReverse_sp.iTraceAngle === PageReverseSp.E_TraceAngle_Low ? (picPath + "/trace/low/"+pageReverse_sp.iTraceIndex+".png") : ""
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        onClicked: pageReverse_sp.page_Clicked();
    }
}
