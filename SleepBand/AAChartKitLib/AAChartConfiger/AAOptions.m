//
//  AAOptions.m
//  AAChartKit
//
//  Created by An An on 17/1/4.
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

#import "AAOptions.h"

@implementation AAOptions

AAPropSetFuncImplementation(AAOptions, AAChart       *, chart)
AAPropSetFuncImplementation(AAOptions, AATitle       *, title)
AAPropSetFuncImplementation(AAOptions, AASubtitle    *, subtitle)
AAPropSetFuncImplementation(AAOptions, AAXAxis       *, xAxis)
AAPropSetFuncImplementation(AAOptions, AAYAxis       *, yAxis)
AAPropSetFuncImplementation(AAOptions, AATooltip     *, tooltip)
AAPropSetFuncImplementation(AAOptions, AAPlotOptions *, plotOptions)
AAPropSetFuncImplementation(AAOptions, NSArray       *, series)
AAPropSetFuncImplementation(AAOptions, AALegend      *, legend)
AAPropSetFuncImplementation(AAOptions, NSArray       *, colors)
AAPropSetFuncImplementation(AAOptions, BOOL,            gradientColorEnabled)
AAPropSetFuncImplementation(AAOptions, NSString      *, zoomResetButtonText)  //String to display in 'zoom reset button"
AAPropSetFuncImplementation(AAOptions, BOOL           , touchEventEnabled)

@end


#define AAFontSizeFormat(fontSize) [NSString stringWithFormat:@"%@%@", fontSize, @"px"]

@implementation AAOptionsConstructor

+ (AAOptions *)configureChartOptionsWithAAChartModel:(AAChartModel *)aaChartModel {
    
    AAChart *aaChart = AAChart.new
    .typeSet(aaChartModel.chartType)//็ปๅพ็ฑปๅ
    .invertedSet(aaChartModel.inverted)//่ฎพ็ฝฎๆฏๅฆๅ่ฝฌๅๆ?่ฝด๏ผไฝฟX่ฝดๅ็ด๏ผY่ฝดๆฐดๅนณใ ๅฆๆๅผไธบ true๏ผๅ x ่ฝด้ป่ฎคๆฏ ๅ็ฝฎ ็ใ ๅฆๆๅพ่กจไธญๅบ็ฐๆกๅฝขๅพ็ณปๅ๏ผๅไผ่ชๅจๅ่ฝฌ
    .backgroundColorSet(aaChartModel.backgroundColor)//่ฎพ็ฝฎๅพ่กจ็่ๆฏ่ฒ(ๅๅซ้ๆๅบฆ็่ฎพ็ฝฎ)
    .pinchTypeSet(aaChartModel.zoomType)//่ฎพ็ฝฎๆๅฟ็ผฉๆพๆนๅ
    .panningSet(true)//่ฎพ็ฝฎๆๅฟ็ผฉๆพๅๆฏๅฆๅฏๅนณ็งป
    .polarSet(aaChartModel.polar);
    
    AATitle *aaTitle = AATitle.new
    .textSet(aaChartModel.title)//ๆ?้ขๆๆฌๅๅฎน
    .styleSet(AAStyle.new
              .colorSet(aaChartModel.titleFontColor)//Title font color
              .fontSizeSet(AAFontSizeFormat(aaChartModel.titleFontSize))//Title font size
              .fontWeightSet(aaChartModel.titleFontWeight)//Title font weight
              );
    
    AASubtitle *aaSubtitle = AASubtitle.new
    .textSet(aaChartModel.subtitle)//ๅฏๆ?้ขๅๅฎน
    .alignSet(aaChartModel.subtitleAlign)//ๅพ่กจๅฏๆ?้ขๆๆฌๆฐดๅนณๅฏน้ฝๆนๅผใๅฏ้็ๅผๆ โleftโ๏ผโcenterโๅโrightโใ ้ป่ฎคๆฏ๏ผcenter.
    .styleSet(AAStyle.new
              .colorSet(aaChartModel.subtitleFontColor)//Subtitle font color
              .fontSizeSet(AAFontSizeFormat(aaChartModel.subtitleFontSize))//Subtitle font size
              .fontWeightSet(aaChartModel.subtitleFontWeight)//Subtitle font weight
              );
    
    AATooltip *aaTooltip = AATooltip.new
    .enabledSet(aaChartModel.tooltipEnabled)//ๅฏ็จๆตฎๅจๆ็คบๆก
    .sharedSet(aaChartModel.tooltipShared)//ๅค็ปๆฐๆฎๅฑไบซไธไธชๆตฎๅจๆ็คบๆก
    .crosshairsSet(NO)//ๅฏ็จๅๆ็บฟ
    //.pointFormatSet(aaChartModel.tooltipValueString)//Tooltip value point format string
    .valueSuffixSet(aaChartModel.tooltipValueSuffix);//ๆตฎๅจๆ็คบๆก็ๅไฝๅ็งฐๅ็ผ
    
    AAPlotOptions *aaPlotOptions = AAPlotOptions.new
    .seriesSet(AASeries.new.stackingSet(aaChartModel.stacking));//่ฎพ็ฝฎๆฏๅฆ็พๅๆฏๅ?ๅ?ๆพ็คบๅพๅฝข
    
    if (aaChartModel.animationType != 0) {
        aaPlotOptions.series.animation = (AAAnimation.new
                                          .easingSet(aaChartModel.animationType)
                                          .durationSet(aaChartModel.animationDuration)
                                          );
    }
    
    [self configureTheStyleOfConnectNodeWithChartModel:aaChartModel plotOptions:aaPlotOptions];
    aaPlotOptions = [self configureTheAAPlotOptionsWithPlotOptions:aaPlotOptions chartModel:aaChartModel];
    //   aaPlotOptions.series.events = @{@"click":@"hahaha"};
    
    AALegend *aaLegend = AALegend.new
    .enabledSet(aaChartModel.legendEnabled);//ๆฏๅฆๆพ็คบ legend
    
    AAOptions *aaOptions = AAOptions.new
    .chartSet(aaChart)
    .titleSet(aaTitle)
    .subtitleSet(aaSubtitle)
    .tooltipSet(aaTooltip)
    .plotOptionsSet(aaPlotOptions)
    .legendSet(aaLegend)
    .seriesSet(aaChartModel.series)
    .colorsSet(aaChartModel.colorsTheme)//่ฎพ็ฝฎ้ข่ฒไธป้ข
    .gradientColorEnabledSet(aaChartModel.easyGradientColors)//ไธป้ข้ข่ฒๆฏๅฆไธบๆธๅ่ฒ
    .zoomResetButtonTextSet(aaChartModel.zoomResetButtonText)//้็ฝฎ็ผฉๆพๆ้ฎ็้ป่ฎคๆ?้ข
    .touchEventEnabledSet(aaChartModel.touchEventEnabled);//ๆฏๅฆๆฏๆ็นๅปไบไปถ
    
    if (   aaChartModel.chartType != AAChartTypePie
        && aaChartModel.chartType != AAChartTypePyramid
        && aaChartModel.chartType != AAChartTypeFunnel) {
        [self configureAxisContentAndStyleWithAAOptions:aaOptions AAChartModel:aaChartModel];
    }
    
    return aaOptions;
}

