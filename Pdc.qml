import PdcChart 1.0
import QtQuick 1.1
import "../common"


Item {
    id: page
    // height: 960; width:800
    // x:0;y:0
    property int rBig:343
    property int pBigX:235
    property int pBigY:446
    property int rBigS:180//170//160//140

    property int rBigX:235
    property int rBigY:35

    property int irSmall:204//202
    property int iSmallX:638
    property int iSmallY:240
    property int irSmallS:120
    property int maxDis:255
    property int minDis:1

    property bool pdcCharEn:true
    property string picPath: pageMain_sp.bIsTianMaScreen ? "pic_t":"pic"


    //Rectangle{
    //    id:pdcBigCar

    //    height:960;width: 800
    //    x:0;y:0
    //    color:pageMain_sp.bIsTianMaScreen ? "#1e1e1e" : "#292929"
    //    visible: true
    //}
    Item
    {
        id:whole_car
        Rectangle
        {
            height:480;width: 800
            x:0;y:0
            color:  pageMain_sp.bIsTianMaScreen ? "#1e1e1e" : "#292929"
            visible: true
            id:frontCar
            Image{
                id:frontColor
                x:101-40;y:108-40
                source:"./" + picPath + "/frontCarColor.png"
                //asynchronous: true;
            }


            PieChart{
                id: apiechartfontdd
                //width: 650; height: 650
                //name: "A simple pie chart"
                rectX:pBigX-rBig
                rectY:pBigY-rBig
                rectW:2*rBig
                rectH:2*rBig
                angS:(63.0)*16.0
                angE:(77-63.0)*16.0
                // onChartCleared: console.log("The apiechartfontdd has been cleared")
            }
            PieChart{
                id: apiechartfontdc
                //width: 650; height: 650
                //name: "A simple pie chart"
                rectX:pBigX-rBig
                rectY:pBigY-rBig
                rectW:2*rBig
                rectH:2*rBig

                angS:(77)*16.0
                angE:(90.0-77)*16.0
                // onChartCleared: console.log("The apiechartfontdc has been cleared")
            }
            PieChart{
                id: apiechartfontdb
                //width: 650; height: 650
                //name: "A simple pie chart"
                rectX:pBigX-rBig
                rectY:pBigY-rBig
                rectW:2*rBig
                rectH:2*rBig

                angS:90.0*16.0
                angE:(90.0-77.0)*16.0
                //  onChartCleared: console.log("The apiechartfontdb has been cleared")
            }
            PieChart{
                id: apiechartfontda
                //width: 650; height: 650
                //name: "A simple pie chart"
                rectX:pBigX-rBig
                rectY:pBigY-rBig
                rectW:2*rBig
                rectH:2*rBig

                angS:(90.0+90.0-77.0)*16.0
                angE:(77.0-64.0+1)*16.0
                // onChartCleared: console.log("The apiechartfontda has been cleared")
            }
            Image{
                id:framf
                x:101-40;y:108-40
                source:picPath + "/maskBigUp.png"
                //asynchronous: true;
                //visible: false
            }
            Image{
                id:bigCarFront
                x:125;y:263
                source:"./" + picPath + "/carBig.png"
                //asynchronous: true;
            }

            Text {
                id: text_fr
                x: 137
                y: 158
                width: 80
                height: 22
                opacity: 0
                color: "white"
                //visible: pdcBigCar.y == 0
                text: pageReverse_sp.dist_fr
                font.bold: true
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pixelSize: 23
                onTextChanged: {//max:maxDis min:12 setting as D99 plus
                    if(pdcCharEn)
                    {
                        apiechartfontdd.clearChart(0,pBigX-(((pageReverse_sp.dist_fr-minDis)/(maxDis - minDis))*(rBig-rBigS)+rBigS),
                                                   pBigY-(((pageReverse_sp.dist_fr-minDis)/(maxDis - minDis))*(rBig-rBigS)+rBigS),
                                                   2*(((pageReverse_sp.dist_fr-minDis)/(maxDis - minDis))*(rBig-rBigS)+rBigS),
                                                   2*(((pageReverse_sp.dist_fr-minDis)/(maxDis - minDis))*(rBig-rBigS)+rBigS))
                    }
                    //console.log(((pageReverse_sp.dist_fr)/255)*610.0)
                }
            }


            Text {
                id: text_frm
                x: 137
                y: 208
                width: 80
                height: 22
                opacity: 0
                //visible: pdcBigCar.y == 0
                color:"white"
                text: pageReverse_sp.dist_frm
                font.pixelSize: 23
                font.bold: true
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                onTextChanged: {
                    if(pdcCharEn)
                    {
                        apiechartfontdc.clearChart(0,pBigX-(((pageReverse_sp.dist_frm-minDis)/(maxDis - minDis))*(rBig-rBigS)+rBigS),
                                                   pBigY-(((pageReverse_sp.dist_frm-minDis)/(maxDis - minDis))*(rBig-rBigS)+rBigS),
                                                   2*(((pageReverse_sp.dist_frm-minDis)/(maxDis - minDis))*(rBig-rBigS)+rBigS),
                                                   2*(((pageReverse_sp.dist_frm-minDis)/(maxDis - minDis))*(rBig-rBigS)+rBigS))
                    }
                    //  console.log(((pageReverse_sp.dist_frm)/255)*610.0)
                }
            }

            Text {
                id: text_flm
                x: 137
                y: 261
                color:"white"
                opacity: 0
                //visible: pdcBigCar.y == 0
                width: 80
                height: 22
                text: pageReverse_sp.dist_flm
                font.pixelSize: 23
                font.bold: true
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                onTextChanged: {
                    if(pdcCharEn)
                    {
                        apiechartfontdb.clearChart(0,pBigX-(((pageReverse_sp.dist_flm-minDis)/(maxDis - minDis))*(rBig-rBigS)+rBigS),
                                                   pBigY-(((pageReverse_sp.dist_flm-minDis)/(maxDis - minDis))*(rBig-rBigS)+rBigS),
                                                   2*(((pageReverse_sp.dist_flm-minDis)/(maxDis - minDis))*(rBig-rBigS)+rBigS),
                                                   2*(((pageReverse_sp.dist_flm-minDis)/(maxDis - minDis))*(rBig-rBigS)+rBigS))
                    }
                    //    console.log(((pageReverse_sp.dist_flm)/255)*610.0)
                }
            }

            Text {
                id: text_fl
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
                    if(pdcCharEn)
                    {
                        apiechartfontda.clearChart(0,pBigX-(((pageReverse_sp.dist_fl-minDis)/(maxDis - minDis))*(rBig-rBigS)+rBigS),
                                                   pBigY-(((pageReverse_sp.dist_fl-minDis)/(maxDis - minDis))*(rBig-rBigS)+rBigS),
                                                   2*(((pageReverse_sp.dist_fl-minDis)/(maxDis - minDis))*(rBig-rBigS)+rBigS),
                                                   2*(((pageReverse_sp.dist_fl-minDis)/(maxDis - minDis))*(rBig-rBigS)+rBigS))
                    }

                    //  console.log(((pageReverse_sp.dist_fl)/255)*610.0)
                }
            }
        }
        //}
        //Rectangle
        //{
        //    id:bigcarback
        //    x:0;y:0
        //    height: 480;width:800
        //    visible: pageReverse_sp.visual_index==1||pageReverse_sp.visual_index==3
        //    color:pageMain_sp.bIsTianMaScreen ? "#1e1e1e" : "#292929"
        Rectangle{
            id:backCar
            height:480;width: 800
            x:0;y:480
            color:pageMain_sp.bIsTianMaScreen ? "#1e1e1e" : "#292929"
            visible: true

            Image{
                id:picbs
                x: 101-40
                y: 175-40+7
                source:"./" + picPath + "/frontCarColor_Down.png"
                //asynchronous: true;
            }

            PieChart{
                id:piechartbd
                rectX:rBigX-rBig
                rectY:rBigY-rBig
                rectW:2*rBig
                rectH:2*rBig

                angS:(360.0-75.0)*16.0
                angE:(80.0-65.0)*16.0
            }
            PieChart{
                id:piecharbc

                rectX:rBigX-rBig
                rectY:rBigY-rBig
                rectW:2*rBig
                rectH:2*rBig

                angS:(360.0-90.0)*16.0
                angE:(90.0-75.0)*16.0
                // onChartCleared: console.log("The piecharbc has been cleared")

            }
            PieChart{
                id:piecharbb

                rectX:rBigX-rBig
                rectY:rBigY-rBig
                rectW:2*rBig
                rectH:2*rBig

                angS:(360.0-90.0-(90.0-75.0))*16.0
                angE:(90.0-75.0)*16.0
                //onChartCleared: console.log("The piecharbb has been cleared")

            }
            PieChart{
                id:piecharba

                rectX:rBigX-rBig
                rectY:rBigY-rBig
                rectW:2*rBig
                rectH:2*rBig

                angS:(360.0-90.0-(90.0-60.0))*16.0
                angE:(75.0-60.0)*16.0
                // onChartCleared: console.log("The piecharba has been cleared")

            }


            Image{
                id:frameb
                x:101-40;y:175-40+7
                source:picPath + "/maskBigUp_Down.png"
                //asynchronous: true;
            }
            Image{
                id:carb
                x:125;y:-(480-263)
                source:"./" + picPath + "/carBig.png"
                //asynchronous: true;
            }

            Text {
                id: text_br
                x: 137
                y: 151
                width: 80
                height: 22
                opacity:0
                color:"white"
                //visible:pdcBigCar.y == -480
                text: pageReverse_sp.dist_br
                font.pixelSize: 23
                font.bold: true
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                onTextChanged: {
                    if(pdcCharEn)
                    {
                        piechartbd.clearChart(0,rBigX-(((pageReverse_sp.dist_br-minDis)/(maxDis-minDis))*(rBig-16-rBigS+10)+rBigS-10),
                                              rBigY-(((pageReverse_sp.dist_br-minDis)/(maxDis-minDis))*(rBig-16-rBigS+10)+rBigS-10),
                                              2*(((pageReverse_sp.dist_br-minDis)/(maxDis-minDis))*(rBig-16-rBigS+10)+rBigS-10),
                                              2*(((pageReverse_sp.dist_br-minDis)/(maxDis-minDis))*(rBig-16-rBigS+10)+rBigS-10))
                    }
                    // console.log(((pageReverse_sp.dist_br-12)/(maxDis-minDis))*650.0)
                }
            }

            Text {
                id: text_brm
                x: 137
                y: 208
                width: 80
                height: 22
                color:"white"
                //visible:pdcBigCar.y == -480
                opacity:0
                text: pageReverse_sp.dist_brm
                font.pixelSize: 23
                font.bold: true
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                onTextChanged: {
                    if(pdcCharEn)
                    {
                        piecharbc.clearChart(0,rBigX-(((pageReverse_sp.dist_brm-minDis)/(maxDis-minDis))*(rBig-16-rBigS+10)+rBigS-10),
                                             rBigY-((pageReverse_sp.dist_brm-minDis)/(maxDis-minDis)*(rBig-16-rBigS+10)+rBigS-10),
                                             2*((pageReverse_sp.dist_brm-minDis)/(maxDis-minDis)*(rBig-16-rBigS+10)+rBigS-10),
                                             2*((pageReverse_sp.dist_brm-minDis)/(maxDis-minDis)*(rBig-16-rBigS+10)+rBigS-10))
                    }
                    // console.log(((pageReverse_sp.dist_brm)/255)*650.0)
                }
            }

            Text {
                id: text_blm
                x: 137
                y: 261
                width: 80
                height: 22
                color:"white"
                //visible:pdcBigCar.y == -480
                opacity:0
                text: pageReverse_sp.dist_blm
                font.pixelSize: 23
                font.bold: true
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                onTextChanged: {
                    if(pdcCharEn)
                    {
                        piecharbb.clearChart(0,rBigX-(((pageReverse_sp.dist_blm-minDis)/(maxDis-minDis))*(rBig-rBigS-6)+rBigS-10),
                                             rBigY-(((pageReverse_sp.dist_blm-minDis)/(maxDis-minDis))*(rBig-rBigS-6)+rBigS-10),
                                             2*(((pageReverse_sp.dist_blm-minDis)/(maxDis-minDis))*(rBig-rBigS-6)+rBigS-10),
                                             2*(((pageReverse_sp.dist_blm-minDis)/(maxDis-minDis))*(rBig-rBigS-6)+rBigS-10))
                    }
                    //console.log(((pageReverse_sp.dist_blm)/255)*650.0)
                }
            }

            Text {
                id: text_bl
                x: 137
                y: 319
                width: 80
                height: 22
                color:"white"
                text: pageReverse_sp.dist_bl
                //visible:pdcBigCar.y == -480
                opacity:0
                font.pixelSize: 23
                font.bold: true
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                onTextChanged: {
                    if(pdcCharEn)
                    {
                        piecharba.clearChart(0,rBigX-(((pageReverse_sp.dist_bl-minDis)/(maxDis-minDis))*(rBig-rBigS-6)+rBigS-10),
                                             rBigY-(((pageReverse_sp.dist_bl-minDis)/(maxDis-minDis))*(rBig-rBigS-6)+rBigS-10),
                                             2*(((pageReverse_sp.dist_bl-minDis)/(maxDis-minDis))*(rBig-rBigS-6)+rBigS-10),
                                             2*(((pageReverse_sp.dist_bl-minDis)/(maxDis-minDis))*(rBig-rBigS-6)+rBigS-10))
                    }
                    //console.log(((pageReverse_sp.text_bl-12)/(maxDis-minDis)))
                }
            }
        }
    }

    //Component{
    //    id:highlight_Animation
    //    Rectangle{
    //        width: 180; height: 40
    //        color: "lightsteelblue"; radius: 5
    //        y: fbview.currentItem.y
    //        Behavior on y {
    //                     SpringAnimation {
    //                         spring: 3
    //                         damping: 0.2
    //                     }
    //                 }

    //        NumberAnimation {
    //            target:fbview ; properties: "y";
    //            from:fbview.currentIndex == 0 ? 0 : 480
    //            to: fbview.currentIndex == 0 ?  480 : 0
    //            duration: 1000 }

    // }
    //    ParallelAnimation {
    //        NumberAnimation { targets: fbview.currentItem.x; properties: "x"; from: 0; to: 800; duration: 200 }
    //    }
    //}
    //ListView{
    //    id:fbview
    //    x:0;y:0
    //    width: 800;height: 480
    //    model:vview
    //    clip: true
    //    snapMode: ListView.SnapToItem
    //    highlightMoveSpeed : 200//2400//600//1200
    //    highlightResizeSpeed:200//2400
    //    interactive: false
    //    highlightFollowsCurrentItem: false
    //    highlight: highlight_Animation
    //}

    //Text {
    //        id: visualindex
    //        x: 142
    //        y: 24
    //        width: 80
    //        height: 22
    //        color:"#d92b2b"
    //        visible: false
    //        text: pageReverse_sp.visual_index==1?"Reverse":( pageReverse_sp.visual_index==2?"PDC    ":"P and R ")
    //        font.pixelSize: 23
    //        font.bold: true
    //        horizontalAlignment: Text.AlignHCenter
    //        verticalAlignment: Text.AlignVCenter
    //        onTextChanged: {
    //            if(pageReverse_sp.visual_index==1||pageReverse_sp.visual_index==3)
    //                fbview.currentIndex=1
    //            else if(pageReverse_sp.visual_index==2)
    //                fbview.currentIndex=0
    //           // fbview.positionViewAtIndex()
    //        }
    //    }
    Item{
        Rectangle{
            x:470;y:0
            width:800-470;height:480
            color:pageMain_sp.bIsTianMaScreen ? "#1e1e1e" : "#292929"
            //visible: true
        }
        Image{
            x:573-20;y:37-20
            source:picPath + "/sCarUp.png"
            //        asynchronous: true;
        }
        Image{
            x:573-20;y:355-20
            source:picPath + "/sCarUp_Down.png"
            //        asynchronous: true;
        }

        PieChart{
            id: spiechartfontdd
            rectX:iSmallX-irSmall
            rectY:iSmallY-irSmall
            rectW:2*irSmall
            rectH:2*irSmall

            angS:67.0*16.0
            angE:(78.0-67.0)*16.0
            //  onChartCleared: console.log("The spiechartfontdd has been cleared")

        }
        PieChart{
            id: spiechartfontdc
            rectX:iSmallX-irSmall
            rectY:iSmallY-irSmall
            rectW:2*irSmall
            rectH:2*irSmall

            angS:78.0*16.0
            angE:(90.0-78.0)*16.0
            // onChartCleared: console.log("The apiechartfontdc has been cleared")

        }
        PieChart{
            id: spiechartfontdb
            rectX:iSmallX-irSmall
            rectY:iSmallY-irSmall
            rectW:2*irSmall
            rectH:2*irSmall

            angS:90.0*16.0
            angE:(90.0-78.0)*16.0
            // onChartCleared: console.log("The apiechartfontdb has been cleared")

        }
        PieChart{
            id: spiechartfontda
            rectX:iSmallX-irSmall
            rectY:iSmallY-irSmall
            rectW:2*irSmall
            rectH:2*irSmall

            angS:(90.0+90.0-78.0)*16.0
            angE:(78.0-67.0)*16.0
            // onChartCleared: console.log("The apiechartfontda has been cleared")

        }



        PieChart{
            id:spiechartbd
            rectX:iSmallX-irSmall
            rectY:iSmallY-irSmall
            rectW:2*irSmall
            rectH:2*irSmall

            angS:(360.0-78.0)*16.0//(75.7-61.4+3.0)*16.0
            angE:(78.0-67.0)*16.0
            //  onChartCleared: console.log("The piechartbd has been cleared")

        }
        PieChart{
            id:spiecharbc
            rectX:iSmallX-irSmall
            rectY:iSmallY-irSmall
            rectW:2*irSmall
            rectH:2*irSmall

            angS:(360.0-90.0)*16.0
            angE:(90.0-78.0)*16.0
            //   onChartCleared: console.log("The piecharbc has been cleared")

        }
        PieChart{
            id:spiecharbb
            rectX:iSmallX-irSmall
            rectY:iSmallY-irSmall
            rectW:2*irSmall
            rectH:2*irSmall

            angS:(360.0-90.0-(90-78.0))*16.0
            angE:(90.0-78.0)*16.0
            //  onChartCleared: console.log("The piecharbb has been cleared")

        }
        PieChart{
            id:spiecharba
            rectX:iSmallX-irSmall
            rectY:iSmallY-irSmall
            rectW:2*irSmall
            rectH:2*irSmall

            angS:(360.0-90.0-(90.0-67.0))*16.0
            angE:(78.0-67.0)*16.0
            // onChartCleared: console.log("The piecharba has been cleared")
        }


        Image{
            x:573-20;y:37-20
            source:picPath + "/sFrameUp.png"
            //        asynchronous: true;
        }
        Image{
            x:573-20;y:355-20
            source:picPath + "/sFrameUp_Down.png"
            //        asynchronous: true;
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
                if(pdcCharEn)
                {
                    spiechartfontdd.clearChart(0,
                                               iSmallX-(((pageReverse_sp.dist_fr-minDis)/(maxDis - minDis))*(irSmall-irSmallS)+irSmallS),
                                               iSmallY-(((pageReverse_sp.dist_fr-minDis)/(maxDis - minDis))*(irSmall-irSmallS)+irSmallS),
                                               2*(((pageReverse_sp.dist_fr-minDis)/(maxDis - minDis))*(irSmall-irSmallS)+irSmallS),
                                               2*(((pageReverse_sp.dist_fr-minDis)/(maxDis - minDis))*(irSmall-irSmallS)+irSmallS))
                }
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
                if(pdcCharEn)
                {
                    spiechartfontdc.clearChart(0,
                                               iSmallX-(((pageReverse_sp.dist_frm-minDis)/(maxDis - minDis))*(irSmall-irSmallS)+irSmallS),
                                               iSmallY-(((pageReverse_sp.dist_frm-minDis)/(maxDis - minDis))*(irSmall-irSmallS)+irSmallS),
                                               2*(((pageReverse_sp.dist_frm-minDis)/(maxDis - minDis))*(irSmall-irSmallS)+irSmallS),
                                               2*(((pageReverse_sp.dist_frm-minDis)/(maxDis - minDis))*(irSmall-irSmallS)+irSmallS))
                }
                //  console.log(((pageReverse_sp.dist_frm)/255)*610.0)
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
                if(pdcCharEn)
                {
                    spiechartfontdb.clearChart(0,
                                               iSmallX-(((pageReverse_sp.dist_flm-minDis)/(maxDis - minDis))*(irSmall-irSmallS)+irSmallS),
                                               iSmallY-(((pageReverse_sp.dist_flm-minDis)/(maxDis - minDis))*(irSmall-irSmallS)+irSmallS),
                                               2*(((pageReverse_sp.dist_flm-minDis)/(maxDis - minDis))*(irSmall-irSmallS)+irSmallS),
                                               2*(((pageReverse_sp.dist_flm-minDis)/(maxDis - minDis))*(irSmall-irSmallS)+irSmallS))
                }
                //    console.log(((pageReverse_sp.dist_flm)/255)*610.0)
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
                if(pdcCharEn)
                {
                    spiechartfontda.clearChart(0,
                                               iSmallX-(((pageReverse_sp.dist_fl-minDis)/(maxDis - minDis))*(irSmall-irSmallS)+irSmallS),
                                               iSmallY-(((pageReverse_sp.dist_fl-minDis)/(maxDis - minDis))*(irSmall-irSmallS)+irSmallS),
                                               2*(((pageReverse_sp.dist_fl-minDis)/(maxDis - minDis))*(irSmall-irSmallS)+irSmallS),
                                               2*(((pageReverse_sp.dist_fl-minDis)/(maxDis - minDis))*(irSmall-irSmallS)+irSmallS))
                }
                //  console.log(((pageReverse_sp.dist_fl)/255)*610.0)
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
                if(pdcCharEn)
                {
                    spiechartbd.clearChart(0,
                                           iSmallX-(((pageReverse_sp.dist_br-minDis)/(maxDis-minDis))*(irSmall+1-irSmallS+1)+irSmallS),
                                           iSmallY-(((pageReverse_sp.dist_br-minDis)/(maxDis-minDis))*(irSmall+1-irSmallS+1)+irSmallS),
                                           2*(((pageReverse_sp.dist_br-minDis)/(maxDis-minDis))*(irSmall+1-irSmallS+1)+irSmallS),
                                           2*(((pageReverse_sp.dist_br-minDis)/(maxDis-minDis))*(irSmall+1-irSmallS+1)+irSmallS))
                }
                // console.log(((pageReverse_sp.dist_br-12)/(maxDis-minDis))*650.0)
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
                if(pdcCharEn)
                {
                    spiecharbc.clearChart(0,
                                          iSmallX-(((pageReverse_sp.dist_brm-minDis)/(maxDis-minDis))*(irSmall-irSmallS+2)+irSmallS),
                                          iSmallY-(((pageReverse_sp.dist_brm-minDis)/(maxDis-minDis))*(irSmall-irSmallS+2)+irSmallS),
                                          2*(((pageReverse_sp.dist_brm-minDis)/(maxDis-minDis))*(irSmall-irSmallS+2)+irSmallS),
                                          2*(((pageReverse_sp.dist_brm-minDis)/(maxDis-minDis))*(irSmall-irSmallS+2)+irSmallS))
                }
                // console.log(((pageReverse_sp.dist_brm)/255)*650.0)
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
                if(pdcCharEn)
                {
                    spiecharbb.clearChart(0,
                                          iSmallX-(((pageReverse_sp.dist_blm-minDis)/(maxDis-minDis))*(irSmall-irSmallS+2)+irSmallS),
                                          iSmallY-(((pageReverse_sp.dist_blm-minDis)/(maxDis-minDis))*(irSmall-irSmallS+2)+irSmallS),
                                          2*(((pageReverse_sp.dist_blm-minDis)/(maxDis-minDis))*(irSmall-irSmallS+2)+irSmallS),
                                          2*(((pageReverse_sp.dist_blm-minDis)/(maxDis-minDis))*(irSmall-irSmallS+2)+irSmallS))
                }
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
                if(pdcCharEn)
                {
                    spiecharba.clearChart(0,
                                          iSmallX-(((pageReverse_sp.dist_bl-minDis)/(maxDis-minDis))*(irSmall-irSmallS+2)+irSmallS),
                                          iSmallY-(((pageReverse_sp.dist_bl-minDis)/(maxDis-minDis))*(irSmall-irSmallS+2)+irSmallS),
                                          2*(((pageReverse_sp.dist_bl-minDis)/(maxDis-minDis))*(irSmall-irSmallS+2)+irSmallS),
                                          2*(((pageReverse_sp.dist_bl-minDis)/(maxDis-minDis))*(irSmall-irSmallS+2)+irSmallS))
                }
                //console.log(((pageReverse_sp.text_bl-12)/(maxDis-minDis)))
            }
        }
        Text {
            id: visualindex
            x: 142
            y: 24
            width: 80
            height: 22
            color:"#d92b2b"
            visible: false
            text:pageReverse_sp.visual_index// pageReverse_sp.visual_index==1?"Reverse":( pageReverse_sp.visual_index==2?"PDC    ":"P and R ")
            font.pixelSize: 23
            font.bold: true
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            onTextChanged: {
                if(pageReverse_sp.visual_index==1||pageReverse_sp.visual_index==3)//fbview.currentIndex=1
                {
                    frontCar.visible  = true
                    backCar.visible   = true
                    pdcCharEn         = false
                    backCarAnimation.start()


                }
                else if(pageReverse_sp.visual_index==2)//fbview.currentIndex=0
                {
                    frontCar.visible  = true
                    backCar.visible   = true
                    pdcCharEn         = false
                    frontCarAnimation.start()


                }

                // fbview.positionViewAtIndex()
            }
        }
        Image{
            x:475;y:0
            visible: pageReverse_sp.bShowReverseTrace && (pageReverse_sp.visual_index==2)//fbview.currentIndex==0
            source:"./" + picPath + "/trace/front/"+pageReverse_sp.iTraceIndex+".png"
            //            asynchronous: true;
        }

        Image{
            x:475
            y:149
            visible: pageReverse_sp.bShowReverseTrace && (pageReverse_sp.visual_index==1||pageReverse_sp.visual_index==3)//fbview.currentIndex==1
            source:"./" + picPath + "/trace/back/"+pageReverse_sp.iTraceIndex+".png"
            //            asynchronous: true;
        }
        Image{
            x:575;y:116
            source:picPath + "/sCar.png"
            //            asynchronous: true;
        }
        Image {
            x:470;y:0
            source:"./" + picPath + "/line.png"
            //        asynchronous: true;
        }
    }


    SequentialAnimation {
        id:backCarAnimation
        running: false
        NumberAnimation{ targets:whole_car ;properties:"y";from:0;to:-480;duration:700}
        //NumberAnimation{ targets:whole_car ;properties:"y";from:-360;to:-480;duration:50}
        onCompleted: {
            frontCar.visible  = false
            backCar.visible   = true
            pdcCharEn         = true
        }
    }
    SequentialAnimation {
        id:frontCarAnimation
        running: false
        NumberAnimation{ targets:whole_car ;properties:"y";from:-480;to:0;duration:700}
        //NumberAnimation{ targets:whole_car ;properties:"y";from:-360;to:0;duration:50}
        onCompleted: {
            frontCar.visible  = true
            backCar.visible   = false
            pdcCharEn         = true
        }
    }
}

