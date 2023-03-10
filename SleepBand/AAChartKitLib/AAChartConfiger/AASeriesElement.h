//
//  AASeriesElement.h
//  AAChartKit
//
//  Created by An An on 17/1/5.
//  Copyright Â© 2017å¹´ An An. All rights reserved.
//*************** ...... SOURCE CODE ...... ***************
//***...................................................***
//*** https://github.com/AAChartModel/AAChartKit        ***
//*** https://github.com/AAChartModel/AAChartKit-Swift  ***
//***...................................................***
//*************** ...... SOURCE CODE ...... ***************

/*
 
 * -------------------------------------------------------------------------------
 *
 * ð ð ð ð  âââ   WARM TIPS!!!   âââ ð ð ð ð
 *
 * Please contact me on GitHub,if there are any problems encountered in use.
 * GitHub Issues : https://github.com/AAChartModel/AAChartKit/issues
 * -------------------------------------------------------------------------------
 * And if you want to contribute for this project, please contact me as well
 * GitHub        : https://github.com/AAChartModel
 * StackOverflow : https://stackoverflow.com/users/7842508/codeforu
 * JianShu       : https://www.jianshu.com/u/f1e6753d4254
 * SegmentFault  : https://segmentfault.com/u/huanghunbieguan
 *
 * -------------------------------------------------------------------------------
 
 */

#import <Foundation/Foundation.h>

@class AAMarker,AADataLabels;

@interface AASeriesElement : NSObject