+ (void)configureAxisContentAndStyleWithAAOptions:(AAOptions *)aaOptions AAChartModel:(AAChartModel *)aaChartModel {
    
    AAXAxis *aaXAxis = AAXAxis.new
    .labelsSet(AALabels.new
               .enabledSet(aaChartModel.xAxisLabelsEnabled)//่ฎพ็ฝฎ x ่ฝดๆฏๅฆๆพ็คบๆๅญ
               .styleSet(AAStyle.new
                         .colorSet(aaChartModel.xAxisLabelsFontColor)//xAxis Label font color
                         .fontSizeSet(AAFontSizeFormat(aaChartModel.xAxisLabelsFontSize))//xAxis Label font size
                         .fontWeightSet(aaChartModel.xAxisLabelsFontWeight)//xAxis Label font weight
                         )
               )
    .reversedSet(aaChartModel.xAxisReversed)
    .gridLineWidthSet(aaChartModel.xAxisGridLineWidth)//x่ฝด็ฝๆ?ผ็บฟๅฎฝๅบฆ
    .categoriesSet(aaChartModel.categories)
    .visibleSet(aaChartModel.xAxisVisible)//x่ฝดๆฏๅฆๅฏ่ง
    .lineColorSet(@"#1b86a4")//x่ฝด้ข่ฒ
    .tickColorSet(@"#ffffff")//x่ฝดๅปๅบฆ้ข่ฒ
    .tickIntervalSet(aaChartModel.xAxisTickInterval);//x่ฝดๅๆ?็น้ด้ๆฐ
    if ([aaChartModel.xAxisCrosshairWidth floatValue]>0) {
        aaXAxis.crosshairSet(AACrosshair.new
                             .widthSet(aaChartModel.xAxisCrosshairWidth)
                             .colorSet(aaChartModel.xAxisCrosshairColor)
                             .dashStyleSet(aaChartModel.xAxisCrosshairDashStyleType)
                             );
    }
    
    AAYAxis *aaYAxis = AAYAxis.new
    .labelsSet(AALabels.new
               .enabledSet(aaChartModel.yAxisLabelsEnabled)//่ฎพ็ฝฎ y ่ฝดๆฏๅฆๆพ็คบๆฐๅญ
               .styleSet(AAStyle.new
                         .colorSet(aaChartModel.yAxisLabelsFontColor)//yAxis Label font color
                         .fontSizeSet(AAFontSizeFormat(aaChartModel.yAxisLabelsFontSize))//yAxis Label font size
                         .fontWeightSet(aaChartModel.yAxisLabelsFontWeight)//yAxis Label font weight
                         )
               .formatSet(@"{value:.,0f}")//่ฎฉy่ฝด็ๅผๅฎๆดๆพ็คบ ่ไธๆฏ100000ๆพ็คบไธบ100k
               )
    .minSet(aaChartModel.yAxisMin)//่ฎพ็ฝฎ y ่ฝดๆๅฐๅผ,ๆๅฐๅผ็ญไบ้ถๅฐฑไธ่ฝๆพ็คบ่ดๅผไบ
    .maxSet(aaChartModel.yAxisMax)//y่ฝดๆๅคงๅผ
    .tickPositionsSet(aaChartModel.yAxisTickPositions)//่ชๅฎไนY่ฝดๅๆ?
    .allowDecimalsSet(aaChartModel.yAxisAllowDecimals)//ๆฏๅฆๅ่ฎธๆพ็คบๅฐๆฐ
    .plotLinesSet(aaChartModel.yAxisPlotLines) //ๆ?็คบ็บฟ่ฎพ็ฝฎ
    .reversedSet(aaChartModel.yAxisReversed)
    .gridLineWidthSet(aaChartModel.yAxisGridLineWidth)//y่ฝด็ฝๆ?ผ็บฟๅฎฝๅบฆ
    .titleSet(AATitle.new.textSet(aaChartModel.yAxisTitle))//y ่ฝดๆ?้ข
    .lineWidthSet(aaChartModel.yAxisLineWidth)//่ฎพ็ฝฎ y่ฝด่ฝด็บฟ็ๅฎฝๅบฆ,ไธบ0ๅณๆฏ้่ y่ฝด่ฝด็บฟ
    .visibleSet(aaChartModel.yAxisVisible)
    .lineColorSet(@"#ffffff")//y่ฝด้ข่ฒ
    .gridLineColorSet(aaChartModel.gridYLineColor) //y่ฝด็ฝๆ?ผ็บฟ้ข่ฒ
    .tickIntervalSet(aaChartModel.yAxisTickInterval);
    
    if ([aaChartModel.yAxisCrosshairWidth floatValue]>0) {
        aaYAxis.crosshairSet(AACrosshair.new
                             .widthSet(aaChartModel.yAxisCrosshairWidth)
                             .colorSet(aaChartModel.yAxisCrosshairColor)
                             .dashStyleSet(aaChartModel.yAxisCrosshairDashStyleType)
                             );
    }
    
    aaOptions.xAxis = aaXAxis;
    aaOptions.yAxis = aaYAxis;
}

