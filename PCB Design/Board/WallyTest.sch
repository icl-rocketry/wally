<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.6.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="ESP32-S3-WROOM-1-N16">
<description>&lt;WiFi Modules - 802.11 [Engineering Samples] SMD Module, ESP32-S3, 16 MB SPI Flash, PCB Antenna&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="ESP32S3WROOM1N16">
<description>&lt;b&gt;ESP32-S3-WROOM-1-N16-1&lt;/b&gt;&lt;br&gt;
</description>
<smd name="1" x="-8.75" y="5.26" dx="1.5" dy="0.9" layer="1"/>
<smd name="2" x="-8.75" y="3.99" dx="1.5" dy="0.9" layer="1"/>
<smd name="3" x="-8.75" y="2.72" dx="1.5" dy="0.9" layer="1"/>
<smd name="4" x="-8.75" y="1.45" dx="1.5" dy="0.9" layer="1"/>
<smd name="5" x="-8.75" y="0.18" dx="1.5" dy="0.9" layer="1"/>
<smd name="6" x="-8.75" y="-1.09" dx="1.5" dy="0.9" layer="1"/>
<smd name="7" x="-8.75" y="-2.36" dx="1.5" dy="0.9" layer="1"/>
<smd name="8" x="-8.75" y="-3.63" dx="1.5" dy="0.9" layer="1"/>
<smd name="9" x="-8.75" y="-4.9" dx="1.5" dy="0.9" layer="1"/>
<smd name="10" x="-8.75" y="-6.17" dx="1.5" dy="0.9" layer="1"/>
<smd name="11" x="-8.75" y="-7.44" dx="1.5" dy="0.9" layer="1"/>
<smd name="12" x="-8.75" y="-8.71" dx="1.5" dy="0.9" layer="1"/>
<smd name="13" x="-8.75" y="-9.98" dx="1.5" dy="0.9" layer="1"/>
<smd name="14" x="-8.75" y="-11.25" dx="1.5" dy="0.9" layer="1"/>
<smd name="15" x="-6.985" y="-12.5" dx="1.5" dy="0.9" layer="1" rot="R90"/>
<smd name="16" x="-5.715" y="-12.5" dx="1.5" dy="0.9" layer="1" rot="R90"/>
<smd name="17" x="-4.445" y="-12.5" dx="1.5" dy="0.9" layer="1" rot="R90"/>
<smd name="18" x="-3.175" y="-12.5" dx="1.5" dy="0.9" layer="1" rot="R90"/>
<smd name="19" x="-1.905" y="-12.5" dx="1.5" dy="0.9" layer="1" rot="R90"/>
<smd name="20" x="-0.635" y="-12.5" dx="1.5" dy="0.9" layer="1" rot="R90"/>
<smd name="21" x="0.635" y="-12.5" dx="1.5" dy="0.9" layer="1" rot="R90"/>
<smd name="22" x="1.905" y="-12.5" dx="1.5" dy="0.9" layer="1" rot="R90"/>
<smd name="23" x="3.175" y="-12.5" dx="1.5" dy="0.9" layer="1" rot="R90"/>
<smd name="24" x="4.445" y="-12.5" dx="1.5" dy="0.9" layer="1" rot="R90"/>
<smd name="25" x="5.715" y="-12.5" dx="1.5" dy="0.9" layer="1" rot="R90"/>
<smd name="26" x="6.985" y="-12.5" dx="1.5" dy="0.9" layer="1" rot="R90"/>
<smd name="27" x="8.75" y="-11.25" dx="1.5" dy="0.9" layer="1"/>
<smd name="28" x="8.75" y="-9.98" dx="1.5" dy="0.9" layer="1"/>
<smd name="29" x="8.75" y="-8.71" dx="1.5" dy="0.9" layer="1"/>
<smd name="30" x="8.75" y="-7.44" dx="1.5" dy="0.9" layer="1"/>
<smd name="31" x="8.75" y="-6.17" dx="1.5" dy="0.9" layer="1"/>
<smd name="32" x="8.75" y="-4.9" dx="1.5" dy="0.9" layer="1"/>
<smd name="33" x="8.75" y="-3.63" dx="1.5" dy="0.9" layer="1"/>
<smd name="34" x="8.75" y="-2.36" dx="1.5" dy="0.9" layer="1"/>
<smd name="35" x="8.75" y="-1.09" dx="1.5" dy="0.9" layer="1"/>
<smd name="36" x="8.75" y="0.18" dx="1.5" dy="0.9" layer="1"/>
<smd name="37" x="8.75" y="1.45" dx="1.5" dy="0.9" layer="1"/>
<smd name="38" x="8.75" y="2.72" dx="1.5" dy="0.9" layer="1"/>
<smd name="39" x="8.75" y="3.99" dx="1.5" dy="0.9" layer="1"/>
<smd name="40" x="8.75" y="5.26" dx="1.5" dy="0.9" layer="1"/>
<smd name="41" x="-1.5" y="-2.46" dx="0.9" dy="0.9" layer="1"/>
<smd name="42" x="-1.5" y="-1.06" dx="0.9" dy="0.9" layer="1"/>
<smd name="43" x="-2.9" y="-1.06" dx="0.9" dy="0.9" layer="1"/>
<smd name="44" x="-2.9" y="-2.46" dx="0.9" dy="0.9" layer="1"/>
<smd name="45" x="-2.9" y="-3.86" dx="0.9" dy="0.9" layer="1"/>
<smd name="46" x="-1.5" y="-3.86" dx="0.9" dy="0.9" layer="1"/>
<smd name="47" x="-0.1" y="-3.86" dx="0.9" dy="0.9" layer="1"/>
<smd name="48" x="-0.1" y="-2.46" dx="0.9" dy="0.9" layer="1"/>
<smd name="49" x="-0.1" y="-1.06" dx="0.9" dy="0.9" layer="1"/>
<text x="0" y="-0.25" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="0" y="-0.25" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-9" y1="-12.75" x2="9" y2="-12.75" width="0.1" layer="51"/>
<wire x1="9" y1="-12.75" x2="9" y2="12.75" width="0.1" layer="51"/>
<wire x1="9" y1="12.75" x2="-9" y2="12.75" width="0.1" layer="51"/>
<wire x1="-9" y1="12.75" x2="-9" y2="-12.75" width="0.1" layer="51"/>
<wire x1="-10.5" y1="13.75" x2="10.5" y2="13.75" width="0.1" layer="51"/>
<wire x1="10.5" y1="13.75" x2="10.5" y2="-14.25" width="0.1" layer="51"/>
<wire x1="10.5" y1="-14.25" x2="-10.5" y2="-14.25" width="0.1" layer="51"/>
<wire x1="-10.5" y1="-14.25" x2="-10.5" y2="13.75" width="0.1" layer="51"/>
<wire x1="9" y1="6" x2="9" y2="12.75" width="0.2" layer="21"/>
<wire x1="9" y1="12.75" x2="-9" y2="12.75" width="0.2" layer="21"/>
<wire x1="-9" y1="12.75" x2="-9" y2="6" width="0.2" layer="21"/>
<wire x1="-9.8" y1="5.26" x2="-9.8" y2="5.26" width="0.1" layer="21"/>
<wire x1="-9.8" y1="5.26" x2="-9.9" y2="5.26" width="0.1" layer="21" curve="180"/>
<wire x1="-9.9" y1="5.26" x2="-9.9" y2="5.26" width="0.1" layer="21"/>
<wire x1="-9.9" y1="5.26" x2="-9.8" y2="5.26" width="0.1" layer="21" curve="180"/>
</package>
</packages>
<symbols>
<symbol name="ESP32-S3-WROOM-1-N16">
<wire x1="5.08" y1="2.54" x2="27.94" y2="2.54" width="0.254" layer="94"/>
<wire x1="27.94" y1="-63.5" x2="27.94" y2="2.54" width="0.254" layer="94"/>
<wire x1="27.94" y1="-63.5" x2="5.08" y2="-63.5" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-63.5" width="0.254" layer="94"/>
<text x="29.21" y="7.62" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="29.21" y="5.08" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="GND_1" x="0" y="0" length="middle"/>
<pin name="3V3" x="0" y="-2.54" length="middle"/>
<pin name="EN" x="0" y="-5.08" length="middle"/>
<pin name="IO4" x="0" y="-7.62" length="middle"/>
<pin name="IO5" x="0" y="-10.16" length="middle"/>
<pin name="IO6" x="0" y="-12.7" length="middle"/>
<pin name="IO7" x="0" y="-15.24" length="middle"/>
<pin name="IO15" x="0" y="-17.78" length="middle"/>
<pin name="IO16" x="0" y="-20.32" length="middle"/>
<pin name="IO17" x="0" y="-22.86" length="middle"/>
<pin name="IO18" x="0" y="-25.4" length="middle"/>
<pin name="IO8" x="0" y="-27.94" length="middle"/>
<pin name="IO19" x="0" y="-30.48" length="middle"/>
<pin name="IO20" x="0" y="-33.02" length="middle"/>
<pin name="IO3" x="0" y="-35.56" length="middle"/>
<pin name="IO46" x="0" y="-38.1" length="middle"/>
<pin name="IO9" x="0" y="-40.64" length="middle"/>
<pin name="IO10" x="0" y="-43.18" length="middle"/>
<pin name="IO11" x="0" y="-45.72" length="middle"/>
<pin name="IO12" x="0" y="-48.26" length="middle"/>
<pin name="IO13" x="0" y="-50.8" length="middle"/>
<pin name="IO14" x="0" y="-53.34" length="middle"/>
<pin name="IO21" x="0" y="-55.88" length="middle"/>
<pin name="IO47" x="0" y="-58.42" length="middle"/>
<pin name="IO48" x="0" y="-60.96" length="middle"/>
<pin name="IO45" x="33.02" y="0" length="middle" rot="R180"/>
<pin name="IO0" x="33.02" y="-2.54" length="middle" rot="R180"/>
<pin name="IO35" x="33.02" y="-5.08" length="middle" rot="R180"/>
<pin name="IO36" x="33.02" y="-7.62" length="middle" rot="R180"/>
<pin name="IO37" x="33.02" y="-10.16" length="middle" rot="R180"/>
<pin name="IO38" x="33.02" y="-12.7" length="middle" rot="R180"/>
<pin name="IO39" x="33.02" y="-15.24" length="middle" rot="R180"/>
<pin name="IO40" x="33.02" y="-17.78" length="middle" rot="R180"/>
<pin name="IO41" x="33.02" y="-20.32" length="middle" rot="R180"/>
<pin name="IO42" x="33.02" y="-22.86" length="middle" rot="R180"/>
<pin name="RXD0" x="33.02" y="-25.4" length="middle" rot="R180"/>
<pin name="TXD0" x="33.02" y="-27.94" length="middle" rot="R180"/>
<pin name="IO2" x="33.02" y="-30.48" length="middle" rot="R180"/>
<pin name="IO1" x="33.02" y="-33.02" length="middle" rot="R180"/>
<pin name="GND_2" x="33.02" y="-35.56" length="middle" rot="R180"/>
<pin name="GND_3" x="33.02" y="-38.1" length="middle" rot="R180"/>
<pin name="GND_4" x="33.02" y="-40.64" length="middle" rot="R180"/>
<pin name="GND_5" x="33.02" y="-43.18" length="middle" rot="R180"/>
<pin name="GND_6" x="33.02" y="-45.72" length="middle" rot="R180"/>
<pin name="GND_7" x="33.02" y="-48.26" length="middle" rot="R180"/>
<pin name="GND_8" x="33.02" y="-50.8" length="middle" rot="R180"/>
<pin name="GND_9" x="33.02" y="-53.34" length="middle" rot="R180"/>
<pin name="GND_10" x="33.02" y="-55.88" length="middle" rot="R180"/>
<pin name="GND_11" x="33.02" y="-58.42" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="ESP32-S3-WROOM-1-N16" prefix="IC">
<description>&lt;b&gt;WiFi Modules - 802.11 [Engineering Samples] SMD Module, ESP32-S3, 16 MB SPI Flash, PCB Antenna&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://www.espressif.com/sites/default/files/documentation/esp32-s3-wroom-1_wroom-1u_datasheet_en.pdf"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="ESP32-S3-WROOM-1-N16" x="0" y="0"/>
</gates>
<devices>
<device name="" package="ESP32S3WROOM1N16">
<connects>
<connect gate="G$1" pin="3V3" pad="2"/>
<connect gate="G$1" pin="EN" pad="3"/>
<connect gate="G$1" pin="GND_1" pad="1"/>
<connect gate="G$1" pin="GND_10" pad="48"/>
<connect gate="G$1" pin="GND_11" pad="49"/>
<connect gate="G$1" pin="GND_2" pad="40"/>
<connect gate="G$1" pin="GND_3" pad="41"/>
<connect gate="G$1" pin="GND_4" pad="42"/>
<connect gate="G$1" pin="GND_5" pad="43"/>
<connect gate="G$1" pin="GND_6" pad="44"/>
<connect gate="G$1" pin="GND_7" pad="45"/>
<connect gate="G$1" pin="GND_8" pad="46"/>
<connect gate="G$1" pin="GND_9" pad="47"/>
<connect gate="G$1" pin="IO0" pad="27"/>
<connect gate="G$1" pin="IO1" pad="39"/>
<connect gate="G$1" pin="IO10" pad="18"/>
<connect gate="G$1" pin="IO11" pad="19"/>
<connect gate="G$1" pin="IO12" pad="20"/>
<connect gate="G$1" pin="IO13" pad="21"/>
<connect gate="G$1" pin="IO14" pad="22"/>
<connect gate="G$1" pin="IO15" pad="8"/>
<connect gate="G$1" pin="IO16" pad="9"/>
<connect gate="G$1" pin="IO17" pad="10"/>
<connect gate="G$1" pin="IO18" pad="11"/>
<connect gate="G$1" pin="IO19" pad="13"/>
<connect gate="G$1" pin="IO2" pad="38"/>
<connect gate="G$1" pin="IO20" pad="14"/>
<connect gate="G$1" pin="IO21" pad="23"/>
<connect gate="G$1" pin="IO3" pad="15"/>
<connect gate="G$1" pin="IO35" pad="28"/>
<connect gate="G$1" pin="IO36" pad="29"/>
<connect gate="G$1" pin="IO37" pad="30"/>
<connect gate="G$1" pin="IO38" pad="31"/>
<connect gate="G$1" pin="IO39" pad="32"/>
<connect gate="G$1" pin="IO4" pad="4"/>
<connect gate="G$1" pin="IO40" pad="33"/>
<connect gate="G$1" pin="IO41" pad="34"/>
<connect gate="G$1" pin="IO42" pad="35"/>
<connect gate="G$1" pin="IO45" pad="26"/>
<connect gate="G$1" pin="IO46" pad="16"/>
<connect gate="G$1" pin="IO47" pad="24"/>
<connect gate="G$1" pin="IO48" pad="25"/>
<connect gate="G$1" pin="IO5" pad="5"/>
<connect gate="G$1" pin="IO6" pad="6"/>
<connect gate="G$1" pin="IO7" pad="7"/>
<connect gate="G$1" pin="IO8" pad="12"/>
<connect gate="G$1" pin="IO9" pad="17"/>
<connect gate="G$1" pin="RXD0" pad="36"/>
<connect gate="G$1" pin="TXD0" pad="37"/>
</connects>
<technologies>
<technology name="">
<attribute name="ARROW_PART_NUMBER" value="" constant="no"/>
<attribute name="ARROW_PRICE-STOCK" value="" constant="no"/>
<attribute name="DESCRIPTION" value="WiFi Modules - 802.11 [Engineering Samples] SMD Module, ESP32-S3, 16 MB SPI Flash, PCB Antenna" constant="no"/>
<attribute name="HEIGHT" value="3.25mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Espressif Systems" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="ESP32-S3-WROOM-1-N16" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="356-ESP32S3WROOM1N16" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/Espressif-Systems/ESP32-S3-WROOM-1-N16?qs=Li%252BoUPsLEntjPrtJwwS5Pw%3D%3D" constant="no"/>
<attribute name="MOUSER_TESTING_PART_NUMBER" value="" constant="no"/>
<attribute name="MOUSER_TESTING_PRICE-STOCK" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="ngspice-simulation" urn="urn:adsk.eagle:library:527439">
<description>SPICE compatible library parts</description>
<packages>
</packages>
<symbols>
<symbol name="0" urn="urn:adsk.eagle:symbol:527455/1" library_version="18">
<description>Simulation ground symbol (spice node 0)</description>
<wire x1="-2.54" y1="0" x2="2.54" y2="0" width="0.1524" layer="94"/>
<wire x1="2.54" y1="0" x2="0" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="0" y1="-2.54" x2="-2.54" y2="0" width="0.1524" layer="94"/>
<pin name="0" x="0" y="0" visible="off" length="point" direction="sup"/>
</symbol>
<symbol name="C" urn="urn:adsk.eagle:symbol:527449/4" library_version="18">
<description>Capacitor</description>
<rectangle x1="-2.032" y1="-2.032" x2="2.032" y2="-1.524" layer="94"/>
<rectangle x1="-2.032" y1="-1.016" x2="2.032" y2="-0.508" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="-0.508" width="0.1524" layer="94"/>
<wire x1="0" y1="-2.54" x2="0" y2="-2.032" width="0.1524" layer="94"/>
<pin name="1" x="0" y="2.54" visible="off" length="short" direction="pas" swaplevel="1" rot="R270"/>
<pin name="2" x="0" y="-5.08" visible="off" length="short" direction="pas" swaplevel="1" rot="R90"/>
<text x="2.54" y="2.54" size="1.778" layer="95">&gt;NAME</text>
<text x="2.54" y="-2.54" size="1.778" layer="97">&gt;SPICEMODEL</text>
<text x="2.54" y="0" size="1.778" layer="96">&gt;VALUE</text>
<text x="2.54" y="-5.08" size="1.778" layer="97">&gt;SPICEEXTRA</text>
</symbol>
<symbol name="R" urn="urn:adsk.eagle:symbol:527454/4" library_version="18">
<description>RESISTOR</description>
<wire x1="-2.54" y1="-0.889" x2="2.54" y2="-0.889" width="0.254" layer="94"/>
<wire x1="2.54" y1="0.889" x2="-2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="2.54" y1="-0.889" x2="2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-0.889" x2="-2.54" y2="0.889" width="0.254" layer="94"/>
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
<pin name="2" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<text x="-2.54" y="2.54" size="1.778" layer="95">&gt;NAME</text>
<text x="-2.54" y="-6.35" size="1.778" layer="97">&gt;SPICEMODEL</text>
<text x="-2.54" y="-3.81" size="1.778" layer="96">&gt;VALUE</text>
<text x="-2.54" y="-8.89" size="1.778" layer="97">&gt;SPICEEXTRA</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" urn="urn:adsk.eagle:component:527478/1" prefix="X_" library_version="18">
<description>Simulation ground symbol (spice node 0)</description>
<gates>
<gate name="G$1" symbol="0" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name="">
<attribute name="SPICEGROUND" value=""/>
<attribute name="_EXTERNAL_" value=""/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="C" urn="urn:adsk.eagle:component:527468/6" prefix="C" uservalue="yes" library_version="18">
<description>CAPACITOR</description>
<gates>
<gate name="G$1" symbol="C" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name="">
<attribute name="_EXTERNAL_" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
<spice>
<pinmapping spiceprefix="C">
<pinmap gate="G$1" pin="1" pinorder="1"/>
<pinmap gate="G$1" pin="2" pinorder="2"/>
</pinmapping>
</spice>
</deviceset>
<deviceset name="R" urn="urn:adsk.eagle:component:527474/6" prefix="R" uservalue="yes" library_version="18">
<description>RESISTOR</description>
<gates>
<gate name="G$1" symbol="R" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name="">
<attribute name="_EXTERNAL_" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
<spice>
<pinmapping spiceprefix="R">
<pinmap gate="G$1" pin="1" pinorder="1"/>
<pinmap gate="G$1" pin="2" pinorder="2"/>
</pinmapping>
</spice>
</deviceset>
</devicesets>
</library>
<library name="supply2" urn="urn:adsk.eagle:library:372">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
Please keep in mind, that these devices are necessary for the
automatic wiring of the supply signals.&lt;p&gt;
The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="VDD" urn="urn:adsk.eagle:symbol:26998/1" library_version="2">
<circle x="0" y="1.27" radius="1.27" width="0.254" layer="94"/>
<text x="-1.905" y="3.175" size="1.778" layer="96">&gt;VALUE</text>
<pin name="VDD" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="VDD" urn="urn:adsk.eagle:component:27044/1" prefix="SUPPLY" library_version="2">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="VDD" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="RFM95W-868S2">
<packages>
<package name="XCVR_RFM95W-868S2">
<wire x1="-8" y1="8" x2="8" y2="8" width="0.2" layer="21"/>
<wire x1="8" y1="8" x2="8" y2="-8" width="0.2" layer="51"/>
<wire x1="8" y1="-8" x2="-8" y2="-8" width="0.2" layer="21"/>
<wire x1="-8" y1="-8" x2="-8" y2="8" width="0.2" layer="51"/>
<wire x1="-8.65" y1="8.25" x2="8.65" y2="8.25" width="0.05" layer="39"/>
<wire x1="8.65" y1="8.25" x2="8.65" y2="-8.25" width="0.05" layer="39"/>
<wire x1="8.65" y1="-8.25" x2="-8.65" y2="-8.25" width="0.05" layer="39"/>
<wire x1="-8.65" y1="-8.25" x2="-8.65" y2="8.25" width="0.05" layer="39"/>
<circle x="-9.75" y="7" radius="0.291546875" width="0.2" layer="21"/>
<rectangle x1="-10.0115" y1="6.8078" x2="-9.5" y2="7.2" layer="21"/>
<text x="-7.61456875" y="8.866959375" size="1.27243125" layer="25">&gt;NAME</text>
<text x="-7.46346875" y="-10.1183" size="1.2723" layer="27">&gt;VALUE</text>
<smd name="1" x="-7.4" y="7" dx="1.95" dy="1.05" layer="1"/>
<smd name="2" x="-7.4" y="5" dx="1.95" dy="1.05" layer="1"/>
<smd name="3" x="-7.4" y="3" dx="1.95" dy="1.05" layer="1"/>
<smd name="4" x="-7.4" y="1" dx="1.95" dy="1.05" layer="1"/>
<smd name="5" x="-7.4" y="-1" dx="1.95" dy="1.05" layer="1"/>
<smd name="6" x="-7.4" y="-3" dx="1.95" dy="1.05" layer="1"/>
<smd name="7" x="-7.4" y="-5" dx="1.95" dy="1.05" layer="1"/>
<smd name="8" x="-7.4" y="-7" dx="1.95" dy="1.05" layer="1"/>
<smd name="9" x="7.4" y="-7" dx="1.95" dy="1.05" layer="1" rot="R180"/>
<smd name="10" x="7.4" y="-5" dx="1.95" dy="1.05" layer="1" rot="R180"/>
<smd name="11" x="7.4" y="-3" dx="1.95" dy="1.05" layer="1" rot="R180"/>
<smd name="12" x="7.4" y="-1" dx="1.95" dy="1.05" layer="1" rot="R180"/>
<smd name="13" x="7.4" y="1" dx="1.95" dy="1.05" layer="1" rot="R180"/>
<smd name="14" x="7.4" y="3" dx="1.95" dy="1.05" layer="1" rot="R180"/>
<smd name="15" x="7.4" y="5" dx="1.95" dy="1.05" layer="1" rot="R180"/>
<smd name="16" x="7.4" y="7" dx="1.95" dy="1.05" layer="1" rot="R180"/>
</package>
</packages>
<symbols>
<symbol name="RFM95W-868S2">
<wire x1="-15.24" y1="-15.24" x2="15.24" y2="-15.24" width="0.254" layer="94"/>
<wire x1="15.24" y1="-15.24" x2="15.24" y2="12.7" width="0.254" layer="94"/>
<wire x1="15.24" y1="12.7" x2="-15.24" y2="12.7" width="0.254" layer="94"/>
<wire x1="-15.24" y1="12.7" x2="-15.24" y2="-15.24" width="0.254" layer="94"/>
<text x="-15.2563" y="13.9849" size="1.7799" layer="95">&gt;NAME</text>
<text x="-15.265" y="-17.8092" size="1.78091875" layer="96">&gt;VALUE</text>
<pin name="MISO" x="-17.78" y="10.16" length="short" direction="in"/>
<pin name="SCK" x="-17.78" y="7.62" length="short" direction="in" function="clk"/>
<pin name="NSS" x="-17.78" y="5.08" length="short" direction="in"/>
<pin name="RESET" x="-17.78" y="2.54" length="short"/>
<pin name="DIO5" x="-17.78" y="0" length="short"/>
<pin name="DIO3" x="-17.78" y="-2.54" length="short"/>
<pin name="DIO4" x="-17.78" y="-5.08" length="short"/>
<pin name="DIO0" x="-17.78" y="-7.62" length="short"/>
<pin name="DIO1" x="-17.78" y="-10.16" length="short"/>
<pin name="DIO2" x="-17.78" y="-12.7" length="short"/>
<pin name="MOSI" x="17.78" y="-2.54" length="short" direction="out" rot="R180"/>
<pin name="GND" x="17.78" y="-7.62" length="short" direction="pwr" rot="R180"/>
<pin name="GND@1" x="17.78" y="-10.16" length="short" direction="pwr" rot="R180"/>
<pin name="ANT" x="17.78" y="5.08" length="short" direction="pas" rot="R180"/>
<pin name="GND@2" x="17.78" y="-12.7" length="short" direction="pwr" rot="R180"/>
<pin name="3_3V" x="17.78" y="10.16" length="short" direction="pwr" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="RFM95W-868S2" prefix="U">
<description>Mod Txrx Lora +20dbm 868mhz Smd &lt;a href="https://pricing.snapeda.com/parts/RFM95W-868S2/RF/view-part?ref=eda"&gt;Check availability&lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="RFM95W-868S2" x="0" y="0"/>
</gates>
<devices>
<device name="" package="XCVR_RFM95W-868S2">
<connects>
<connect gate="G$1" pin="3_3V" pad="13"/>
<connect gate="G$1" pin="ANT" pad="9"/>
<connect gate="G$1" pin="DIO0" pad="14"/>
<connect gate="G$1" pin="DIO1" pad="15"/>
<connect gate="G$1" pin="DIO2" pad="16"/>
<connect gate="G$1" pin="DIO3" pad="11"/>
<connect gate="G$1" pin="DIO4" pad="12"/>
<connect gate="G$1" pin="DIO5" pad="7"/>
<connect gate="G$1" pin="GND" pad="1"/>
<connect gate="G$1" pin="GND@1" pad="8"/>
<connect gate="G$1" pin="GND@2" pad="10"/>
<connect gate="G$1" pin="MISO" pad="2"/>
<connect gate="G$1" pin="MOSI" pad="3"/>
<connect gate="G$1" pin="NSS" pad="5"/>
<connect gate="G$1" pin="RESET" pad="6"/>
<connect gate="G$1" pin="SCK" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="AVAILABILITY" value="In Stock"/>
<attribute name="DESCRIPTION" value=" General ISM &lt; 1GHz LoRa™ Transceiver Module 868MHz Antenna Not Included Surface Mount "/>
<attribute name="MF" value="RF"/>
<attribute name="MP" value="RFM95W-868S2"/>
<attribute name="PACKAGE" value="Non Standard RF Solutions"/>
<attribute name="PRICE" value="None"/>
<attribute name="PURCHASE-URL" value="https://pricing.snapeda.com/search/part/RFM95W-868S2/?ref=eda"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="gps">
<packages>
<package name="MAX-M10S">
<wire x1="-4.85" y1="-5.05" x2="-4.85" y2="5.05" width="0.05" layer="51"/>
<wire x1="-4.85" y1="5.05" x2="4.85" y2="5.05" width="0.05" layer="51"/>
<wire x1="4.85" y1="5.05" x2="4.85" y2="-5.05" width="0.05" layer="51"/>
<wire x1="4.85" y1="-5.05" x2="-4.85" y2="-5.05" width="0.05" layer="51"/>
<text x="-1.27" y="1.27" size="0.508" layer="25">&gt;Name</text>
<text x="-1.27" y="-1.27" size="0.508" layer="27">&gt;Value</text>
<circle x="5.569" y="-5.027" radius="0.14141875" width="0" layer="21"/>
<wire x1="5.08" y1="-5.08" x2="5.08" y2="-5.207" width="0.1778" layer="21"/>
<wire x1="5.08" y1="-5.207" x2="2.54" y2="-5.207" width="0.1778" layer="21"/>
<smd name="1" x="4.45" y="-4.4" dx="1.3" dy="0.8" layer="1" rot="R180"/>
<rectangle x1="3.85" y1="-4.75" x2="4.85" y2="-4.05" layer="51" rot="R180"/>
<smd name="2" x="4.45" y="-3.3" dx="1.3" dy="0.9" layer="1" rot="R180"/>
<rectangle x1="3.85" y1="-3.7" x2="4.85" y2="-2.9" layer="51" rot="R180"/>
<smd name="3" x="4.45" y="-2.2" dx="1.3" dy="0.9" layer="1" rot="R180"/>
<rectangle x1="3.85" y1="-2.6" x2="4.85" y2="-1.8" layer="51" rot="R180"/>
<smd name="4" x="4.45" y="-1.1" dx="1.3" dy="0.9" layer="1" rot="R180"/>
<rectangle x1="3.85" y1="-1.5" x2="4.85" y2="-0.7" layer="51" rot="R180"/>
<smd name="5" x="4.45" y="0" dx="1.3" dy="0.9" layer="1" rot="R180"/>
<rectangle x1="3.85" y1="-0.4" x2="4.85" y2="0.4" layer="51" rot="R180"/>
<smd name="6" x="4.45" y="1.1" dx="1.3" dy="0.9" layer="1" rot="R180"/>
<rectangle x1="3.85" y1="0.7" x2="4.85" y2="1.5" layer="51" rot="R180"/>
<smd name="7" x="4.45" y="2.2" dx="1.3" dy="0.9" layer="1" rot="R180"/>
<rectangle x1="3.85" y1="1.8" x2="4.85" y2="2.6" layer="51" rot="R180"/>
<smd name="8" x="4.45" y="3.3" dx="1.3" dy="0.9" layer="1" rot="R180"/>
<rectangle x1="3.85" y1="2.9" x2="4.85" y2="3.7" layer="51" rot="R180"/>
<smd name="9" x="4.45" y="4.4" dx="1.3" dy="0.8" layer="1" rot="R180"/>
<rectangle x1="3.85" y1="4.05" x2="4.85" y2="4.75" layer="51" rot="R180"/>
<smd name="10" x="-4.45" y="4.4" dx="1.3" dy="0.8" layer="1"/>
<rectangle x1="-4.85" y1="4.05" x2="-3.85" y2="4.75" layer="51"/>
<smd name="11" x="-4.45" y="3.3" dx="1.3" dy="0.9" layer="1"/>
<rectangle x1="-4.85" y1="2.9" x2="-3.85" y2="3.7" layer="51"/>
<smd name="12" x="-4.45" y="2.2" dx="1.3" dy="0.9" layer="1"/>
<rectangle x1="-4.85" y1="1.8" x2="-3.85" y2="2.6" layer="51"/>
<smd name="13" x="-4.45" y="1.1" dx="1.3" dy="0.9" layer="1"/>
<rectangle x1="-4.85" y1="0.7" x2="-3.85" y2="1.5" layer="51"/>
<smd name="14" x="-4.45" y="0" dx="1.3" dy="0.9" layer="1"/>
<rectangle x1="-4.85" y1="-0.4" x2="-3.85" y2="0.4" layer="51"/>
<smd name="15" x="-4.45" y="-1.1" dx="1.3" dy="0.9" layer="1"/>
<rectangle x1="-4.85" y1="-1.5" x2="-3.85" y2="-0.7" layer="51"/>
<smd name="16" x="-4.45" y="-2.2" dx="1.3" dy="0.9" layer="1"/>
<rectangle x1="-4.85" y1="-2.6" x2="-3.85" y2="-1.8" layer="51"/>
<smd name="17" x="-4.45" y="-3.3" dx="1.3" dy="0.9" layer="1"/>
<rectangle x1="-4.85" y1="-3.7" x2="-3.85" y2="-2.9" layer="51"/>
<smd name="18" x="-4.45" y="-4.4" dx="1.3" dy="0.8" layer="1"/>
<rectangle x1="-4.85" y1="-4.75" x2="-3.85" y2="-4.05" layer="51"/>
<wire x1="-5.08" y1="5.08" x2="-5.08" y2="5.207" width="0.1778" layer="21"/>
<wire x1="-5.08" y1="5.207" x2="-2.54" y2="5.207" width="0.1778" layer="21"/>
<wire x1="5.08" y1="5.08" x2="5.08" y2="5.207" width="0.1778" layer="21"/>
<wire x1="5.08" y1="5.207" x2="2.54" y2="5.207" width="0.1778" layer="21"/>
<wire x1="-5.08" y1="-5.08" x2="-5.08" y2="-5.207" width="0.1778" layer="21"/>
<wire x1="-5.08" y1="-5.207" x2="-2.54" y2="-5.207" width="0.1778" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="MAX-M10S">
<wire x1="12.7" y1="15.24" x2="12.7" y2="-17.78" width="0.254" layer="94"/>
<wire x1="12.7" y1="-17.78" x2="-12.7" y2="-17.78" width="0.254" layer="94"/>
<wire x1="-12.7" y1="-17.78" x2="-12.7" y2="15.24" width="0.254" layer="94"/>
<wire x1="-12.7" y1="15.24" x2="12.7" y2="15.24" width="0.254" layer="94"/>
<pin name="GND" x="-15.24" y="-15.24" length="short"/>
<pin name="VCC" x="-15.24" y="12.7" length="short"/>
<pin name="!RESET!" x="15.24" y="12.7" length="short" rot="R180"/>
<pin name="TX" x="15.24" y="7.62" length="short" rot="R180"/>
<pin name="RX" x="15.24" y="5.08" length="short" rot="R180"/>
<pin name="SDA" x="15.24" y="0" length="short" rot="R180"/>
<pin name="SCL" x="15.24" y="-2.54" length="short" rot="R180"/>
<pin name="!SAFEBOOT!" x="15.24" y="-15.24" length="short" rot="R180"/>
<pin name="EXTINT" x="15.24" y="-7.62" length="short" rot="R180"/>
<pin name="TIMEPULSE" x="15.24" y="-10.16" length="short" rot="R180"/>
<pin name="RF_IN" x="-15.24" y="-2.54" length="short"/>
<pin name="LNA_EN" x="-15.24" y="0" length="short"/>
<pin name="VCC_RF" x="-15.24" y="-5.08" length="short"/>
<pin name="V_BKCP" x="-15.24" y="7.62" length="short"/>
<pin name="V_IO" x="-15.24" y="10.16" length="short"/>
<text x="-12.7" y="15.748" size="1.778" layer="95">&gt;Name</text>
<text x="-12.7" y="-20.32" size="1.778" layer="96">&gt;Value</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="MAX-M10S" prefix="U">
<gates>
<gate name="U1" symbol="MAX-M10S" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MAX-M10S">
<connects>
<connect gate="U1" pin="!RESET!" pad="9"/>
<connect gate="U1" pin="!SAFEBOOT!" pad="18"/>
<connect gate="U1" pin="EXTINT" pad="5"/>
<connect gate="U1" pin="GND" pad="1 10 12"/>
<connect gate="U1" pin="LNA_EN" pad="13"/>
<connect gate="U1" pin="RF_IN" pad="11"/>
<connect gate="U1" pin="RX" pad="3"/>
<connect gate="U1" pin="SCL" pad="17"/>
<connect gate="U1" pin="SDA" pad="16"/>
<connect gate="U1" pin="TIMEPULSE" pad="4"/>
<connect gate="U1" pin="TX" pad="2"/>
<connect gate="U1" pin="VCC" pad="8"/>
<connect gate="U1" pin="VCC_RF" pad="14"/>
<connect gate="U1" pin="V_BKCP" pad="6"/>
<connect gate="U1" pin="V_IO" pad="7"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="IC-15926" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="IC1" library="ESP32-S3-WROOM-1-N16" deviceset="ESP32-S3-WROOM-1-N16" device=""/>
<part name="X_1" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:527439" deviceset="GND" device=""/>
<part name="SUPPLY1" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="VDD" device=""/>
<part name="C1" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:527439" deviceset="C" device="" value="22uF"/>
<part name="C3" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:527439" deviceset="C" device="" value="0.1uF"/>
<part name="X_2" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:527439" deviceset="GND" device=""/>
<part name="X_3" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:527439" deviceset="GND" device=""/>
<part name="R1" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:527439" deviceset="R" device=""/>
<part name="C2" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:527439" deviceset="C" device=""/>
<part name="X_4" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:527439" deviceset="GND" device=""/>
<part name="U1" library="RFM95W-868S2" deviceset="RFM95W-868S2" device=""/>
<part name="U2" library="gps" deviceset="MAX-M10S" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<text x="33.02" y="10.16" size="1.778" layer="91">reset?</text>
<text x="-22.86" y="0" size="1.778" layer="91">shrey?</text>
</plain>
<instances>
<instance part="IC1" gate="G$1" x="66.04" y="68.58" smashed="yes">
<attribute name="NAME" x="95.25" y="76.2" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="95.25" y="73.66" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="X_1" gate="G$1" x="58.42" y="78.74" smashed="yes" rot="R180"/>
<instance part="SUPPLY1" gate="G$1" x="2.54" y="83.82" smashed="yes">
<attribute name="VALUE" x="0.635" y="86.995" size="1.778" layer="96"/>
</instance>
<instance part="C1" gate="G$1" x="2.54" y="60.96" smashed="yes">
<attribute name="VALUE" x="5.08" y="60.96" size="1.778" layer="96"/>
</instance>
<instance part="C3" gate="G$1" x="12.7" y="60.96" smashed="yes">
<attribute name="NAME" x="15.24" y="63.5" size="1.778" layer="95"/>
<attribute name="VALUE" x="15.24" y="60.96" size="1.778" layer="96"/>
</instance>
<instance part="X_2" gate="G$1" x="12.7" y="50.8" smashed="yes"/>
<instance part="X_3" gate="G$1" x="2.54" y="50.8" smashed="yes"/>
<instance part="R1" gate="G$1" x="30.48" y="68.58" smashed="yes">
<attribute name="NAME" x="27.94" y="71.12" size="1.778" layer="95"/>
<attribute name="VALUE" x="27.94" y="64.77" size="1.778" layer="96"/>
</instance>
<instance part="C2" gate="G$1" x="27.94" y="63.5" smashed="yes" rot="R90">
<attribute name="NAME" x="25.4" y="66.04" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="27.94" y="66.04" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="X_4" gate="G$1" x="22.86" y="63.5" smashed="yes" rot="R270"/>
<instance part="U1" gate="G$1" x="139.7" y="10.16" smashed="yes">
<attribute name="NAME" x="124.4437" y="24.1449" size="1.7799" layer="95"/>
<attribute name="VALUE" x="124.435" y="-7.6492" size="1.78091875" layer="96"/>
</instance>
<instance part="U2" gate="U1" x="15.24" y="-2.54" smashed="yes">
<attribute name="NAME" x="2.54" y="13.208" size="1.778" layer="95"/>
<attribute name="VALUE" x="2.54" y="-22.86" size="1.778" layer="96"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="0" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="GND_1"/>
<wire x1="66.04" y1="68.58" x2="58.42" y2="68.58" width="0.1524" layer="91"/>
<pinref part="X_1" gate="G$1" pin="0"/>
<wire x1="58.42" y1="68.58" x2="58.42" y2="78.74" width="0.1524" layer="91"/>
<pinref part="U1" gate="G$1" pin="GND"/>
<wire x1="157.48" y1="2.54" x2="162.56" y2="2.54" width="0.1524" layer="91"/>
<wire x1="162.56" y1="2.54" x2="162.56" y2="88.9" width="0.1524" layer="91"/>
<wire x1="162.56" y1="88.9" x2="53.34" y2="88.9" width="0.1524" layer="91"/>
<wire x1="53.34" y1="88.9" x2="53.34" y2="68.58" width="0.1524" layer="91"/>
<wire x1="53.34" y1="68.58" x2="58.42" y2="68.58" width="0.1524" layer="91"/>
<junction x="58.42" y="68.58"/>
<pinref part="U2" gate="U1" pin="GND"/>
<wire x1="0" y1="-17.78" x2="-7.62" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="-7.62" y1="-17.78" x2="-7.62" y2="93.98" width="0.1524" layer="91"/>
<wire x1="-7.62" y1="93.98" x2="43.18" y2="93.98" width="0.1524" layer="91"/>
<wire x1="43.18" y1="93.98" x2="43.18" y2="68.58" width="0.1524" layer="91"/>
<wire x1="43.18" y1="68.58" x2="53.34" y2="68.58" width="0.1524" layer="91"/>
<junction x="53.34" y="68.58"/>
</segment>
<segment>
<pinref part="C3" gate="G$1" pin="2"/>
<wire x1="12.7" y1="55.88" x2="12.7" y2="50.8" width="0.1524" layer="91"/>
<pinref part="X_2" gate="G$1" pin="0"/>
</segment>
<segment>
<pinref part="C1" gate="G$1" pin="2"/>
<wire x1="2.54" y1="55.88" x2="2.54" y2="50.8" width="0.1524" layer="91"/>
<pinref part="X_3" gate="G$1" pin="0"/>
</segment>
<segment>
<pinref part="C2" gate="G$1" pin="1"/>
<wire x1="25.4" y1="63.5" x2="22.86" y2="63.5" width="0.1524" layer="91"/>
<pinref part="X_4" gate="G$1" pin="0"/>
</segment>
</net>
<net name="VDD" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="3V3"/>
<wire x1="66.04" y1="66.04" x2="48.26" y2="66.04" width="0.1524" layer="91"/>
<wire x1="48.26" y1="66.04" x2="45.72" y2="66.04" width="0.1524" layer="91"/>
<wire x1="45.72" y1="66.04" x2="38.1" y2="66.04" width="0.1524" layer="91"/>
<wire x1="38.1" y1="66.04" x2="38.1" y2="73.66" width="0.1524" layer="91"/>
<wire x1="38.1" y1="73.66" x2="22.86" y2="73.66" width="0.1524" layer="91"/>
<junction x="2.54" y="73.66"/>
<pinref part="SUPPLY1" gate="G$1" pin="VDD"/>
<wire x1="22.86" y1="73.66" x2="12.7" y2="73.66" width="0.1524" layer="91"/>
<wire x1="12.7" y1="73.66" x2="2.54" y2="73.66" width="0.1524" layer="91"/>
<wire x1="2.54" y1="73.66" x2="2.54" y2="81.28" width="0.1524" layer="91"/>
<wire x1="2.54" y1="73.66" x2="2.54" y2="63.5" width="0.1524" layer="91"/>
<pinref part="C1" gate="G$1" pin="1"/>
<junction x="12.7" y="73.66"/>
<pinref part="C3" gate="G$1" pin="1"/>
<wire x1="12.7" y1="73.66" x2="12.7" y2="63.5" width="0.1524" layer="91"/>
<junction x="22.86" y="73.66"/>
<wire x1="22.86" y1="73.66" x2="22.86" y2="68.58" width="0.1524" layer="91"/>
<pinref part="R1" gate="G$1" pin="1"/>
<wire x1="22.86" y1="68.58" x2="25.4" y2="68.58" width="0.1524" layer="91"/>
<pinref part="U1" gate="G$1" pin="3_3V"/>
<wire x1="157.48" y1="20.32" x2="167.64" y2="20.32" width="0.1524" layer="91"/>
<wire x1="167.64" y1="20.32" x2="167.64" y2="93.98" width="0.1524" layer="91"/>
<wire x1="167.64" y1="93.98" x2="48.26" y2="93.98" width="0.1524" layer="91"/>
<wire x1="48.26" y1="93.98" x2="48.26" y2="66.04" width="0.1524" layer="91"/>
<junction x="48.26" y="66.04"/>
<pinref part="U2" gate="U1" pin="VCC"/>
<wire x1="0" y1="10.16" x2="-2.54" y2="10.16" width="0.1524" layer="91"/>
<wire x1="-2.54" y1="10.16" x2="-2.54" y2="40.64" width="0.1524" layer="91"/>
<wire x1="-2.54" y1="40.64" x2="45.72" y2="40.64" width="0.1524" layer="91"/>
<wire x1="45.72" y1="40.64" x2="45.72" y2="66.04" width="0.1524" layer="91"/>
<junction x="45.72" y="66.04"/>
<pinref part="U2" gate="U1" pin="V_IO"/>
<wire x1="0" y1="7.62" x2="-2.54" y2="7.62" width="0.1524" layer="91"/>
<wire x1="-2.54" y1="7.62" x2="-2.54" y2="10.16" width="0.1524" layer="91"/>
<junction x="-2.54" y="10.16"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="EN"/>
<wire x1="66.04" y1="63.5" x2="35.56" y2="63.5" width="0.1524" layer="91"/>
<junction x="35.56" y="63.5"/>
<pinref part="R1" gate="G$1" pin="2"/>
<wire x1="35.56" y1="68.58" x2="35.56" y2="63.5" width="0.1524" layer="91"/>
<pinref part="C2" gate="G$1" pin="2"/>
<wire x1="33.02" y1="63.5" x2="35.56" y2="63.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="MOSI"/>
<wire x1="157.48" y1="7.62" x2="160.02" y2="7.62" width="0.1524" layer="91"/>
<wire x1="160.02" y1="7.62" x2="160.02" y2="63.5" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="IO35"/>
<wire x1="160.02" y1="63.5" x2="99.06" y2="63.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="SCK"/>
<wire x1="121.92" y1="17.78" x2="111.76" y2="17.78" width="0.1524" layer="91"/>
<wire x1="111.76" y1="17.78" x2="111.76" y2="60.96" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="IO36"/>
<wire x1="111.76" y1="60.96" x2="99.06" y2="60.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="MISO"/>
<wire x1="121.92" y1="20.32" x2="104.14" y2="20.32" width="0.1524" layer="91"/>
<wire x1="104.14" y1="20.32" x2="104.14" y2="58.42" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="IO37"/>
<wire x1="104.14" y1="58.42" x2="99.06" y2="58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="DIO0"/>
<wire x1="121.92" y1="2.54" x2="101.6" y2="2.54" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="IO2"/>
<wire x1="101.6" y1="2.54" x2="101.6" y2="38.1" width="0.1524" layer="91"/>
<wire x1="101.6" y1="38.1" x2="99.06" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="NSS"/>
<wire x1="121.92" y1="15.24" x2="106.68" y2="15.24" width="0.1524" layer="91"/>
<wire x1="106.68" y1="15.24" x2="106.68" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="106.68" y1="-2.54" x2="58.42" y2="-2.54" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="IO5"/>
<wire x1="58.42" y1="-2.54" x2="58.42" y2="58.42" width="0.1524" layer="91"/>
<wire x1="58.42" y1="58.42" x2="66.04" y2="58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="RESET"/>
<wire x1="121.92" y1="12.7" x2="111.76" y2="12.7" width="0.1524" layer="91"/>
<wire x1="111.76" y1="12.7" x2="111.76" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="111.76" y1="-5.08" x2="53.34" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="53.34" y1="-5.08" x2="53.34" y2="15.24" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="IO14"/>
<wire x1="53.34" y1="15.24" x2="66.04" y2="15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="U2" gate="U1" pin="TX"/>
<wire x1="30.48" y1="5.08" x2="116.84" y2="5.08" width="0.1524" layer="91"/>
<wire x1="116.84" y1="5.08" x2="116.84" y2="43.18" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="RXD0"/>
<wire x1="116.84" y1="43.18" x2="99.06" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="U2" gate="U1" pin="RX"/>
<wire x1="30.48" y1="2.54" x2="99.06" y2="2.54" width="0.1524" layer="91"/>
<wire x1="99.06" y1="2.54" x2="99.06" y2="7.62" width="0.1524" layer="91"/>
<wire x1="99.06" y1="7.62" x2="104.14" y2="7.62" width="0.1524" layer="91"/>
<wire x1="104.14" y1="7.62" x2="104.14" y2="17.78" width="0.1524" layer="91"/>
<wire x1="104.14" y1="17.78" x2="109.22" y2="17.78" width="0.1524" layer="91"/>
<wire x1="109.22" y1="17.78" x2="109.22" y2="40.64" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="TXD0"/>
<wire x1="109.22" y1="40.64" x2="99.06" y2="40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="U2" gate="U1" pin="RF_IN"/>
<wire x1="0" y1="-5.08" x2="-22.86" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="-22.86" y1="-5.08" x2="-22.86" y2="-2.54" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.4" severity="warning">
Since Version 8.4, EAGLE supports properties for SPICE simulation. 
Probes in schematics and SPICE mapping objects found in parts and library devices
will not be understood with this version. Update EAGLE to the latest version
for full support of SPICE simulation. 
</note>
</compatibility>
</eagle>