AAPropStatementAndPropSetFuncStatement(copy,   AASeriesElement, NSString *, type) 
AAPropStatementAndPropSetFuncStatement(assign, AASeriesElement, BOOL      , allowPointSelect) //æ¯å¦åè®¸å¨ç¹å»æ°æ®ç¹æ è®°ï¼markersï¼ãæ±å­ï¼æ±å½¢å¾ï¼ãæåºï¼é¥¼å¾ï¼æ¶éä¸­è¯¥ç¹ï¼éä¸­çç¹å¯ä»¥éè¿ Chart.getSelectedPoints æ¥è·åã é»è®¤æ¯ï¼false.
AAPropStatementAndPropSetFuncStatement(copy,   AASeriesElement, NSString *, name) 
AAPropStatementAndPropSetFuncStatement(strong, AASeriesElement, NSArray  *, data) 
AAPropStatementAndPropSetFuncStatement(copy,   AASeriesElement, NSString *, color) 
AAPropStatementAndPropSetFuncStatement(assign, AASeriesElement, id        , colorByPoint) //When using automatic point colors pulled from the options.colors collection, this option determines whether the chart should receive one color per series or one color per point. é»è®¤æ¯ï¼false.
AAPropStatementAndPropSetFuncStatement(strong, AASeriesElement, AAMarker *, marker) 
AAPropStatementAndPropSetFuncStatement(copy,   AASeriesElement, NSString *, stacking) 
AAPropStatementAndPropSetFuncStatement(copy,   AASeriesElement, NSString *, dashStyle) 
AAPropStatementAndPropSetFuncStatement(strong, AASeriesElement, NSNumber *, threshold) 
AAPropStatementAndPropSetFuncStatement(strong, AASeriesElement, NSNumber *, lineWidth) //æçº¿å¾ãæ²çº¿å¾ãç´æ¹æçº¿å¾ãæçº¿å¡«åå¾ãæ²çº¿å¡«åå¾ãç´æ¹æçº¿å¡«åå¾ççº¿æ¡å®½åº¦
AAPropStatementAndPropSetFuncStatement(strong, AASeriesElement, NSNumber *, borderWidth)//æ±å½¢å¾ãæ¡å½¢å¾ãæå½¢å¾ç­å¾å½¢çæè¾¹å®½åº¦
AAPropStatementAndPropSetFuncStatement(copy,   AASeriesElement, NSString *, borderColor) //æ±å½¢å¾ãæ¡å½¢å¾ãæå½¢å¾é¡¿å·ç­å¾å½¢çæè¾¹é¢è²
AAPropStatementAndPropSetFuncStatement(copy,   AASeriesElement, NSString *, fillColor) //æçº¿å¡«åå¾ãæ²çº¿å¡«åå¾ãç´æ¹æçº¿å¡«åå¾ç­å¡«åå¾ç±»åçå¡«åé¢è²
AAPropStatementAndPropSetFuncStatement(strong, AASeriesElement, NSNumber *, fillOpacity) //æçº¿å¡«åå¾ãæ²çº¿å¡«åå¾ãç´æ¹æçº¿å¡«åå¾ç­å¡«åå¾ç±»åçå¡«åé¢è²éæåº¦
AAPropStatementAndPropSetFuncStatement(copy,   AASeriesElement, NSString *, negativeColor)  // The color for the parts of the graph or points that are below the threshold
AAPropStatementAndPropSetFuncStatement(strong, AASeriesElement, NSNumber *, borderRadius) 
AAPropStatementAndPropSetFuncStatement(copy,   AASeriesElement, NSString *, innerSize) 
AAPropStatementAndPropSetFuncStatement(strong, AASeriesElement, NSNumber *, size) 
AAPropStatementAndPropSetFuncStatement(strong, AASeriesElement, NSArray  *, keys) 
AAPropStatementAndPropSetFuncStatement(strong, AASeriesElement, NSNumber *, yAxis) 
AAPropStatementAndPropSetFuncStatement(strong, AASeriesElement, AADataLabels*, dataLabels) 
AAPropStatementAndPropSetFuncStatement(strong, AASeriesElement, id        , step) //æ¯å¦è½¬åä¸ºç´æ¹æçº¿å¾
AAPropStatementAndPropSetFuncStatement(strong, AASeriesElement, NSDictionary *, states) 
AAPropStatementAndPropSetFuncStatement(assign, AASeriesElement, BOOL      , showInLegend) //Whether to display this particular series or series type in the legend. The default value is true for standalone series, false for linked series. é»è®¤æ¯ï¼true.
AAPropStatementAndPropSetFuncStatement(assign, AASeriesElement, BOOL      , visible) //æ°æ®åæ¯å¦æ¾ç¤ºçç¶æ,å¯ä»¥éè¿ series.show()ãseries.hide()ãseries.setVisible æ¥æ¹åè¿ä¸ªå±æ§
AAPropStatementAndPropSetFuncStatement(strong, AASeriesElement, NSArray  *, zones)
AAPropStatementAndPropSetFuncStatement(copy,   AASeriesElement, NSString *, zoneAxis)
AAPropStatementAndPropSetFuncStatement(strong, AASeriesElement, id, shadow) //æ°æ®åçé´å½±ææãä» 2.3 å¼å§é´å½±å¯ä»¥éç½®æåå« colorãoffsetXãoffsetYãopacity å width å±æ§çå¯¹è±¡å½¢å¼ã é»è®¤æ¯ï¼false

@end


@interface AADataElement : NSObject

AAPropStatementAndPropSetFuncStatement(strong, AADataElement, AADataLabels *, dataLabels)
AAPropStatementAndPropSetFuncStatement(strong, AADataElement, NSNumber *, y)

@end


@interface AAShadow : NSObject

AAPropStatementAndPropSetFuncStatement(copy,   AAShadow, NSString *, color)
AAPropStatementAndPropSetFuncStatement(strong, AAShadow, NSNumber *, offsetX)
AAPropStatementAndPropSetFuncStatement(strong, AAShadow, NSNumber *, offsetY)
AAPropStatementAndPropSetFuncStatement(strong, AAShadow, NSNumber *, opacity)
AAPropStatementAndPropSetFuncStatement(strong, AAShadow, NSNumber *, width)

@end