+ (void)configureTheStyleOfConnectNodeWithChartModel:(AAChartModel *)aaChartModel plotOptions:(AAPlotOptions *)aaPlotOptions {
    //ๆฐๆฎ็นๆ?่ฎฐ็ธๅณ้็ฝฎ๏ผๅชๆๆ็บฟๅพใๆฒ็บฟๅพใๆ็บฟๅบๅๅกซๅๅพใๆฒ็บฟๅบๅๅกซๅๅพใๆฃ็นๅพๆๆๆฐๆฎ็นๆ?่ฎฐ
    if (   aaChartModel.chartType == AAChartTypeArea
        || aaChartModel.chartType == AAChartTypeAreaspline
        || aaChartModel.chartType == AAChartTypeLine
        || aaChartModel.chartType == AAChartTypeSpline
        || aaChartModel.chartType == AAChartTypeScatter) {
        AAMarker *aaMarker = AAMarker.new
        .radiusSet(aaChartModel.markerRadius)//ๆฒ็บฟ่ฟๆฅ็นๅๅพ๏ผ้ป่ฎคๆฏ4
        .symbolSet(aaChartModel.markerSymbol);//ๆฒ็บฟ็น็ฑปๅ๏ผ"circle", "square", "diamond", "triangle","triangle-down"๏ผ้ป่ฎคๆฏ"circle"
        if (aaChartModel.markerSymbolStyle == AAChartSymbolStyleTypeInnerBlank) {
            aaMarker.fillColorSet(@"#ffffff")//็น็ๅกซๅ่ฒ(็จๆฅ่ฎพ็ฝฎๆ็บฟ่ฟๆฅ็น็ๅกซๅ่ฒ)
            .lineWidthSet(@2)//ๅคๆฒฟ็บฟ็ๅฎฝๅบฆ(็จๆฅ่ฎพ็ฝฎๆ็บฟ่ฟๆฅ็น็่ฝฎๅปๆ่พน็ๅฎฝๅบฆ)
            .lineColorSet(@"");//ๅคๆฒฟ็บฟ็้ข่ฒ(็จๆฅ่ฎพ็ฝฎๆ็บฟ่ฟๆฅ็น็่ฝฎๅปๆ่พน้ข่ฒ๏ผๅฝๅผไธบ็ฉบๅญ็ฌฆไธฒๆถ๏ผ้ป่ฎคๅๆฐๆฎ็นๆๆฐๆฎๅ็้ข่ฒ)
        } else if (aaChartModel.markerSymbolStyle == AAChartSymbolStyleTypeBorderBlank) {
            aaMarker.lineWidthSet(@2)
            .lineColorSet(aaChartModel.backgroundColor);
        }
        AASeries *aaSeries = aaPlotOptions.series;
        aaSeries.connectNulls = aaChartModel.connectNulls;
        aaSeries.marker = aaMarker;
    }
}

