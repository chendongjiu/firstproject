import Page 1.0
import PdcChart 1.0
import QtQuick 1.1
import "../common"

Rectangle {
    id: rectangle1
    width: 800
    height: 480
    color: "#FFF800F8"

    property int irSmall:204
    property int iSmallX:638
    property int iSmallY:240
    property int irSmallS:120
    property int maxDis:255
    property int minDis:1
    property string picPath: pageMain_sp.bIsTianMaScreen ? "pic_t":"pic"

//    Text {
//        id: txt_test
//        width: 119
//        height: 25
//        color: "#ffffff"
//        text: qsTr("REVERSE + PDC")
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

    Item {
        x: 400
        scale: 0.5
        visible: pageReverse_sp.bShowPdc
//        Rectangle {
//            x:470;y:0
//            width:800-470;height:480
//            color: "#FFF800F8"
//            //visible: true
//        }

        Image {
            x:573-20;y:37-20
            source:picPath + "/frontCar.png"
            //asynchronous: true;
        }
        Image {
            x:573-20;y:355-20
            source:picPath + "/backCar.png"
            //asynchronous: true;
        }


        PieChart {
            id: spiechartfontdd
            rectX:iSmallX-irSmall
            rectY:iSmallY-irSmall
            rectW:2*irSmall
            rectH:2*irSmall

            angS:67.0*16.0
            angE:(78.0-67.0)*16.0
            //onChartCleared: console.log("The spiechartfontdd has been cleared")
        }
        PieChart {
            id: spiechartfontdc
            rectX:iSmallX-irSmall
            rectY:iSmallY-irSmall
            rectW:2*irSmall
            rectH:2*irSmall

            angS:78.0*16.0
            angE:(90.0-78.0)*16.0
            //onChartCleared: console.log("The apiechartfontdc has been cleared")
        }
        PieChart {
            id: spiechartfontdb
            rectX:iSmallX-irSmall
            rectY:iSmallY-irSmall
            rectW:2*irSmall
            rectH:2*irSmall

            angS:90.0*16.0
            angE:(90.0-78.0)*16.0
            //onChartCleared: console.log("The apiechartfontdb has been cleared")
        }
        PieChart {
            id: spiechartfontda
            rectX:iSmallX-irSmall
            rectY:iSmallY-irSmall
            rectW:2*irSmall
            rectH:2*irSmall

            angS:(90.0+90.0-78.0)*16.0
            angE:(78.0-67.0)*16.0
            //onChartCleared: console.log("The apiechartfontda has been cleared")
        }

        PieChart {
            id:spiechartbd
            rectX:iSmallX-irSmall
            rectY:iSmallY-irSmall
            rectW:2*irSmall
            rectH:2*irSmall

            angS:(360.0-78.0)*16.0//(75.7-61.4+3.0)*16.0
            angE:(78.0-67.0)*16.0
            //onChartCleared: console.log("The piechartbd has been cleared")
        }
        PieChart {
            id:spiecharbc
            rectX:iSmallX-irSmall
            rectY:iSmallY-irSmall
            rectW:2*irSmall
            rectH:2*irSmall

            angS:(360.0-90.0)*16.0
            angE:(90.0-78.0)*16.0
            //onChartCleared: console.log("The piecharbc has been cleared")
        }
        PieChart {
            id:spiecharbb
            rectX:iSmallX-irSmall
            rectY:iSmallY-irSmall
            rectW:2*irSmall
            rectH:2*irSmall

            angS:(360.0-90.0-(90-78.0))*16.0
            angE:(90.0-78.0)*16.0
            //onChartCleared: console.log("The piecharbb has been cleared")
        }
        PieChart {
            id:spiecharba
            rectX:iSmallX-irSmall
            rectY:iSmallY-irSmall
            rectW:2*irSmall
            rectH:2*irSmall

            angS:(360.0-90.0-(90.0-67.0))*16.0
            angE:(78.0-67.0)*16.0
            // onChartCleared: console.log("The piecharba has been cleared")
        }

        Image {
            x:573-20;y:37-20
            source:picPath + "/frontCar_frame.png"
            //asynchronous: true;
        }
        Image {
            x:573-20;y:355-20
            source:picPath + "/backCar_frame.png"
            //asynchronous: true;
        }

        Text {
            id: text_fr_small
            x: 137
            y: 158
            width: 80
            height: 22
            opacity: 0
            color: "white"
            text: pageReverse_sp.dist_fr
            font.bold: true
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pixelSize: 23
            onTextChanged: {//max:maxDis min:12 setting as D99 plus
                spiechartfontdd.clearChart(0,
                                           iSmallX-(((pageReverse_sp.dist_fr-minDis)/(maxDis - minDis))*(irSmall-irSmallS)+irSmallS),
                                           iSmallY-(((pageReverse_sp.dist_fr-minDis)/(maxDis - minDis))*(irSmall-irSmallS)+irSmallS),
                                           2*(((pageReverse_sp.dist_fr-minDis)/(maxDis - minDis))*(irSmall-irSmallS)+irSmallS),
                                           2*(((pageReverse_sp.dist_fr-minDis)/(maxDis - minDis))*(irSmall-irSmallS)+irSmallS))
                //console.log(((pageReverse_sp.dist_fr)/255)*610.0)
            }
        }
        Text {
            id: text_frm_small
            x: 137
            y: 208
            width: 80
            height: 22
            opacity: 0
            color:"white"
            text: pageReverse_sp.dist_frm
            font.pixelSize: 23
            font.bold: true
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            onTextChanged: {
                spiechartfontdc.clearChart(0,
                                           iSmallX-(((pageReverse_sp.dist_frm-minDis)/(maxDis - minDis))*(irSmall-irSmallS)+irSmallS),
                                           iSmallY-(((pageReverse_sp.dist_frm-minDis)/(maxDis - minDis))*(irSmall-irSmallS)+irSmallS),
                                           2*(((pageReverse_sp.dist_frm-minDis)/(maxDis - minDis))*(irSmall-irSmallS)+irSmallS),
                                           2*(((pageReverse_sp.dist_frm-minDis)/(maxDis - minDis))*(irSmall-irSmallS)+irSmallS))
                //console.log(((pageReverse_sp.dist_frm)/255)*610.0)
            }
        }
        Text {
            id: text_flm_small
            x: 137
            y: 261
            color:"white"
            opacity: 0
            width: 80
            height: 22
            text: pageReverse_sp.dist_flm
            font.pixelSize: 23
            font.bold: true
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            onTextChanged: {
                spiechartfontdb.clearChart(0,
                                           iSmallX-(((pageReverse_sp.dist_flm-minDis)/(maxDis - minDis))*(irSmall-irSmallS)+irSmallS),
                                           iSmallY-(((pageReverse_sp.dist_flm-minDis)/(maxDis - minDis))*(irSmall-irSmallS)+irSmallS),
                                           2*(((pageReverse_sp.dist_flm-minDis)/(maxDis - minDis))*(irSmall-irSmallS)+irSmallS),
                                           2*(((pageReverse_sp.dist_flm-minDis)/(maxDis - minDis))*(irSmall-irSmallS)+irSmallS))
                //console.log(((pageReverse_sp.dist_flm)/255)*610.0)
            }
        }
        Text {
            id: text_fl_small
            x: 137
            y: 319
            width: 80
            height: 22
            opacity: 0
            color:"white"
            //visible: pdcBigCar.y == 0
            text: pageReverse_sp.dist_fl
            font.pixelSize: 23
            font.bold: true
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            onTextChanged: {
                spiechartfontda.clearChart(0,
                                           iSmallX-(((pageReverse_sp.dist_fl-minDis)/(maxDis - minDis))*(irSmall-irSmallS)+irSmallS),
                                           iSmallY-(((pageReverse_sp.dist_fl-minDis)/(maxDis - minDis))*(irSmall-irSmallS)+irSmallS),
                                           2*(((pageReverse_sp.dist_fl-minDis)/(maxDis - minDis))*(irSmall-irSmallS)+irSmallS),
                                           2*(((pageReverse_sp.dist_fl-minDis)/(maxDis - minDis))*(irSmall-irSmallS)+irSmallS))
                //console.log(((pageReverse_sp.dist_fl)/255)*610.0)
            }
        }

        Text {
            id: text_br_small
            x: 137
            y: 151
            width: 80
            height: 22
            opacity:0
            color:"white"
            text: pageReverse_sp.dist_br
            font.pixelSize: 23
            font.bold: true
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            onTextChanged: {
                spiechartbd.clearChart(0,
                                       iSmallX-(((pageReverse_sp.dist_br-minDis)/(maxDis-minDis))*(irSmall+1-irSmallS+1)+irSmallS),
                                       iSmallY-(((pageReverse_sp.dist_br-minDis)/(maxDis-minDis))*(irSmall+1-irSmallS+1)+irSmallS),
                                       2*(((pageReverse_sp.dist_br-minDis)/(maxDis-minDis))*(irSmall+1-irSmallS+1)+irSmallS),
                                       2*(((pageReverse_sp.dist_br-minDis)/(maxDis-minDis))*(irSmall+1-irSmallS+1)+irSmallS))
                //console.log(((pageReverse_sp.dist_br-12)/(maxDis-minDis))*650.0)
            }
        }
        Text {
            id: text_brm_small
            x: 137
            y: 208
            width: 80
            height: 22
            color:"white"
            opacity:0
            text: pageReverse_sp.dist_brm
            font.pixelSize: 23
            font.bold: true
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            onTextChanged: {
                spiecharbc.clearChart(0,
                                      iSmallX-(((pageReverse_sp.dist_brm-minDis)/(maxDis-minDis))*(irSmall-irSmallS+2)+irSmallS),
                                      iSmallY-(((pageReverse_sp.dist_brm-minDis)/(maxDis-minDis))*(irSmall-irSmallS+2)+irSmallS),
                                      2*(((pageReverse_sp.dist_brm-minDis)/(maxDis-minDis))*(irSmall-irSmallS+2)+irSmallS),
                                      2*(((pageReverse_sp.dist_brm-minDis)/(maxDis-minDis))*(irSmall-irSmallS+2)+irSmallS))
                //console.log(((pageReverse_sp.dist_brm)/255)*650.0)
            }
        }
        Text {
            id: text_blm_small
            x: 137
            y: 261
            width: 80
            height: 22
            color:"white"
            opacity:0
            text: pageReverse_sp.dist_blm
            font.pixelSize: 23
            font.bold: true
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            onTextChanged: {
                spiecharbb.clearChart(0,
                                      iSmallX-(((pageReverse_sp.dist_blm-minDis)/(maxDis-minDis))*(irSmall-irSmallS+2)+irSmallS),
                                      iSmallY-(((pageReverse_sp.dist_blm-minDis)/(maxDis-minDis))*(irSmall-irSmallS+2)+irSmallS),
                                      2*(((pageReverse_sp.dist_blm-minDis)/(maxDis-minDis))*(irSmall-irSmallS+2)+irSmallS),
                                      2*(((pageReverse_sp.dist_blm-minDis)/(maxDis-minDis))*(irSmall-irSmallS+2)+irSmallS))
                //console.log(((pageReverse_sp.dist_blm)/255)*650.0)
            }
        }
        Text {
            id: text_bl_small
            x: 137
            y: 319
            width: 80
            height: 22
            color:"white"
            text: pageReverse_sp.dist_bl
            opacity:0
            font.pixelSize: 23
            font.bold: true
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            onTextChanged: {
                spiecharba.clearChart(0,
                                      iSmallX-(((pageReverse_sp.dist_bl-minDis)/(maxDis-minDis))*(irSmall-irSmallS+2)+irSmallS),
                                      iSmallY-(((pageReverse_sp.dist_bl-minDis)/(maxDis-minDis))*(irSmall-irSmallS+2)+irSmallS),
                                      2*(((pageReverse_sp.dist_bl-minDis)/(maxDis-minDis))*(irSmall-irSmallS+2)+irSmallS),
                                      2*(((pageReverse_sp.dist_bl-minDis)/(maxDis-minDis))*(irSmall-irSmallS+2)+irSmallS))
                //console.log(((pageReverse_sp.text_bl-12)/(maxDis-minDis)))
            }
        }
        Image{
            x:575;y:116
            source:picPath + "/sCar_1.png"
            //asynchronous: true;
        }
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        onClicked: pageReverse_sp.page_Clicked();
    }
}
