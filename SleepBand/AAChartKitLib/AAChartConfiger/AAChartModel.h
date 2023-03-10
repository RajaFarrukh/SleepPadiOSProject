//
//  AAChartModel.h
//  AAChartKit
//
//  Created by An An on 17/1/20.
//  Copyright ยฉ 2017ๅนด An An. All rights reserved.
//*************** ...... SOURCE CODE ...... ***************
//***...................................................***
//*** https://github.com/AAChartModel/AAChartKit        ***
//*** https://github.com/AAChartModel/AAChartKit-Swift  ***
//***...................................................***
//*************** ...... SOURCE CODE ...... ***************

/*
 
 * -------------------------------------------------------------------------------
 *
 * ๐ ๐ ๐ ๐  โโโ   WARM TIPS!!!   โโโ ๐ ๐ ๐ ๐
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
#import "AASeriesElement.h"
#import "AAPlotLinesElement.h"

#define AACHARTKIT_EXTERN     extern __attribute__((visibility ("default")))

typedef NS_ENUM(NSInteger,AAChartAnimation) {
    AAChartAnimationLinear = 0,
    AAChartAnimationEaseInQuad,
    AAChartAnimationEaseOutQuad,
    AAChartAnimationEaseInOutQuad,
    AAChartAnimationEaseInCubic,
    AAChartAnimationEaseOutCubic,
    AAChartAnimationEaseInOutCubic,
    AAChartAnimationEaseInQuart,
    AAChartAnimationEaseOutQuart,
    AAChartAnimationEaseInOutQuart,
    AAChartAnimationEaseInQuint,
    AAChartAnimationEaseOutQuint,
    AAChartAnimationEaseInOutQuint,
    AAChartAnimationEaseInSine,
    AAChartAnimationEaseOutSine,
    AAChartAnimationEaseInOutSine,
    AAChartAnimationEaseInExpo,
    AAChartAnimationEaseOutExpo,
    AAChartAnimationEaseInOutExpo,
    AAChartAnimationEaseInCirc,
    AAChartAnimationEaseOutCirc,
    AAChartAnimationEaseInOutCirc,
    AAChartAnimationEaseOutBounce,
    AAChartAnimationEaseInBack,
    AAChartAnimationEaseOutBack,
    AAChartAnimationEaseInOutBack,
    AAChartAnimationElastic,
    AAChartAnimationSwingFromTo,
    AAChartAnimationSwingFrom,
    AAChartAnimationSwingTo,
    AAChartAnimationBounce,
    AAChartAnimationBouncePast,
    AAChartAnimationEaseFromTo,
    AAChartAnimationEaseFrom,
    AAChartAnimationEaseTo,
};

typedef NSString *AAChartType;
typedef NSString *AAChartSubtitleAlignType;
typedef NSString *AAChartZoomType;
typedef NSString *AAChartStackingType;
typedef NSString *AAChartSymbolType;
typedef NSString *AAChartSymbolStyleType;
typedef NSString *AAChartFontWeightType;
typedef NSString *AALineDashStyleType;

AACHARTKIT_EXTERN AAChartType const AAChartTypeColumn;
AACHARTKIT_EXTERN AAChartType const AAChartTypeBar;
AACHARTKIT_EXTERN AAChartType const AAChartTypeArea;
AACHARTKIT_EXTERN AAChartType const AAChartTypeAreaspline;
AACHARTKIT_EXTERN AAChartType const AAChartTypeLine;
AACHARTKIT_EXTERN AAChartType const AAChartTypeSpline;
AACHARTKIT_EXTERN AAChartType const AAChartTypeScatter;
AACHARTKIT_EXTERN AAChartType const AAChartTypePie;
AACHARTKIT_EXTERN AAChartType const AAChartTypeBubble;
AACHARTKIT_EXTERN AAChartType const AAChartTypePyramid;
AACHARTKIT_EXTERN AAChartType const AAChartTypeFunnel;
AACHARTKIT_EXTERN AAChartType const AAChartTypeColumnrange;
AACHARTKIT_EXTERN AAChartType const AAChartTypeArearange;
AACHARTKIT_EXTERN AAChartType const AAChartTypeAreasplinerange;
AACHARTKIT_EXTERN AAChartType const AAChartTypeBoxplot;
AACHARTKIT_EXTERN AAChartType const AAChartTypeWaterfall;
AACHARTKIT_EXTERN AAChartType const AAChartTypePolygon;

AACHARTKIT_EXTERN AAChartSubtitleAlignType const AAChartSubtitleAlignTypeLeft;
AACHARTKIT_EXTERN AAChartSubtitleAlignType const AAChartSubtitleAlignTypeCenter;
AACHARTKIT_EXTERN AAChartSubtitleAlignType const AAChartSubtitleAlignTypeRight;

AACHARTKIT_EXTERN AAChartZoomType const AAChartZoomTypeNone;
AACHARTKIT_EXTERN AAChartZoomType const AAChartZoomTypeX;
AACHARTKIT_EXTERN AAChartZoomType const AAChartZoomTypeY;
AACHARTKIT_EXTERN AAChartZoomType const AAChartZoomTypeXY;

AACHARTKIT_EXTERN AAChartStackingType const AAChartStackingTypeFalse;
AACHARTKIT_EXTERN AAChartStackingType const AAChartStackingTypeNormal;
AACHARTKIT_EXTERN AAChartStackingType const AAChartStackingTypePercent;

AACHARTKIT_EXTERN AAChartSymbolType const AAChartSymbolTypeCircle;
AACHARTKIT_EXTERN AAChartSymbolType const AAChartSymbolTypeSquare;
AACHARTKIT_EXTERN AAChartSymbolType const AAChartSymbolTypeDiamond;
AACHARTKIT_EXTERN AAChartSymbolType const AAChartSymbolTypeTriangle;
AACHARTKIT_EXTERN AAChartSymbolType const AAChartSymbolTypeTriangle_down;

AACHARTKIT_EXTERN AAChartSymbolStyleType const AAChartSymbolStyleTypeDefault;
AACHARTKIT_EXTERN AAChartSymbolStyleType const AAChartSymbolStyleTypeInnerBlank;
AACHARTKIT_EXTERN AAChartSymbolStyleType const AAChartSymbolStyleTypeBorderBlank;

AACHARTKIT_EXTERN AAChartFontWeightType const AAChartFontWeightTypeThin;
AACHARTKIT_EXTERN AAChartFontWeightType const AAChartFontWeightTypeRegular;
AACHARTKIT_EXTERN AAChartFontWeightType const AAChartFontWeightTypeBold;

AACHARTKIT_EXTERN AALineDashStyleType const AALineDashStyleTypeSolid;
AACHARTKIT_EXTERN AALineDashStyleType const AALineDashStyleTypeShortDash;
AACHARTKIT_EXTERN AALineDashStyleType const AALineDashStyleTypeShortDot;
AACHARTKIT_EXTERN AALineDashStyleType const AALineDashStyleTypeShortDashDot;
AACHARTKIT_EXTERN AALineDashStyleType const AALineDashStyleTypeShortDashDotDot;
AACHARTKIT_EXTERN AALineDashStyleType const AALineDashStyleTypeDot;
AACHARTKIT_EXTERN AALineDashStyleType const AALineDashStyleTypeDash;
AACHARTKIT_EXTERN AALineDashStyleType const AALineDashStyleTypeLongDash;
AACHARTKIT_EXTERN AALineDashStyleType const AALineDashStyleTypeDashDot;
AACHARTKIT_EXTERN AALineDashStyleType const AALineDashStyleTypeLongDashDot;
AACHARTKIT_EXTERN AALineDashStyleType const AALineDashStyleTypeLongDashDotDot;

@interface AAChartModel : NSObject

AAPropStatementAndPropSetFuncStatement(copy,   AAChartModel, NSString *, title) //ๆ?้ขๅๅฎน
AAPropStatementAndPropSetFuncStatement(strong, AAChartModel, NSNumber *, titleFontSize) //Title label font size
AAPropStatementAndPropSetFuncStatement(copy,   AAChartModel, NSString *, titleFontColor) //Title label font color
AAPropStatementAndPropSetFuncStatement(copy,   AAChartModel, NSString *, titleFontWeight) //Title label font weight

AAPropStatementAndPropSetFuncStatement(copy,   AAChartModel, NSString *, subtitle) //ๅฏๆ?้ขๅๅฎน
AAPropStatementAndPropSetFuncStatement(strong, AAChartModel, NSNumber *, subtitleFontSize) //Subtitle label font size
AAPropStatementAndPropSetFuncStatement(copy,   AAChartModel, NSString *, subtitleFontColor) //Subtitle label font color
AAPropStatementAndPropSetFuncStatement(copy,   AAChartModel, NSString *, subtitleFontWeight) //Subtitle label font weight

AAPropStatementAndPropSetFuncStatement(copy,   AAChartModel, NSString *, backgroundColor) //ๅพ่กจ่ๆฏ่ฒ(ๅฟ้กปไธบๅๅญ่ฟๅถ็้ข่ฒ่ฒๅผๅฆ็บข่ฒ"#FF0000")
AAPropStatementAndPropSetFuncStatement(strong, AAChartModel, NSArray     <NSString *>*, colorsTheme) //ๅพ่กจไธป้ข้ข่ฒๆฐ็ป
AAPropStatementAndPropSetFuncStatement(strong, AAChartModel, NSArray     <NSString *>*, categories) //x่ฝดๅๆ?ๆฏไธช็นๅฏนๅบ็ๅ็งฐ(ๆณจๆ:่ฟไธชไธๆฏ็จๆฅ่ฎพ็ฝฎ X ่ฝด็ๅผ,ไปไปๆฏ็จไบ่ฎพ็ฝฎ X ่ฝดๆๅญๅๅฎน็่ๅทฒ)
AAPropStatementAndPropSetFuncStatement(strong, AAChartModel, NSArray  *, series) //ๅพ่กจ็ๆฐๆฎๅๅๅฎน

AAPropStatementAndPropSetFuncStatement(copy,   AAChartModel, AAChartSubtitleAlignType, subtitleAlign) //ๅพ่กจๅฏๆ?้ขๆๆฌๆฐดๅนณๅฏน้ฝๆนๅผใๅฏ้็ๅผๆ โleftโ๏ผโcenterโๅโrightโใ ้ป่ฎคๆฏ๏ผcenter.
AAPropStatementAndPropSetFuncStatement(copy,   AAChartModel, AAChartType,              chartType) //ๅพ่กจ็ฑปๅ
AAPropStatementAndPropSetFuncStatement(copy,   AAChartModel, AAChartStackingType,      stacking) //ๅ?็งฏๆ?ทๅผ
AAPropStatementAndPropSetFuncStatement(copy,   AAChartModel, AAChartSymbolType,        markerSymbol) //ๆ็บฟๆฒ็บฟ่ฟๆฅ็น็็ฑปๅ๏ผ"circle", "square", "diamond", "triangle","triangle-down"๏ผ้ป่ฎคๆฏ"circle"
AAPropStatementAndPropSetFuncStatement(assign, AAChartModel, AAChartSymbolStyleType,   markerSymbolStyle) 
AAPropStatementAndPropSetFuncStatement(copy,   AAChartModel, AAChartZoomType,          zoomType) //็ผฉๆพ็ฑปๅ AAChartZoomTypeX ่กจ็คบๅฏๆฒฟ็ x ่ฝด่ฟ่กๆๅฟ็ผฉๆพ
AAPropStatementAndPropSetFuncStatement(assign, AAChartModel, AAChartAnimation,         animationType) //่ฎพ็ฝฎๅพ่กจ็ๆธฒๆๅจ็ป็ฑปๅ
AAPropStatementAndPropSetFuncStatement(strong, AAChartModel, NSNumber *, animationDuration) //่ฎพ็ฝฎๅพ่กจ็ๆธฒๆๅจ็ปๆถ้ฟ(ๅจ็ปๅไฝไธบๆฏซ็ง)

AAPropStatementAndPropSetFuncStatement(assign, AAChartModel, BOOL,       inverted) //x ่ฝดๆฏๅฆๅ็ด,้ป่ฎคไธบๅฆ
AAPropStatementAndPropSetFuncStatement(assign, AAChartModel, BOOL,       easyGradientColors) //ๆฏๅฆๆนไพฟๅฟซๆทๅฐๅฐๅธธ่งไธป้ข้ข่ฒๆฐ็ป colorsTheme่ชๅจ่ฝฌๆขไธบๅ้ๆๆธๅๆๆ็้ข่ฒๆฐ ็ป(่ฎพ็ฝฎๅๅฐฑไธ็จ่ชๅทฑๅๆๅจๅปๅๆธๅ่ฒๅญๅธ,็ธๅฝไบๆฏ่ฎพ็ฝฎๆธๅ่ฒ็ไธไธชๅฟซๆทๆนๅผ,ๅฝ็ถไบ,ๅฆๆ้่ฆ็ป่ดๅฐ่ชๅฎไนๆธๅ่ฒๆๆ,่ฟๆฏ้่ฆ่ชๅทฑๆๅจ้็ฝฎๆธๅ้ข่ฒๅญๅธๅๅฎน,ๅทไฝๆนๆณๅ่งๅพ่กจ็คบไพไธญ็`้ข่ฒๆธๅๆกๅฝขๅพ`็คบไพไปฃ็?),้ป่ฎคไธบๅฆ
AAPropStatementAndPropSetFuncStatement(assign, AAChartModel, BOOL,       polar) //ๆฏๅฆๆๅๅพๅฝข(ๅไธบ้ท่พพๅพ),้ป่ฎคไธบๅฆ

AAPropStatementAndPropSetFuncStatement(assign, AAChartModel, BOOL,       dataLabelEnabled) //ๆฏๅฆๆพ็คบๆฐๆฎ,้ป่ฎคไธบๅฆ
AAPropStatementAndPropSetFuncStatement(copy,   AAChartModel, NSString *, dataLabelFontColor) //Datalabel font color
AAPropStatementAndPropSetFuncStatement(strong, AAChartModel, NSNumber *, dataLabelFontSize) //Datalabel font size
AAPropStatementAndPropSetFuncStatement(copy,   AAChartModel, NSString *, dataLabelFontWeight) //Datalabel font weight


AAPropStatementAndPropSetFuncStatement(assign, AAChartModel, BOOL,       xAxisVisible) //x ่ฝดๆฏๅฆๅฏ่ง(้ป่ฎคๅฏ่ง)
AAPropStatementAndPropSetFuncStatement(assign, AAChartModel, BOOL,       xAxisReversed) // x ่ฝด็ฟป่ฝฌ,้ป่ฎคไธบๅฆ

AAPropStatementAndPropSetFuncStatement(assign, AAChartModel, BOOL,       xAxisLabelsEnabled) //x ่ฝดๆฏๅฆๆพ็คบๆๅญ
AAPropStatementAndPropSetFuncStatement(strong, AAChartModel, NSNumber *, xAxisLabelsFontSize) //x ่ฝดๆๅญๅญไฝๅคงๅฐ
AAPropStatementAndPropSetFuncStatement(copy,   AAChartModel, NSString *, xAxisLabelsFontColor) //x ่ฝดๆๅญๅญไฝ้ข่ฒ
AAPropStatementAndPropSetFuncStatement(copy,   AAChartModel, AAChartFontWeightType, xAxisLabelsFontWeight) //x ่ฝดๆๅญๅญไฝ็ฒ็ป

AAPropStatementAndPropSetFuncStatement(strong, AAChartModel, NSNumber *, xAxisGridLineWidth) //x ่ฝด็ฝๆ?ผ็บฟ็ๅฎฝๅบฆ
AAPropStatementAndPropSetFuncStatement(strong, AAChartModel, NSNumber *, xAxisTickInterval) //x่ฝดๅปๅบฆ็น้ด้ๆฐ(่ฎพ็ฝฎๆฏ้ๅ?ไธช็นๆพ็คบไธไธช X่ฝด็ๅๅฎน)

AAPropStatementAndPropSetFuncStatement(strong, AAChartModel, NSNumber *, xAxisCrosshairWidth) //่ฎพ็ฝฎ x ่ฝดๅๆ็บฟ็ๅฎฝๅบฆ
AAPropStatementAndPropSetFuncStatement(copy,   AAChartModel, NSString *, xAxisCrosshairColor) //่ฎพ็ฝฎ x ่ฝดๅๆ็บฟ็้ข่ฒ
AAPropStatementAndPropSetFuncStatement(assign, AAChartModel, AALineDashStyleType,   xAxisCrosshairDashStyleType) //่ฎพ็ฝฎ x ่ฝดๅๆ็บฟ็็บฟๆกๆ?ทๅผ็ฑปๅ


AAPropStatementAndPropSetFuncStatement(assign, AAChartModel, BOOL,       yAxisVisible) //y ่ฝดๆฏๅฆๅฏ่ง(้ป่ฎคๅฏ่ง)
AAPropStatementAndPropSetFuncStatement(assign, AAChartModel, BOOL,       yAxisReversed) //y ่ฝด็ฟป่ฝฌ,้ป่ฎคไธบๅฆ

AAPropStatementAndPropSetFuncStatement(assign, AAChartModel, BOOL,       yAxisLabelsEnabled) //y ่ฝดๆฏๅฆๆพ็คบๆๅญ
AAPropStatementAndPropSetFuncStatement(strong, AAChartModel, NSNumber *, yAxisLabelsFontSize) //y ่ฝดๆๅญๅญไฝๅคงๅฐ
AAPropStatementAndPropSetFuncStatement(copy,   AAChartModel, NSString *, yAxisLabelsFontColor) //y ่ฝดๆๅญๅญไฝ้ข่ฒ
AAPropStatementAndPropSetFuncStatement(copy,   AAChartModel, NSString *, gridYLineColor) //y ่ฝดๅๅฒ็บฟ้ข่ฒ

AAPropStatementAndPropSetFuncStatement(copy,   AAChartModel, AAChartFontWeightType , yAxisLabelsFontWeight) //y ่ฝดๆๅญๅญไฝ็ฒ็ป

AAPropStatementAndPropSetFuncStatement(copy,   AAChartModel, NSString *, yAxisTitle) //y ่ฝดๆ?้ข
AAPropStatementAndPropSetFuncStatement(strong, AAChartModel, NSNumber *, yAxisLineWidth) //y y-axis line width
AAPropStatementAndPropSetFuncStatement(strong, AAChartModel, NSNumber *, yAxisGridLineWidth) //y่ฝด็ฝๆ?ผ็บฟ็ๅฎฝๅบฆ
AAPropStatementAndPropSetFuncStatement(assign, AAChartModel, BOOL,       yAxisAllowDecimals) //ๆฏๅฆๅ่ฎธ y ่ฝดๆพ็คบๅฐๆฐ
AAPropStatementAndPropSetFuncStatement(strong, AAChartModel, NSArray  *, yAxisPlotLines) //y ่ฝดๅบ็บฟ็้็ฝฎ
AAPropStatementAndPropSetFuncStatement(strong, AAChartModel, NSNumber *, yAxisMax) //y ่ฝดๆๅคงๅผ
AAPropStatementAndPropSetFuncStatement(strong, AAChartModel, NSNumber *, yAxisMin) //y ่ฝดๆๅฐๅผ๏ผ่ฎพ็ฝฎไธบ0ๅฐฑไธไผๆ่ดๆฐ๏ผ
AAPropStatementAndPropSetFuncStatement(strong, AAChartModel, NSNumber *, yAxisTickInterval) 
AAPropStatementAndPropSetFuncStatement(strong, AAChartModel, NSArray  *, yAxisTickPositions) //่ชๅฎไน y ่ฝดๅๆ?๏ผๅฆ๏ผ[@(0), @(25), @(50), @(75) , (100)]๏ผ
AAPropStatementAndPropSetFuncStatement(strong, AAChartModel, NSNumber *, yAxisCrosshairWidth) //่ฎพ็ฝฎ y ่ฝดๅๆ็บฟ็ๅฎฝๅบฆ
AAPropStatementAndPropSetFuncStatement(copy,   AAChartModel, NSString *, yAxisCrosshairColor) //่ฎพ็ฝฎ y ่ฝดๅๆ็บฟ็้ข่ฒ
AAPropStatementAndPropSetFuncStatement(assign, AAChartModel, AALineDashStyleType,   yAxisCrosshairDashStyleType) //่ฎพ็ฝฎ y ่ฝดๅๆ็บฟ็็บฟๆกๆ?ทๅผ็ฑปๅ


AAPropStatementAndPropSetFuncStatement(assign, AAChartModel, BOOL,       tooltipEnabled) //ๆฏๅฆๆพ็คบๆตฎๅจๆ็คบๆก(้ป่ฎคๆพ็คบ)
AAPropStatementAndPropSetFuncStatement(assign, AAChartModel, BOOL,       tooltipShared)//ๆฏๅฆๅค็ปๆฐๆฎๅฑไบซไธไธชๆตฎๅจๆ็คบๆก
AAPropStatementAndPropSetFuncStatement(copy,   AAChartModel, NSString *, tooltipValueSuffix) //ๆตฎๅจๆ็คบๆกๅไฝๅ็ผ

AAPropStatementAndPropSetFuncStatement(assign, AAChartModel, BOOL,       connectNulls) //่ฎพ็ฝฎๆ็บฟๆฏๅฆๆญ็น้่ฟ(ๆฏๅฆ่ฟๆฅ็ฉบๅผ็น)
AAPropStatementAndPropSetFuncStatement(assign, AAChartModel, BOOL,       legendEnabled) //ๆฏๅฆๆพ็คบๅพไพ lengend(ๅพ่กจๅบ้จๅฏ็นๆ็ๅ็นๅๆๅญ)
AAPropStatementAndPropSetFuncStatement(strong, AAChartModel, NSNumber *, borderRadius) //ๆฑ็ถๅพ้ฟๆกๅพๅคด้จๅ่งๅๅพ(ๅฏ็จไบ่ฎพ็ฝฎๅคด้จ็ๅฝข็ถ,ไปๅฏนๆกๅฝขๅพ,ๆฑ็ถๅพๆๆ)
AAPropStatementAndPropSetFuncStatement(strong, AAChartModel, NSNumber *, markerRadius) //ๆ็บฟ่ฟๆฅ็น็ๅๅพ้ฟๅบฆ
AAPropStatementAndPropSetFuncStatement(copy,   AAChartModel, NSString *, zoomResetButtonText)  //String to display in 'zoom reset button"
AAPropStatementAndPropSetFuncStatement(assign, AAChartModel, BOOL      , touchEventEnabled)

@end