+ (AAPlotOptions *)configureTheAAPlotOptionsWithPlotOptions:(AAPlotOptions *)aaPlotOptions chartModel:(AAChartModel *)aaChartModel {
    
    AAChartType chartType = aaChartModel.chartType;
    
    AADataLabels *aaDataLabels;
    if (aaChartModel.dataLabelEnabled == true) {
        aaDataLabels = (AADataLabels.new
                        .enabledSet(aaChartModel.dataLabelEnabled)
                        .styleSet(AAStyle.new
                                  .colorSet(aaChartModel.dataLabelFontColor)
                                  .fontSizeSet(AAFontSizeFormat(aaChartModel.dataLabelFontSize))
                                  .fontWeightSet(aaChartModel.dataLabelFontWeight)
                                  )
                        );
    }
    
    if (chartType == AAChartTypeColumn) {
        AAColumn *aaColumn = AAColumn.new
                              .borderWidthSet(@0)
                              .borderRadiusSet(aaChartModel.borderRadius)
                              .dataLabelsSet(aaDataLabels);
        if (aaChartModel.polar == true) {
            aaColumn.pointPaddingSet(@0)
            .groupPaddingSet(@0.005);
        }
        aaPlotOptions.columnSet(aaColumn);
    } else if (chartType == AAChartTypeBar) {
        AABar *aaBar = (AABar.new
                        .borderWidthSet(@0)
                        .borderRadiusSet(aaChartModel.borderRadius)
                        .dataLabelsSet(aaDataLabels));
        if (aaChartModel.polar == true) {
            aaBar.pointPaddingSet(@0)
            .groupPaddingSet(@0.005);
        }
        aaPlotOptions.barSet(aaBar);
    } else if (chartType == AAChartTypeArea) {
        aaPlotOptions.areaSet(AAArea.new.dataLabelsSet(aaDataLabels));
    } else if (chartType == AAChartTypeAreaspline) {
        aaPlotOptions.areasplineSet(AAAreaspline.new.dataLabelsSet(aaDataLabels));
    } else if (chartType == AAChartTypeLine) {
        aaPlotOptions.lineSet(AALine.new.dataLabelsSet(aaDataLabels));
    } else if (chartType == AAChartTypeSpline) {
        aaPlotOptions.splineSet(AASpline.new.dataLabelsSet(aaDataLabels));
    } else if (chartType == AAChartTypePie) {
        AAPie *aaPie = (AAPie.new
                        .allowPointSelectSet(true)
                        .cursorSet(@"pointer")
                        .showInLegendSet(true)
                        );
        if (aaChartModel.dataLabelEnabled == true) {
            aaPie.dataLabelsSet(aaDataLabels.formatSet(@"<b>{point.name}</b>: {point.percentage:.1f} %"));
        } else {
            aaPie.dataLabelsSet(AADataLabels.new.enabledSet(false));
        }
        aaPlotOptions.pieSet(aaPie);
    } else if (chartType == AAChartTypeColumnrange) {
        NSMutableDictionary *columnRangeDic = [[NSMutableDictionary alloc]init];
        [columnRangeDic setValue:@0 forKey:@"borderRadius"];//The color of the border surrounding each column or bar
        [columnRangeDic setValue:@0 forKey:@"borderWidth"];//The corner radius of the border surrounding each column or bar. default๏ผ0.
        [columnRangeDic setValue:aaDataLabels forKey:@"dataLabels"];
        aaPlotOptions.columnrangeSet(columnRangeDic);
    } else if (chartType == AAChartTypeArearange) {
        NSDictionary *areaRangeDic = [[NSMutableDictionary alloc]init];
        [areaRangeDic setValue:aaDataLabels forKey:@"dataLabels"];
        aaPlotOptions.arearangeSet(areaRangeDic);
    }
    return aaPlotOptions;
}



@end


