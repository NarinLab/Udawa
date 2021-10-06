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
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="no" active="no"/>
<layer number="4" name="Route4" color="1" fill="4" visible="no" active="no"/>
<layer number="5" name="Route5" color="4" fill="4" visible="no" active="no"/>
<layer number="6" name="Route6" color="1" fill="8" visible="no" active="no"/>
<layer number="7" name="Route7" color="4" fill="8" visible="no" active="no"/>
<layer number="8" name="Route8" color="1" fill="2" visible="no" active="no"/>
<layer number="9" name="Route9" color="4" fill="2" visible="no" active="no"/>
<layer number="10" name="Route10" color="1" fill="7" visible="no" active="no"/>
<layer number="11" name="Route11" color="4" fill="7" visible="no" active="no"/>
<layer number="12" name="Route12" color="1" fill="5" visible="no" active="no"/>
<layer number="13" name="Route13" color="4" fill="5" visible="no" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="24" fill="1" visible="no" active="no"/>
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
<library name="ESP32-DEVKITV1">
<packages>
<package name="ESP32-DEVKITV1">
<pad name="3V3" x="-16.52" y="-12.27" drill="0.8128" diameter="1.9304" shape="square"/>
<pad name="GND@2" x="-13.98" y="-12.27" drill="0.8128" diameter="1.9304" shape="square"/>
<pad name="D15" x="-11.44" y="-12.27" drill="0.8128" diameter="1.9304" shape="square"/>
<pad name="D2" x="-8.9" y="-12.27" drill="0.8128" diameter="1.9304" shape="square"/>
<pad name="D4" x="-6.36" y="-12.27" drill="0.8128" diameter="1.9304" shape="square"/>
<pad name="D16" x="-3.82" y="-12.27" drill="0.8128" diameter="1.9304" shape="square"/>
<pad name="D17" x="-1.28" y="-12.27" drill="0.8128" diameter="1.9304" shape="square"/>
<pad name="D5" x="1.26" y="-12.27" drill="0.8128" diameter="1.9304" shape="square"/>
<pad name="D18" x="3.8" y="-12.27" drill="0.8128" diameter="1.9304" shape="square"/>
<pad name="D19" x="6.34" y="-12.27" drill="0.8128" diameter="1.9304" shape="square"/>
<pad name="D21" x="8.88" y="-12.27" drill="0.8128" diameter="1.9304" shape="square"/>
<pad name="D3" x="11.42" y="-12.27" drill="0.8128" diameter="1.9304" shape="square"/>
<pad name="D1" x="13.96" y="-12.27" drill="0.8128" diameter="1.9304" shape="square"/>
<pad name="D22" x="16.5" y="-12.27" drill="0.8128" diameter="1.9304" shape="square"/>
<pad name="D23" x="19.04" y="-12.27" drill="0.8128" diameter="1.9304" shape="square"/>
<pad name="VIN" x="-16.52" y="13.135" drill="0.8128" diameter="1.9304" shape="square"/>
<pad name="GND@1" x="-13.98" y="13.135" drill="0.8128" diameter="1.9304" shape="square"/>
<pad name="D13" x="-11.44" y="13.135" drill="0.8128" diameter="1.9304" shape="square"/>
<pad name="D12" x="-8.9" y="13.135" drill="0.8128" diameter="1.9304" shape="square"/>
<pad name="D14" x="-6.36" y="13.135" drill="0.8128" diameter="1.9304" shape="square"/>
<pad name="D27" x="-3.82" y="13.135" drill="0.8128" diameter="1.9304" shape="square"/>
<pad name="D26" x="-1.28" y="13.135" drill="0.8128" diameter="1.9304" shape="square"/>
<pad name="D25" x="1.26" y="13.135" drill="0.8128" diameter="1.9304" shape="square"/>
<pad name="D33" x="3.8" y="13.135" drill="0.8128" diameter="1.9304" shape="square"/>
<pad name="D32" x="6.34" y="13.135" drill="0.8128" diameter="1.9304" shape="square"/>
<pad name="D35" x="8.88" y="13.135" drill="0.8128" diameter="1.9304" shape="square"/>
<pad name="D34" x="11.42" y="13.135" drill="0.8128" diameter="1.9304" shape="square"/>
<pad name="D39" x="13.96" y="13.135" drill="0.8128" diameter="1.9304" shape="square"/>
<pad name="D36" x="16.5" y="13.135" drill="0.8128" diameter="1.9304" shape="square"/>
<pad name="EN" x="19.04" y="13.135" drill="0.8128" diameter="1.9304" shape="square"/>
<text x="-15.86" y="-9.93" size="1.016" layer="21" font="vector" rot="R90">3V3</text>
<text x="-13.32" y="-9.93" size="1.016" layer="21" font="vector" rot="R90">GND</text>
<text x="-10.78" y="-9.93" size="1.016" layer="21" font="vector" rot="R90">IO15</text>
<text x="-8.24" y="-9.93" size="1.016" layer="21" font="vector" rot="R90">IO2</text>
<text x="-5.7" y="-9.93" size="1.016" layer="21" font="vector" rot="R90">IO4</text>
<text x="-3.16" y="-9.93" size="1.016" layer="21" font="vector" rot="R90">IO16</text>
<text x="-0.62" y="-9.93" size="1.016" layer="21" font="vector" rot="R90">IO17</text>
<text x="1.92" y="-9.93" size="1.016" layer="21" font="vector" rot="R90">IO5</text>
<text x="4.46" y="-9.93" size="1.016" layer="21" font="vector" rot="R90">IO18</text>
<text x="7" y="-9.93" size="1.016" layer="21" font="vector" rot="R90">IO19</text>
<text x="9.54" y="-9.93" size="1.016" layer="21" font="vector" rot="R90">IO21</text>
<text x="12.08" y="-9.93" size="1.016" layer="21" font="vector" rot="R90">IO3</text>
<text x="14.62" y="-9.93" size="1.016" layer="21" font="vector" rot="R90">IO1</text>
<text x="17.16" y="-9.93" size="1.016" layer="21" font="vector" rot="R90">IO22</text>
<text x="19.7" y="-9.93" size="1.016" layer="21" font="vector" rot="R90">IO23</text>
<text x="-15.84" y="7.79" size="1.016" layer="21" font="vector" rot="R90">VIN</text>
<text x="-13.3" y="7.79" size="1.016" layer="21" font="vector" rot="R90">GND</text>
<text x="-10.76" y="7.79" size="1.016" layer="21" font="vector" rot="R90">IO13</text>
<text x="-8.22" y="7.79" size="1.016" layer="21" font="vector" rot="R90">IO12</text>
<text x="-5.68" y="7.79" size="1.016" layer="21" font="vector" rot="R90">IO14</text>
<text x="-3.14" y="7.79" size="1.016" layer="21" font="vector" rot="R90">IO27</text>
<text x="-0.6" y="7.79" size="1.016" layer="21" font="vector" rot="R90">IO26</text>
<text x="1.94" y="7.79" size="1.016" layer="21" font="vector" rot="R90">IO25</text>
<text x="4.48" y="7.79" size="1.016" layer="21" font="vector" rot="R90">IO33</text>
<text x="7.02" y="7.79" size="1.016" layer="21" font="vector" rot="R90">IO32</text>
<text x="9.56" y="7.79" size="1.016" layer="21" font="vector" rot="R90">IO35</text>
<text x="12.1" y="7.79" size="1.016" layer="21" font="vector" rot="R90">IO34</text>
<text x="14.64" y="5.25" size="1.016" layer="21" font="vector" rot="R90">VN/IO39</text>
<text x="17.18" y="5.25" size="1.016" layer="21" font="vector" rot="R90">VP/IO36</text>
<text x="19.72" y="7.79" size="1.016" layer="21" font="vector" rot="R90">EN</text>
<text x="-23.49" y="-10.01" size="1.9304" layer="21" font="vector" rot="R90">ESP32-Devkit V1</text>
<wire x1="-26.65" y1="14.605" x2="25.35" y2="14.605" width="0.254" layer="21"/>
<wire x1="25.35" y1="14.605" x2="25.35" y2="-13.93" width="0.254" layer="21"/>
<wire x1="25.35" y1="-13.93" x2="-26.65" y2="-13.93" width="0.254" layer="21"/>
<wire x1="-26.65" y1="-13.93" x2="-26.65" y2="14.605" width="0.254" layer="21"/>
<text x="-17.78" y="15.24" size="1.27" layer="21">&gt;NAME</text>
<text x="11.35" y="-15.97" size="1.27" layer="27">ESP32-DEVKITV1</text>
</package>
</packages>
<symbols>
<symbol name="ESP32-DEVKITV1">
<wire x1="-25.4" y1="-12.7" x2="-25.4" y2="12.7" width="0.254" layer="94"/>
<wire x1="-25.4" y1="12.7" x2="16" y2="12.7" width="0.254" layer="94"/>
<wire x1="16" y1="12.7" x2="16" y2="-12.7" width="0.254" layer="94"/>
<wire x1="16" y1="-12.7" x2="-25.4" y2="-12.7" width="0.254" layer="94"/>
<pin name="3V3" x="-22.86" y="-17.78" length="middle" rot="R90"/>
<pin name="GND@2" x="-20.32" y="-17.78" length="middle" rot="R90"/>
<pin name="IO15" x="-17.78" y="-17.78" length="middle" rot="R90"/>
<pin name="IO2" x="-15.24" y="-17.78" length="middle" rot="R90"/>
<pin name="IO4" x="-12.7" y="-17.78" length="middle" rot="R90"/>
<pin name="IO16" x="-10.16" y="-17.78" length="middle" rot="R90"/>
<pin name="IO17" x="-7.62" y="-17.78" length="middle" rot="R90"/>
<pin name="IO5" x="-5.08" y="-17.78" length="middle" rot="R90"/>
<pin name="IO18" x="-2.54" y="-17.78" length="middle" rot="R90"/>
<pin name="IO19" x="0" y="-17.78" length="middle" rot="R90"/>
<pin name="IO21" x="2.54" y="-17.78" length="middle" rot="R90"/>
<pin name="IO3" x="5.08" y="-17.78" length="middle" rot="R90"/>
<pin name="IO1" x="7.62" y="-17.78" length="middle" rot="R90"/>
<pin name="IO22" x="10.16" y="-17.78" length="middle" rot="R90"/>
<pin name="IO23" x="12.7" y="-17.78" length="middle" rot="R90"/>
<pin name="EN" x="12.7" y="17.78" length="middle" rot="R270"/>
<pin name="VP-OI36" x="10.16" y="17.78" length="middle" rot="R270"/>
<pin name="VN-IO39" x="7.62" y="17.78" length="middle" rot="R270"/>
<pin name="IO34" x="5.08" y="17.78" length="middle" rot="R270"/>
<pin name="IO35" x="2.54" y="17.78" length="middle" rot="R270"/>
<pin name="IO32" x="0" y="17.78" length="middle" rot="R270"/>
<pin name="IO33" x="-2.54" y="17.78" length="middle" rot="R270"/>
<pin name="IO25" x="-5.08" y="17.78" length="middle" rot="R270"/>
<pin name="IO26" x="-7.62" y="17.78" length="middle" rot="R270"/>
<pin name="IO27" x="-10.16" y="17.78" length="middle" rot="R270"/>
<pin name="IO14" x="-12.7" y="17.78" length="middle" rot="R270"/>
<pin name="IO12" x="-15.24" y="17.78" length="middle" rot="R270"/>
<pin name="IO13" x="-17.78" y="17.78" length="middle" rot="R270"/>
<pin name="GND@1" x="-20.32" y="17.78" length="middle" rot="R270"/>
<pin name="VIN" x="-22.86" y="17.78" length="middle" rot="R270"/>
<text x="-26.67" y="5.08" size="1.27" layer="95" rot="R90">&gt;NAME</text>
<text x="18.4" y="-12.7" size="1.27" layer="96" rot="R90">ESP32-DEVKITV1</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="ESP32DEVKITV1">
<gates>
<gate name="G$1" symbol="ESP32-DEVKITV1" x="0" y="0"/>
</gates>
<devices>
<device name="" package="ESP32-DEVKITV1">
<connects>
<connect gate="G$1" pin="3V3" pad="3V3"/>
<connect gate="G$1" pin="EN" pad="EN"/>
<connect gate="G$1" pin="GND@1" pad="GND@1"/>
<connect gate="G$1" pin="GND@2" pad="GND@2"/>
<connect gate="G$1" pin="IO1" pad="D1"/>
<connect gate="G$1" pin="IO12" pad="D12"/>
<connect gate="G$1" pin="IO13" pad="D13"/>
<connect gate="G$1" pin="IO14" pad="D14"/>
<connect gate="G$1" pin="IO15" pad="D15"/>
<connect gate="G$1" pin="IO16" pad="D16"/>
<connect gate="G$1" pin="IO17" pad="D17"/>
<connect gate="G$1" pin="IO18" pad="D18"/>
<connect gate="G$1" pin="IO19" pad="D19"/>
<connect gate="G$1" pin="IO2" pad="D2"/>
<connect gate="G$1" pin="IO21" pad="D21"/>
<connect gate="G$1" pin="IO22" pad="D22"/>
<connect gate="G$1" pin="IO23" pad="D23"/>
<connect gate="G$1" pin="IO25" pad="D25"/>
<connect gate="G$1" pin="IO26" pad="D26"/>
<connect gate="G$1" pin="IO27" pad="D27"/>
<connect gate="G$1" pin="IO3" pad="D3"/>
<connect gate="G$1" pin="IO32" pad="D32"/>
<connect gate="G$1" pin="IO33" pad="D33"/>
<connect gate="G$1" pin="IO34" pad="D34"/>
<connect gate="G$1" pin="IO35" pad="D35"/>
<connect gate="G$1" pin="IO4" pad="D4"/>
<connect gate="G$1" pin="IO5" pad="D5"/>
<connect gate="G$1" pin="VIN" pad="VIN"/>
<connect gate="G$1" pin="VN-IO39" pad="D39"/>
<connect gate="G$1" pin="VP-OI36" pad="D36"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="HLK-PM01">
<description>&lt;h5&gt;Hi-Link Power Supply&lt;/h5&gt;
&lt;br/&gt;

HLK-PM01 3W
&lt;br /&gt;
&lt;br/&gt;
Author: &lt;a href="https://github.com/AhmedSaid/EAGLELibraries"&gt;Ahmed Said&lt;/a&gt;</description>
<packages>
<package name="HLK-PM01">
<description>&lt;h5&gt;Hi-Link Power Supply&lt;/h5&gt;
&lt;br/&gt;

HLK-PM01 3W
&lt;br /&gt;
&lt;br/&gt;
Author: &lt;a href="https://github.com/AhmedSaid/EAGLELibraries"&gt;Ahmed Said&lt;/a&gt;</description>
<wire x1="-17" y1="10.1" x2="17" y2="10.1" width="0.127" layer="51"/>
<wire x1="17" y1="10.1" x2="17" y2="-10.1" width="0.127" layer="51"/>
<wire x1="17" y1="-10.1" x2="-17" y2="-10.1" width="0.127" layer="51"/>
<wire x1="-17" y1="-10.1" x2="-17" y2="10.1" width="0.127" layer="51"/>
<pad name="P$1" x="-14.7" y="2.5" drill="1.016" diameter="2.1844" shape="square"/>
<pad name="P$2" x="-14.7" y="-2.5" drill="1.016" diameter="2.1844" shape="square"/>
<pad name="P$3" x="14.7" y="7.7" drill="1.016" diameter="2.1844" shape="square"/>
<pad name="P$4" x="14.7" y="-7.7" drill="1.016" diameter="2.1844" shape="square"/>
<text x="-15.24" y="7.62" size="1.27" layer="21">&gt;NAME</text>
</package>
</packages>
<symbols>
<symbol name="PS">
<wire x1="-15.24" y1="10.16" x2="15.24" y2="10.16" width="0.254" layer="94"/>
<wire x1="15.24" y1="10.16" x2="15.24" y2="-10.16" width="0.254" layer="94"/>
<wire x1="15.24" y1="-10.16" x2="-15.24" y2="-10.16" width="0.254" layer="94"/>
<wire x1="-15.24" y1="-10.16" x2="-15.24" y2="10.16" width="0.254" layer="94"/>
<pin name="AC1" x="-20.32" y="2.54" length="middle"/>
<pin name="AC2" x="-20.32" y="-2.54" length="middle"/>
<pin name="-VO" x="20.32" y="7.62" length="middle" rot="R180"/>
<pin name="+VO" x="20.32" y="-7.62" length="middle" rot="R180"/>
<text x="-12.7" y="7.62" size="1.27" layer="94">&gt;NAME</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="HLK-PM01" prefix="HLK">
<description>&lt;h5&gt;Hi-Link Power Supply&lt;/h5&gt;
&lt;br/&gt;

HLK-PM01 3W
&lt;br /&gt;
&lt;br/&gt;
Author: &lt;a href="https://github.com/AhmedSaid/EAGLELibraries"&gt;Ahmed Said&lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="PS" x="-10.16" y="2.54"/>
</gates>
<devices>
<device name="3W" package="HLK-PM01">
<connects>
<connect gate="G$1" pin="+VO" pad="P$4"/>
<connect gate="G$1" pin="-VO" pad="P$3"/>
<connect gate="G$1" pin="AC1" pad="P$1"/>
<connect gate="G$1" pin="AC2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-wago-500">
<description>&lt;b&gt;Wago Screw Clamps&lt;/b&gt;&lt;p&gt;
Grid 5.00 mm&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="W237-102" urn="urn:adsk.eagle:footprint:10676/1" locally_modified="yes">
<description>&lt;b&gt;WAGO SCREW CLAMP&lt;/b&gt;</description>
<wire x1="-3.491" y1="-2.286" x2="-1.484" y2="-0.279" width="0.254" layer="51"/>
<wire x1="1.488" y1="-2.261" x2="3.469" y2="-0.254" width="0.254" layer="51"/>
<wire x1="-4.989" y1="-5.461" x2="4.993" y2="-5.461" width="0.1524" layer="21"/>
<wire x1="4.993" y1="3.734" x2="4.993" y2="3.531" width="0.1524" layer="21"/>
<wire x1="4.993" y1="3.734" x2="-4.989" y2="3.734" width="0.1524" layer="21"/>
<wire x1="-4.989" y1="-5.461" x2="-4.989" y2="-3.073" width="0.1524" layer="21"/>
<wire x1="-4.989" y1="-3.073" x2="-3.389" y2="-3.073" width="0.1524" layer="21"/>
<wire x1="-3.389" y1="-3.073" x2="-1.611" y2="-3.073" width="0.1524" layer="51"/>
<wire x1="-1.611" y1="-3.073" x2="1.615" y2="-3.073" width="0.1524" layer="21"/>
<wire x1="3.393" y1="-3.073" x2="4.993" y2="-3.073" width="0.1524" layer="21"/>
<wire x1="-4.989" y1="-3.073" x2="-4.989" y2="3.531" width="0.1524" layer="21"/>
<wire x1="4.993" y1="-3.073" x2="4.993" y2="-5.461" width="0.1524" layer="21"/>
<wire x1="-4.989" y1="3.531" x2="4.993" y2="3.531" width="0.1524" layer="21"/>
<wire x1="-4.989" y1="3.531" x2="-4.989" y2="3.734" width="0.1524" layer="21"/>
<wire x1="4.993" y1="3.531" x2="4.993" y2="-3.073" width="0.1524" layer="21"/>
<wire x1="1.615" y1="-3.073" x2="3.393" y2="-3.073" width="0.1524" layer="51"/>
<circle x="-2.5" y="-1.27" radius="1.4986" width="0.1524" layer="51"/>
<circle x="-2.5" y="2.2098" radius="0.508" width="0.1524" layer="21"/>
<circle x="2.5038" y="-1.27" radius="1.4986" width="0.1524" layer="51"/>
<circle x="2.5038" y="2.2098" radius="0.508" width="0.1524" layer="21"/>
<pad name="1" x="-2.5" y="-1.27" drill="1.27" diameter="2.032" shape="long" rot="R90"/>
<pad name="2" x="2.5" y="-1.27" drill="1.27" diameter="2.032" shape="long" rot="R90"/>
<text x="-5.04" y="3.81" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-3.8462" y="-5.0038" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.088" y="1.905" size="1.27" layer="21" ratio="10" rot="R180">1</text>
<text x="2.119" y="1.905" size="1.27" layer="21" ratio="10" rot="R180">2</text>
</package>
</packages>
<packages3d>
<package3d name="W237-102" urn="urn:adsk.eagle:package:10688/1" type="box">
<description>WAGO SCREW CLAMP</description>
<packageinstances>
<packageinstance name="W237-102"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="KL">
<circle x="1.27" y="0" radius="1.27" width="0.254" layer="94"/>
<text x="0" y="0.889" size="1.778" layer="95" rot="R180">&gt;NAME</text>
<pin name="KL" x="5.08" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
<symbol name="KL+V">
<circle x="1.27" y="0" radius="1.27" width="0.254" layer="94"/>
<text x="-2.54" y="-3.683" size="1.778" layer="96">&gt;VALUE</text>
<text x="0" y="0.889" size="1.778" layer="95" rot="R180">&gt;NAME</text>
<pin name="KL" x="5.08" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="W237-102" prefix="X" uservalue="yes">
<description>&lt;b&gt;WAGO SCREW CLAMP&lt;/b&gt;</description>
<gates>
<gate name="-1" symbol="KL" x="0" y="5.08" addlevel="always"/>
<gate name="-2" symbol="KL+V" x="0" y="0" addlevel="always"/>
</gates>
<devices>
<device name="" package="W237-102">
<connects>
<connect gate="-1" pin="KL" pad="1"/>
<connect gate="-2" pin="KL" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:10688/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="237-102" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="70K9898" constant="no"/>
<attribute name="POPULARITY" value="32" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="fuse">
<description>&lt;b&gt;Fuses and Fuse Holders&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="FUSE_HOLDER_5X20MM" urn="urn:adsk.eagle:footprint:14052/1" locally_modified="yes">
<description>&lt;b&gt;Fuse Holder&lt;/b&gt; 5x20 mm&lt;p&gt;
Source: User LBR Version 2.05</description>
<wire x1="-2.54" y1="2.54" x2="-2.54" y2="-2.54" width="0.3048" layer="21"/>
<wire x1="1.016" y1="-3.556" x2="-2.032" y2="-3.556" width="0.3048" layer="21"/>
<wire x1="-2.032" y1="-3.556" x2="-2.032" y2="-2.54" width="0.3048" layer="21"/>
<wire x1="-2.032" y1="3.556" x2="1.016" y2="3.556" width="0.3048" layer="21"/>
<wire x1="-2.286" y1="-3.048" x2="-3.048" y2="-3.048" width="0.3048" layer="21"/>
<wire x1="-3.048" y1="-1.778" x2="-3.048" y2="-3.048" width="0.3048" layer="21"/>
<wire x1="13.716" y1="2.54" x2="13.716" y2="-2.54" width="0.3048" layer="21"/>
<wire x1="1.524" y1="2.54" x2="1.524" y2="-2.54" width="0.3048" layer="21"/>
<wire x1="1.524" y1="2.54" x2="13.716" y2="2.54" width="0.3048" layer="21"/>
<wire x1="1.524" y1="-2.54" x2="13.716" y2="-2.54" width="0.3048" layer="21"/>
<wire x1="-2.032" y1="-2.286" x2="1.016" y2="-2.286" width="0.3048" layer="21"/>
<wire x1="-2.032" y1="2.286" x2="1.016" y2="2.286" width="0.3048" layer="21"/>
<wire x1="1.524" y1="2.54" x2="1.016" y2="2.54" width="0.3048" layer="21"/>
<wire x1="1.016" y1="2.54" x2="1.016" y2="3.556" width="0.3048" layer="21"/>
<wire x1="1.016" y1="2.54" x2="1.016" y2="2.286" width="0.3048" layer="21"/>
<wire x1="-2.032" y1="2.286" x2="-2.032" y2="2.54" width="0.3048" layer="21"/>
<wire x1="-2.032" y1="2.54" x2="-2.032" y2="3.556" width="0.3048" layer="21"/>
<wire x1="-2.032" y1="2.54" x2="-2.54" y2="2.54" width="0.3048" layer="21"/>
<wire x1="-2.032" y1="-2.54" x2="-2.032" y2="-2.286" width="0.3048" layer="21"/>
<wire x1="-2.032" y1="-2.54" x2="-2.54" y2="-2.54" width="0.3048" layer="21"/>
<wire x1="1.524" y1="-2.54" x2="1.016" y2="-2.54" width="0.3048" layer="21"/>
<wire x1="1.016" y1="-2.54" x2="1.016" y2="-2.286" width="0.3048" layer="21"/>
<wire x1="1.016" y1="-2.54" x2="1.016" y2="-3.556" width="0.3048" layer="21"/>
<wire x1="17.78" y1="-2.54" x2="17.78" y2="2.54" width="0.3048" layer="21"/>
<wire x1="14.224" y1="3.556" x2="17.272" y2="3.556" width="0.3048" layer="21"/>
<wire x1="17.272" y1="3.556" x2="17.272" y2="2.54" width="0.3048" layer="21"/>
<wire x1="17.272" y1="-3.556" x2="14.224" y2="-3.556" width="0.3048" layer="21"/>
<wire x1="17.526" y1="3.048" x2="18.288" y2="3.048" width="0.3048" layer="21"/>
<wire x1="18.288" y1="1.778" x2="18.288" y2="3.048" width="0.3048" layer="21"/>
<wire x1="17.272" y1="2.286" x2="14.224" y2="2.286" width="0.3048" layer="21"/>
<wire x1="17.272" y1="-2.286" x2="14.224" y2="-2.286" width="0.3048" layer="21"/>
<wire x1="13.716" y1="-2.54" x2="14.224" y2="-2.54" width="0.3048" layer="21"/>
<wire x1="14.224" y1="-2.54" x2="14.224" y2="-3.556" width="0.3048" layer="21"/>
<wire x1="14.224" y1="-2.54" x2="14.224" y2="-2.286" width="0.3048" layer="21"/>
<wire x1="17.272" y1="-2.286" x2="17.272" y2="-2.54" width="0.3048" layer="21"/>
<wire x1="17.272" y1="-2.54" x2="17.272" y2="-3.556" width="0.3048" layer="21"/>
<wire x1="17.272" y1="-2.54" x2="17.78" y2="-2.54" width="0.3048" layer="21"/>
<wire x1="17.272" y1="2.54" x2="17.272" y2="2.286" width="0.3048" layer="21"/>
<wire x1="17.272" y1="2.54" x2="17.78" y2="2.54" width="0.3048" layer="21"/>
<wire x1="13.716" y1="2.54" x2="14.224" y2="2.54" width="0.3048" layer="21"/>
<wire x1="14.224" y1="2.54" x2="14.224" y2="2.286" width="0.3048" layer="21"/>
<wire x1="14.224" y1="2.54" x2="14.224" y2="3.556" width="0.3048" layer="21"/>
<pad name="1" x="0" y="0" drill="1.4224" diameter="2.54" shape="square"/>
<pad name="2" x="15.24" y="0" drill="1.4224" diameter="2.54" shape="square"/>
<text x="2.032" y="3.81" size="2.54" layer="25">&gt;NAME</text>
<text x="1.778" y="-5.842" size="2.54" layer="27">&gt;VALUE</text>
</package>
<package name="19559" urn="urn:adsk.eagle:footprint:14028/1">
<description>&lt;b&gt;FUSE HOLDER&lt;/b&gt;&lt;p&gt;
TR5 Fuse Holder Wickmann</description>
<wire x1="1.778" y1="-1.397" x2="2.413" y2="-2.032" width="0.1524" layer="51"/>
<wire x1="1.397" y1="-1.778" x2="2.032" y2="-2.413" width="0.1524" layer="51"/>
<wire x1="-2.032" y1="2.413" x2="-1.397" y2="1.778" width="0.1524" layer="51"/>
<wire x1="-2.413" y1="2.032" x2="-1.778" y2="1.397" width="0.1524" layer="51"/>
<wire x1="3.175" y1="-3.937" x2="2.413" y2="-3.175" width="0.1524" layer="51"/>
<wire x1="2.413" y1="-3.175" x2="3.175" y2="-2.413" width="0.1524" layer="51"/>
<wire x1="3.175" y1="-2.413" x2="3.937" y2="-3.175" width="0.1524" layer="51"/>
<wire x1="4.064" y1="-3.683" x2="3.683" y2="-4.064" width="0.1524" layer="21"/>
<wire x1="2.794" y1="-3.175" x2="3.175" y2="-2.794" width="0.1524" layer="51"/>
<wire x1="-3.175" y1="2.413" x2="-2.413" y2="3.175" width="0.1524" layer="51"/>
<wire x1="-3.175" y1="3.937" x2="-2.413" y2="3.175" width="0.1524" layer="51"/>
<wire x1="-3.937" y1="3.175" x2="-3.175" y2="2.413" width="0.1524" layer="51"/>
<wire x1="-3.175" y1="2.794" x2="-2.794" y2="3.175" width="0.1524" layer="51"/>
<wire x1="-4.064" y1="3.683" x2="-3.683" y2="4.064" width="0.1524" layer="21"/>
<wire x1="4.064" y1="-3.683" x2="3.683" y2="-3.302" width="0.1524" layer="21"/>
<wire x1="3.683" y1="-3.302" x2="3.175" y2="-2.794" width="0.1524" layer="51"/>
<wire x1="3.302" y1="-3.683" x2="3.683" y2="-4.064" width="0.1524" layer="21"/>
<wire x1="3.302" y1="-3.683" x2="2.794" y2="-3.175" width="0.1524" layer="51"/>
<wire x1="-4.064" y1="3.683" x2="-3.683" y2="3.302" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="3.302" x2="-3.175" y2="2.794" width="0.1524" layer="51"/>
<wire x1="-3.683" y1="4.064" x2="-3.302" y2="3.683" width="0.1524" layer="21"/>
<wire x1="-3.302" y1="3.683" x2="-2.794" y2="3.175" width="0.1524" layer="51"/>
<circle x="0" y="0" radius="5.08" width="0.1524" layer="21"/>
<circle x="1.905" y="-1.905" radius="0.889" width="0.1524" layer="51"/>
<circle x="-1.905" y="1.905" radius="0.889" width="0.1524" layer="51"/>
<circle x="-1.905" y="1.905" radius="0.5334" width="0.1524" layer="51"/>
<circle x="1.905" y="-1.905" radius="0.5334" width="0.1524" layer="51"/>
<pad name="1" x="-2.54" y="2.54" drill="1.3208" diameter="2.54" shape="octagon"/>
<pad name="2" x="2.54" y="-2.54" drill="1.3208" diameter="2.54" shape="octagon"/>
<text x="-4.572" y="-0.889" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<text x="-3.81" y="5.334" size="1.778" layer="25" ratio="10">&gt;NAME</text>
</package>
<package name="19560" urn="urn:adsk.eagle:footprint:14029/1">
<description>&lt;b&gt;FUSE HOLDER&lt;/b&gt;&lt;p&gt;
TR5 Fuse Holder Wickmann</description>
<wire x1="2.54" y1="-3.937" x2="3.937" y2="-2.54" width="0.1524" layer="21" curve="177.916747"/>
<circle x="0" y="0" radius="4.699" width="0.1524" layer="21"/>
<circle x="2.54" y="0" radius="0.762" width="0.1524" layer="51"/>
<circle x="2.54" y="0" radius="0.254" width="0.254" layer="51"/>
<circle x="-2.54" y="0" radius="0.254" width="0.254" layer="51"/>
<circle x="-2.54" y="0" radius="0.762" width="0.1524" layer="51"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" diameter="1.778" shape="long" rot="R90"/>
<pad name="2" x="2.54" y="0" drill="0.8128" diameter="1.778" shape="long" rot="R90"/>
<text x="-2.54" y="5.08" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.048" y="-2.54" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="F456" urn="urn:adsk.eagle:footprint:14039/1">
<description>&lt;b&gt;FUSE HOLDER&lt;/b&gt;&lt;p&gt;
CS Schukat</description>
<wire x1="-6.35" y1="-6.35" x2="-6.35" y2="6.35" width="0.1524" layer="21"/>
<wire x1="6.35" y1="6.35" x2="6.35" y2="-6.35" width="0.1524" layer="21"/>
<wire x1="-4.318" y1="1.27" x2="-2.54" y2="1.27" width="0.1524" layer="51"/>
<wire x1="-4.318" y1="-1.27" x2="-2.54" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="-2.54" y1="1.27" x2="-2.54" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="-2.54" y1="1.27" x2="2.54" y2="1.27" width="0.1524" layer="51"/>
<wire x1="-2.54" y1="-1.27" x2="2.54" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="2.54" y1="1.27" x2="2.54" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="2.54" y1="1.27" x2="4.318" y2="1.27" width="0.1524" layer="51"/>
<wire x1="2.54" y1="-1.27" x2="4.318" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="-3.175" y1="5.461" x2="-2.286" y2="3.937" width="0.1524" layer="51"/>
<wire x1="0" y1="6.35" x2="0" y2="4.572" width="0.1524" layer="51"/>
<wire x1="6.35" y1="6.35" x2="0.889" y2="6.35" width="0.1524" layer="21"/>
<wire x1="0.889" y1="6.35" x2="-0.889" y2="6.35" width="0.1524" layer="51"/>
<wire x1="-0.889" y1="6.35" x2="-6.35" y2="6.35" width="0.1524" layer="21"/>
<wire x1="6.35" y1="-6.35" x2="0.889" y2="-6.35" width="0.1524" layer="21"/>
<wire x1="0.889" y1="-6.35" x2="0" y2="-6.35" width="0.1524" layer="51"/>
<wire x1="-0.889" y1="-6.35" x2="-6.35" y2="-6.35" width="0.1524" layer="21"/>
<wire x1="0" y1="-6.35" x2="0" y2="-4.572" width="0.1524" layer="51"/>
<wire x1="0" y1="-6.35" x2="-0.889" y2="-6.35" width="0.1524" layer="51"/>
<wire x1="3.175" y1="-5.461" x2="2.286" y2="-3.937" width="0.1524" layer="51"/>
<circle x="0" y="0" radius="6.35" width="0.1524" layer="51"/>
<circle x="0" y="0" radius="4.572" width="0.1524" layer="51"/>
<pad name="1" x="0" y="5.08" drill="1.3208" diameter="2.54" shape="octagon"/>
<pad name="2" x="0" y="-5.08" drill="1.3208" diameter="2.54" shape="octagon"/>
<text x="-6.35" y="6.985" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-6.35" y="-8.89" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<hole x="5.08" y="5.08" drill="2.0066"/>
<hole x="5.08" y="-5.08" drill="2.0066"/>
<hole x="-5.08" y="-5.08" drill="2.0066"/>
<hole x="-5.08" y="5.08" drill="2.0066"/>
</package>
<package name="F457" urn="urn:adsk.eagle:footprint:14035/1">
<description>&lt;b&gt;FUSE HOLDER&lt;/b&gt;&lt;p&gt;
CS Schukat</description>
<wire x1="7.366" y1="6.223" x2="7.366" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-27.686" y1="-6.223" x2="-19.685" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-27.686" y1="-6.223" x2="-27.686" y2="6.223" width="0.1524" layer="21"/>
<wire x1="7.366" y1="6.223" x2="4.318" y2="6.223" width="0.1524" layer="21"/>
<wire x1="4.318" y1="6.223" x2="4.318" y2="3.175" width="0.1524" layer="21"/>
<wire x1="4.318" y1="6.223" x2="-16.637" y2="6.223" width="0.1524" layer="21"/>
<wire x1="4.318" y1="-6.223" x2="7.366" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="4.318" y1="3.175" x2="-16.637" y2="3.175" width="0.1524" layer="21"/>
<wire x1="4.318" y1="1.27" x2="4.318" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="4.318" y1="-3.175" x2="-16.637" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="4.318" y1="-3.175" x2="4.318" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-16.637" y1="6.223" x2="-16.637" y2="3.175" width="0.1524" layer="21"/>
<wire x1="-16.637" y1="6.223" x2="-19.685" y2="6.223" width="0.1524" layer="21"/>
<wire x1="-19.685" y1="6.223" x2="-19.685" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-19.685" y1="6.223" x2="-27.686" y2="6.223" width="0.1524" layer="21"/>
<wire x1="-19.685" y1="-6.223" x2="-16.637" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-16.637" y1="-6.223" x2="4.318" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-21.717" y1="4.064" x2="-21.717" y2="-4.064" width="0.1524" layer="21"/>
<wire x1="-25.654" y1="-4.064" x2="-21.717" y2="-4.064" width="0.1524" layer="21"/>
<wire x1="-21.717" y1="4.064" x2="-25.654" y2="4.064" width="0.1524" layer="21"/>
<wire x1="-25.654" y1="-4.064" x2="-25.654" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="-25.654" y1="-0.127" x2="-25.654" y2="0.127" width="0.1524" layer="21"/>
<wire x1="-25.654" y1="-0.127" x2="-25.4" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="-25.4" y1="0.127" x2="-25.4" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="-25.4" y1="0.127" x2="-25.654" y2="0.127" width="0.1524" layer="21"/>
<wire x1="-25.654" y1="0.127" x2="-25.654" y2="4.064" width="0.1524" layer="21"/>
<wire x1="-25.654" y1="-3.683" x2="-22.86" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="-25.654" y1="-3.683" x2="-25.654" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="-0.381" x2="-22.86" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="-0.381" x2="-25.654" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="-25.654" y1="-0.381" x2="-25.654" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="4.318" y1="3.175" x2="4.318" y2="1.27" width="0.1524" layer="21"/>
<wire x1="4.318" y1="-1.27" x2="4.318" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="-16.637" y1="3.175" x2="-16.637" y2="-6.223" width="0.1524" layer="21"/>
<pad name="2" x="5.08" y="0" drill="1.3208" diameter="2.54" shape="long" rot="R90"/>
<pad name="1" x="-5.08" y="0" drill="1.3208" diameter="2.54" shape="long" rot="R90"/>
<text x="-15.875" y="1.143" size="1.27" layer="51" ratio="10">F457 10A/250V</text>
<text x="-15.875" y="-2.54" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-27.686" y="-8.636" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<rectangle x1="-25.654" y1="-3.683" x2="-22.86" y2="-0.381" layer="21"/>
<rectangle x1="-16.637" y1="3.175" x2="4.318" y2="6.223" layer="21"/>
<rectangle x1="-16.637" y1="-6.223" x2="4.318" y2="-3.175" layer="21"/>
</package>
<package name="FUSE_HOLDER_MENTOR-1821" urn="urn:adsk.eagle:footprint:14050/1">
<description>&lt;b&gt;Fuse Holder&lt;/b&gt; 5x20 mm Manufacturer: MENTOR Type: 1821&lt;p&gt;
Distributor: Bürklin 46 G 6111&lt;br&gt;
Source: User LBR Version 2.05</description>
<wire x1="10.795" y1="5.08" x2="-5.08" y2="5.08" width="0.3048" layer="21"/>
<wire x1="-22.225" y1="4.445" x2="-22.225" y2="-4.445" width="0.3048" layer="21"/>
<wire x1="10.795" y1="-5.08" x2="-5.08" y2="-5.08" width="0.3048" layer="21"/>
<wire x1="10.795" y1="-5.08" x2="10.795" y2="5.08" width="0.3048" layer="21"/>
<wire x1="-5.08" y1="5.08" x2="-5.08" y2="-5.08" width="0.3048" layer="21"/>
<wire x1="-5.08" y1="5.08" x2="-12.065" y2="5.08" width="0.3048" layer="21"/>
<wire x1="-5.08" y1="-5.08" x2="-12.065" y2="-5.08" width="0.3048" layer="21"/>
<wire x1="-12.065" y1="5.08" x2="-12.065" y2="3.81" width="0.3048" layer="21"/>
<wire x1="-18.415" y1="3.81" x2="-12.065" y2="3.81" width="0.3048" layer="21"/>
<wire x1="-18.415" y1="3.81" x2="-18.415" y2="4.445" width="0.3048" layer="21"/>
<wire x1="-18.415" y1="4.445" x2="-22.225" y2="4.445" width="0.3048" layer="21"/>
<wire x1="-22.225" y1="-4.445" x2="-18.415" y2="-4.445" width="0.3048" layer="21"/>
<wire x1="-18.415" y1="-3.81" x2="-18.415" y2="-4.445" width="0.3048" layer="21"/>
<wire x1="-12.065" y1="-3.81" x2="-12.065" y2="-5.08" width="0.3048" layer="21"/>
<wire x1="-12.065" y1="-3.81" x2="-18.415" y2="-3.81" width="0.3048" layer="21"/>
<wire x1="-12.065" y1="3.81" x2="-12.065" y2="-3.81" width="0.3048" layer="21"/>
<wire x1="-18.415" y1="3.81" x2="-18.415" y2="-3.81" width="0.3048" layer="21"/>
<pad name="B" x="0" y="0" drill="1.2192" diameter="1.905" shape="square"/>
<pad name="A" x="10.16" y="0" drill="1.2192" diameter="1.905" shape="square"/>
<text x="-11.43" y="-8.255" size="1.778" layer="25">&gt;NAME</text>
<text x="-3.81" y="-3.81" size="1.778" layer="27">&gt;VALUE</text>
</package>
<package name="FUSE_HOLDER_SCHURTER-FAS" urn="urn:adsk.eagle:footprint:14053/1">
<description>&lt;b&gt;Fuse holder&lt;/b&gt; 5x20 mm Manufacturer: SCHURTER Type: FAS&lt;p&gt;
Distributor: Bürklin 46 G 611&lt;br&gt;
Source: User LBR Version 2.05</description>
<wire x1="-5.08" y1="-5.08" x2="-5.08" y2="5.08" width="0.3048" layer="21"/>
<wire x1="-8.89" y1="-6.35" x2="-8.89" y2="-3.81" width="0.3048" layer="21"/>
<wire x1="-17.78" y1="-4.445" x2="-17.78" y2="4.445" width="0.3048" layer="21"/>
<wire x1="-17.78" y1="4.445" x2="-11.43" y2="4.445" width="0.3048" layer="21"/>
<wire x1="-11.43" y1="4.445" x2="-11.43" y2="3.81" width="0.3048" layer="21"/>
<wire x1="-11.43" y1="-4.445" x2="-17.78" y2="-4.445" width="0.3048" layer="21"/>
<wire x1="13.335" y1="5.08" x2="13.335" y2="-5.08" width="0.3048" layer="21"/>
<wire x1="13.335" y1="5.08" x2="-5.08" y2="5.08" width="0.3048" layer="21"/>
<wire x1="-11.43" y1="3.81" x2="-8.89" y2="3.81" width="0.3048" layer="21"/>
<wire x1="-11.43" y1="3.81" x2="-11.43" y2="-3.81" width="0.3048" layer="21"/>
<wire x1="-8.89" y1="3.81" x2="-8.89" y2="6.35" width="0.3048" layer="21"/>
<wire x1="-11.43" y1="-3.81" x2="-8.89" y2="-3.81" width="0.3048" layer="21"/>
<wire x1="-11.43" y1="-3.81" x2="-11.43" y2="-4.445" width="0.3048" layer="21"/>
<wire x1="-8.89" y1="-3.81" x2="-8.89" y2="3.81" width="0.3048" layer="21"/>
<wire x1="-5.08" y1="-5.08" x2="13.335" y2="-5.08" width="0.3048" layer="21"/>
<wire x1="-5.08" y1="5.08" x2="-5.08" y2="6.35" width="0.3048" layer="21"/>
<wire x1="-5.08" y1="6.35" x2="-8.89" y2="6.35" width="0.3048" layer="21"/>
<wire x1="-5.08" y1="-5.08" x2="-5.08" y2="-6.35" width="0.3048" layer="21"/>
<wire x1="-5.08" y1="-6.35" x2="-8.89" y2="-6.35" width="0.3048" layer="21"/>
<pad name="A" x="0" y="0" drill="1.2192" diameter="1.905" shape="square"/>
<pad name="B" x="12.7" y="0" drill="1.2192" diameter="1.905" shape="square"/>
<text x="-3.81" y="-7.62" size="1.778" layer="25">&gt;NAME</text>
<text x="-3.81" y="-3.81" size="1.778" layer="27">&gt;VALUE</text>
</package>
<package name="FUSE_HOLDER_WICKMANN-19596" urn="urn:adsk.eagle:footprint:14051/1">
<description>&lt;b&gt;Fuse holder&lt;/b&gt; 5x20 mm Manufacturer: WICKMANN Type: 19596&lt;p&gt;
Distributor: Bürklin 46 G 612&lt;br&gt;
Source: User LBR Version 2.05</description>
<wire x1="-5.715" y1="-5.08" x2="-5.715" y2="5.08" width="0.3048" layer="21"/>
<wire x1="-9.525" y1="-5.715" x2="-9.525" y2="-4.445" width="0.3048" layer="21"/>
<wire x1="-17.145" y1="-5.08" x2="-17.145" y2="5.08" width="0.3048" layer="21"/>
<wire x1="-17.145" y1="5.08" x2="-10.795" y2="5.08" width="0.3048" layer="21"/>
<wire x1="-10.795" y1="5.08" x2="-10.795" y2="4.445" width="0.3048" layer="21"/>
<wire x1="-10.795" y1="-5.08" x2="-17.145" y2="-5.08" width="0.3048" layer="21"/>
<wire x1="13.97" y1="4.445" x2="13.97" y2="-4.445" width="0.3048" layer="21"/>
<wire x1="-10.795" y1="4.445" x2="-9.525" y2="4.445" width="0.3048" layer="21"/>
<wire x1="-10.795" y1="4.445" x2="-10.795" y2="-4.445" width="0.3048" layer="21"/>
<wire x1="-9.525" y1="4.445" x2="-9.525" y2="5.715" width="0.3048" layer="21"/>
<wire x1="-10.795" y1="-4.445" x2="-9.525" y2="-4.445" width="0.3048" layer="21"/>
<wire x1="-10.795" y1="-4.445" x2="-10.795" y2="-5.08" width="0.3048" layer="21"/>
<wire x1="-9.525" y1="-4.445" x2="-9.525" y2="4.445" width="0.3048" layer="21"/>
<wire x1="-5.715" y1="5.08" x2="-5.715" y2="5.715" width="0.3048" layer="21"/>
<wire x1="-5.715" y1="5.715" x2="-9.525" y2="5.715" width="0.3048" layer="21"/>
<wire x1="-5.715" y1="-5.08" x2="-5.715" y2="-5.715" width="0.3048" layer="21"/>
<wire x1="-5.715" y1="-5.715" x2="-9.525" y2="-5.715" width="0.3048" layer="21"/>
<wire x1="-5.715" y1="5.08" x2="1.905" y2="5.08" width="0.3048" layer="21"/>
<wire x1="1.905" y1="4.445" x2="1.905" y2="5.08" width="0.3048" layer="21"/>
<wire x1="1.905" y1="4.445" x2="13.97" y2="4.445" width="0.3048" layer="21"/>
<wire x1="-5.715" y1="-5.08" x2="1.905" y2="-5.08" width="0.3048" layer="21"/>
<wire x1="1.905" y1="-4.445" x2="1.905" y2="-5.08" width="0.3048" layer="21"/>
<wire x1="1.905" y1="-4.445" x2="13.97" y2="-4.445" width="0.3048" layer="21"/>
<wire x1="-6.985" y1="3.175" x2="-8.255" y2="0.635" width="0.3048" layer="21"/>
<wire x1="-8.255" y1="0.635" x2="-6.985" y2="0.635" width="0.3048" layer="21"/>
<wire x1="-6.985" y1="0.635" x2="-8.255" y2="-1.905" width="0.3048" layer="21"/>
<wire x1="-8.255" y1="-1.905" x2="-8.255" y2="-1.27" width="0.3048" layer="21"/>
<wire x1="-8.255" y1="-1.905" x2="-7.62" y2="-1.27" width="0.3048" layer="21"/>
<pad name="B" x="0" y="0" drill="1.2192" diameter="1.905" shape="square"/>
<pad name="A" x="12.7" y="0" drill="1.2192" diameter="1.905" shape="square"/>
<pad name="B@1" x="2.54" y="0" drill="1.2192" diameter="1.905" shape="square"/>
<text x="-3.81" y="-7.62" size="1.778" layer="25">&gt;NAME</text>
<text x="-3.81" y="-3.81" size="1.778" layer="27">&gt;VALUE</text>
</package>
<package name="GSH15" urn="urn:adsk.eagle:footprint:14041/1">
<description>&lt;b&gt;FUSE HOLDER&lt;/b&gt;&lt;p&gt;
grid 15mm, 19649 Wickmann</description>
<wire x1="-12.573" y1="-4.572" x2="-12.573" y2="4.572" width="0.1524" layer="21"/>
<wire x1="12.573" y1="4.572" x2="12.573" y2="-4.572" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="2.921" x2="5.08" y2="2.921" width="0.0508" layer="21"/>
<wire x1="-11.43" y1="3.683" x2="-8.382" y2="3.683" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="-3.683" x2="-11.43" y2="3.683" width="0.1524" layer="21"/>
<wire x1="11.43" y1="3.683" x2="11.43" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="0" x2="5.207" y2="0" width="0.0508" layer="21"/>
<wire x1="12.573" y1="-4.572" x2="5.08" y2="-4.572" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-3.048" x2="5.08" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-3.048" x2="-5.08" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-4.572" x2="-12.573" y2="-4.572" width="0.1524" layer="21"/>
<wire x1="-12.573" y1="4.572" x2="-5.08" y2="4.572" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="3.048" x2="5.08" y2="3.048" width="0.1524" layer="21"/>
<wire x1="5.08" y1="4.572" x2="5.08" y2="3.683" width="0.1524" layer="21"/>
<wire x1="5.08" y1="4.572" x2="12.573" y2="4.572" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-3.683" x2="6.858" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="6.858" y1="-4.191" x2="6.858" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="6.858" y1="-4.191" x2="8.382" y2="-4.191" width="0.1524" layer="21"/>
<wire x1="8.382" y1="-3.683" x2="8.382" y2="-4.191" width="0.1524" layer="21"/>
<wire x1="8.382" y1="-3.683" x2="11.43" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="5.08" y1="3.683" x2="6.858" y2="3.683" width="0.1524" layer="21"/>
<wire x1="6.858" y1="4.191" x2="6.858" y2="3.683" width="0.1524" layer="21"/>
<wire x1="6.858" y1="4.191" x2="8.382" y2="4.191" width="0.1524" layer="21"/>
<wire x1="8.382" y1="3.683" x2="8.382" y2="4.191" width="0.1524" layer="21"/>
<wire x1="8.382" y1="3.683" x2="11.43" y2="3.683" width="0.1524" layer="21"/>
<wire x1="5.08" y1="3.683" x2="5.08" y2="3.048" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-3.683" x2="5.08" y2="-4.572" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="3.048" x2="-5.08" y2="3.683" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="3.683" x2="-5.08" y2="4.572" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-4.572" x2="-5.08" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-3.683" x2="-5.08" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-6.858" y1="3.683" x2="-5.08" y2="3.683" width="0.1524" layer="21"/>
<wire x1="-6.858" y1="4.191" x2="-6.858" y2="3.683" width="0.1524" layer="21"/>
<wire x1="-8.382" y1="4.191" x2="-6.858" y2="4.191" width="0.1524" layer="21"/>
<wire x1="-8.382" y1="3.683" x2="-8.382" y2="4.191" width="0.1524" layer="21"/>
<wire x1="-6.858" y1="-3.683" x2="-5.08" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="-6.858" y1="-4.191" x2="-6.858" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="-8.382" y1="-4.191" x2="-6.858" y2="-4.191" width="0.1524" layer="21"/>
<wire x1="-8.382" y1="-3.683" x2="-8.382" y2="-4.191" width="0.1524" layer="21"/>
<wire x1="-8.382" y1="-3.683" x2="-11.43" y2="-3.683" width="0.1524" layer="21"/>
<pad name="1" x="-7.62" y="0" drill="1.3208" diameter="2.54" shape="long" rot="R90"/>
<pad name="2" x="7.62" y="0" drill="1.3208" diameter="2.54" shape="long" rot="R90"/>
<text x="-4.4196" y="3.6068" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-4.4196" y="-5.461" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-5.08" y1="1.651" x2="5.08" y2="2.159" layer="21"/>
<rectangle x1="-5.08" y1="-2.159" x2="5.08" y2="-1.651" layer="21"/>
<rectangle x1="5.08" y1="-3.175" x2="5.715" y2="-1.524" layer="21"/>
<rectangle x1="5.08" y1="1.524" x2="5.715" y2="3.175" layer="21"/>
<rectangle x1="5.08" y1="-1.524" x2="5.715" y2="1.524" layer="51"/>
<rectangle x1="10.287" y1="-2.032" x2="10.541" y2="2.032" layer="21"/>
<rectangle x1="6.731" y1="1.905" x2="8.509" y2="2.032" layer="51"/>
<rectangle x1="6.731" y1="-2.032" x2="8.509" y2="-1.905" layer="51"/>
<rectangle x1="5.715" y1="2.032" x2="10.541" y2="3.175" layer="21"/>
<rectangle x1="5.715" y1="-3.175" x2="10.541" y2="-2.032" layer="21"/>
<rectangle x1="7.112" y1="-3.937" x2="8.128" y2="-3.175" layer="21"/>
<rectangle x1="7.112" y1="3.175" x2="8.128" y2="3.937" layer="21"/>
<rectangle x1="-5.715" y1="-1.524" x2="-5.08" y2="1.524" layer="51"/>
<rectangle x1="-5.715" y1="1.524" x2="-5.08" y2="3.175" layer="21"/>
<rectangle x1="-5.715" y1="-3.175" x2="-5.08" y2="-1.524" layer="21"/>
<rectangle x1="-10.541" y1="-3.175" x2="-5.715" y2="-2.032" layer="21"/>
<rectangle x1="-8.509" y1="-2.032" x2="-6.731" y2="-1.905" layer="51"/>
<rectangle x1="-10.541" y1="-2.032" x2="-10.287" y2="2.032" layer="21"/>
<rectangle x1="-8.509" y1="1.905" x2="-6.731" y2="2.032" layer="51"/>
<rectangle x1="-10.541" y1="2.032" x2="-5.715" y2="3.175" layer="21"/>
<rectangle x1="-8.128" y1="3.175" x2="-7.112" y2="3.937" layer="21"/>
<rectangle x1="-8.128" y1="-3.937" x2="-7.112" y2="-3.175" layer="21"/>
<rectangle x1="5.715" y1="-2.032" x2="6.731" y2="-1.905" layer="21"/>
<rectangle x1="5.715" y1="1.905" x2="6.731" y2="2.032" layer="21"/>
<rectangle x1="8.509" y1="1.905" x2="10.287" y2="2.032" layer="21"/>
<rectangle x1="8.509" y1="-2.032" x2="10.287" y2="-1.905" layer="21"/>
<rectangle x1="-10.287" y1="1.905" x2="-8.509" y2="2.032" layer="21"/>
<rectangle x1="-6.731" y1="1.905" x2="-5.715" y2="2.032" layer="21"/>
<rectangle x1="-6.731" y1="-2.032" x2="-5.715" y2="-1.905" layer="21"/>
<rectangle x1="-10.287" y1="-2.032" x2="-8.509" y2="-1.905" layer="21"/>
<hole x="0" y="0" drill="2.794"/>
</package>
<package name="KS10H" urn="urn:adsk.eagle:footprint:14031/1">
<description>&lt;b&gt;FUSE HOLDER&lt;/b&gt;&lt;p&gt;
CS Schukat</description>
<wire x1="-5.08" y1="-7.62" x2="-5.08" y2="17.78" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="17.78" x2="-4.445" y2="17.78" width="0.1524" layer="21"/>
<wire x1="5.08" y1="17.78" x2="5.08" y2="-7.62" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-7.62" x2="2.032" y2="-7.62" width="0.1524" layer="21"/>
<wire x1="-2.032" y1="-7.62" x2="-5.08" y2="-7.62" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="17.78" x2="-4.445" y2="19.177" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="17.78" x2="4.445" y2="17.78" width="0.1524" layer="21"/>
<wire x1="4.445" y1="17.78" x2="4.445" y2="19.177" width="0.1524" layer="21"/>
<wire x1="4.445" y1="17.78" x2="5.08" y2="17.78" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="19.177" x2="4.826" y2="19.177" width="0.1524" layer="21"/>
<wire x1="4.826" y1="19.177" x2="4.826" y2="19.812" width="0.1524" layer="21"/>
<wire x1="4.826" y1="19.812" x2="-4.826" y2="19.812" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="19.812" x2="-4.826" y2="19.177" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="19.812" x2="-4.699" y2="24.892" width="0.1524" layer="21"/>
<wire x1="4.572" y1="24.892" x2="4.826" y2="19.812" width="0.1524" layer="21"/>
<wire x1="-4.191" y1="25.4" x2="-0.635" y2="25.4" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="25.4" x2="-0.635" y2="24.765" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="24.765" x2="0.635" y2="24.765" width="0.1524" layer="21"/>
<wire x1="0.635" y1="24.765" x2="0.635" y2="25.4" width="0.1524" layer="21"/>
<wire x1="0.635" y1="25.4" x2="4.064" y2="25.4" width="0.1524" layer="21"/>
<wire x1="2.032" y1="-7.62" x2="2.032" y2="-6.096" width="0.1524" layer="21"/>
<wire x1="-2.032" y1="-7.62" x2="-2.032" y2="-6.096" width="0.1524" layer="21"/>
<wire x1="-2.032" y1="-6.096" x2="-2.032" y2="-5.08" width="0.1524" layer="51"/>
<wire x1="-2.032" y1="-5.08" x2="2.032" y2="-5.08" width="0.1524" layer="51"/>
<wire x1="2.032" y1="-5.08" x2="2.032" y2="-6.096" width="0.1524" layer="51"/>
<wire x1="-1.397" y1="-5.207" x2="1.397" y2="-5.207" width="0.1524" layer="51"/>
<wire x1="4.064" y1="25.4" x2="4.572" y2="24.892" width="0.1524" layer="21" curve="-90"/>
<wire x1="-4.699" y1="24.892" x2="-4.191" y2="25.4" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="0" y="-5.08" drill="1.3208" diameter="2.54" shape="long"/>
<pad name="2" x="0" y="7.62" drill="1.3208" diameter="2.54" shape="long"/>
<text x="7.239" y="-7.62" size="1.778" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="7.239" y="0.635" size="1.778" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
<rectangle x1="2.032" y1="-7.62" x2="3.302" y2="17.78" layer="21"/>
<rectangle x1="-3.302" y1="-7.62" x2="-2.032" y2="17.78" layer="21"/>
<rectangle x1="-4.445" y1="17.78" x2="4.445" y2="19.177" layer="21"/>
</package>
<package name="KS16" urn="urn:adsk.eagle:footprint:14032/1">
<description>&lt;b&gt;FUSE HOLDER&lt;/b&gt;&lt;p&gt;
CS Schukat</description>
<wire x1="-5.08" y1="-19.05" x2="-5.08" y2="16.51" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="16.51" x2="-4.445" y2="16.51" width="0.1524" layer="21"/>
<wire x1="5.08" y1="16.51" x2="5.08" y2="-19.05" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="16.51" x2="-4.445" y2="17.145" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="16.51" x2="4.445" y2="16.51" width="0.1524" layer="21"/>
<wire x1="4.445" y1="16.51" x2="4.445" y2="17.145" width="0.1524" layer="21"/>
<wire x1="4.445" y1="16.51" x2="5.08" y2="16.51" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="17.145" x2="-0.6096" y2="17.145" width="0.1524" layer="21"/>
<wire x1="-0.6096" y1="17.145" x2="-0.6096" y2="16.8402" width="0.1524" layer="21"/>
<wire x1="-0.6096" y1="16.8402" x2="0.635" y2="16.8402" width="0.1524" layer="21"/>
<wire x1="0.635" y1="16.8402" x2="0.635" y2="17.145" width="0.1524" layer="21"/>
<wire x1="4.445" y1="17.145" x2="0.635" y2="17.145" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-19.05" x2="1.651" y2="-19.05" width="0.1524" layer="21"/>
<wire x1="1.651" y1="-19.05" x2="-1.651" y2="-19.05" width="0.1524" layer="51"/>
<wire x1="-1.651" y1="-19.05" x2="-5.08" y2="-19.05" width="0.1524" layer="21"/>
<pad name="1" x="0" y="-17.78" drill="1.4986" diameter="2.54" shape="long"/>
<pad name="2" x="0" y="-8.255" drill="1.4986" diameter="2.54" shape="long"/>
<text x="7.366" y="-19.05" size="1.778" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="0.889" y="-2.54" size="1.778" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
<rectangle x1="-4.445" y1="16.51" x2="-0.635" y2="17.145" layer="21"/>
<rectangle x1="-0.635" y1="16.51" x2="0.635" y2="16.8402" layer="21"/>
<rectangle x1="0.635" y1="16.51" x2="4.445" y2="17.145" layer="21"/>
<rectangle x1="3.175" y1="-19.05" x2="4.1402" y2="16.51" layer="21"/>
<rectangle x1="-4.1402" y1="-19.05" x2="-3.175" y2="16.51" layer="21"/>
</package>
<package name="KS17" urn="urn:adsk.eagle:footprint:14033/1">
<description>&lt;b&gt;FUSE HOLDER&lt;/b&gt;&lt;p&gt;
CS Schukat</description>
<wire x1="-3.81" y1="-6.35" x2="-3.81" y2="-6.985" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-6.35" x2="3.81" y2="-6.985" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="6.985" x2="3.81" y2="6.985" width="0.1524" layer="21"/>
<wire x1="3.81" y1="6.985" x2="3.81" y2="6.35" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="6.985" x2="-3.81" y2="6.35" width="0.1524" layer="21"/>
<wire x1="3.81" y1="6.35" x2="3.81" y2="-6.35" width="0.1524" layer="21" curve="-118.072487"/>
<wire x1="-3.81" y1="-6.35" x2="-3.81" y2="6.35" width="0.1524" layer="21" curve="-118.072487"/>
<wire x1="-3.175" y1="0.381" x2="-3.175" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-0.381" x2="3.175" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-0.381" x2="3.175" y2="0.381" width="0.1524" layer="21"/>
<wire x1="3.175" y1="0.381" x2="-3.175" y2="0.381" width="0.1524" layer="21"/>
<wire x1="2.2223" y1="-4.5681" x2="5.08" y2="0" width="0.3048" layer="21" curve="64.057726"/>
<wire x1="2.2718" y1="4.5437" x2="5.08" y2="0" width="0.3048" layer="21" curve="-63.435374"/>
<wire x1="-2.2718" y1="4.5437" x2="0" y2="5.08" width="0.3048" layer="51" curve="-26.564517"/>
<wire x1="0" y1="5.08" x2="2.2718" y2="4.5437" width="0.3048" layer="51" curve="-26.564517"/>
<wire x1="-5.08" y1="0" x2="-2.2718" y2="-4.5437" width="0.3048" layer="21" curve="63.435374"/>
<wire x1="-5.08" y1="0" x2="-2.2223" y2="4.5681" width="0.3048" layer="21" curve="-64.057726"/>
<wire x1="0" y1="-5.08" x2="2.2718" y2="-4.5437" width="0.3048" layer="51" curve="26.564517"/>
<wire x1="-2.2718" y1="-4.5437" x2="0" y2="-5.08" width="0.3048" layer="51" curve="26.564517"/>
<wire x1="3.81" y1="-6.985" x2="1.016" y2="-6.985" width="0.1524" layer="21"/>
<wire x1="1.016" y1="-6.985" x2="-1.016" y2="-6.985" width="0.1524" layer="51"/>
<wire x1="-1.016" y1="-6.985" x2="-3.81" y2="-6.985" width="0.1524" layer="21"/>
<pad name="1" x="0" y="-5.08" drill="1.4986" diameter="2.54" shape="long"/>
<pad name="2" x="0" y="4.445" drill="1.4986" diameter="2.54" shape="long"/>
<text x="-3.81" y="7.62" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.302" y="-2.667" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="KS9V" urn="urn:adsk.eagle:footprint:14049/1">
<description>&lt;b&gt;FUSE HOLDER&lt;/b&gt;&lt;p&gt;
CS Schukat</description>
<wire x1="-1.8331" y1="-4.3286" x2="1.8331" y2="-4.3286" width="0.1524" layer="51" curve="45.903921"/>
<wire x1="-1.6181" y1="-4.8154" x2="1.6181" y2="-4.8154" width="0.1524" layer="51" curve="37.147383"/>
<wire x1="-1.42" y1="-5.08" x2="1.42" y2="-5.08" width="0.1524" layer="51"/>
<wire x1="-1.2381" y1="-2.3622" x2="1.2381" y2="-2.3622" width="0.1524" layer="51" curve="55.320768"/>
<wire x1="-1.2381" y1="2.3622" x2="1.2381" y2="2.3622" width="0.1524" layer="51" curve="-55.320768"/>
<wire x1="-1.3394" y1="5.1647" x2="1.3394" y2="5.1647" width="0.1524" layer="51" curve="-29.077303"/>
<wire x1="-2.556" y1="0.762" x2="2.556" y2="0.762" width="0.1524" layer="21"/>
<wire x1="-2.556" y1="-0.762" x2="2.556" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="-1.6181" y1="4.8154" x2="1.6181" y2="4.8154" width="0.1524" layer="51" curve="-37.147383"/>
<wire x1="-1.8331" y1="4.3286" x2="1.8331" y2="4.3286" width="0.1524" layer="51" curve="-45.903921"/>
<wire x1="-3.683" y1="-3.861" x2="-1.3394" y2="5.1642" width="0.1524" layer="21" curve="-121.809325"/>
<wire x1="-1.6181" y1="4.8154" x2="-1.6181" y2="-4.8154" width="0.1524" layer="21" curve="142.852617"/>
<wire x1="-1.8331" y1="4.3286" x2="-1.8331" y2="-4.3286" width="0.1524" layer="21" curve="134.096079"/>
<wire x1="-1.2381" y1="2.3622" x2="-1.2381" y2="-2.3622" width="0.1524" layer="21" curve="124.679232"/>
<wire x1="-3.683" y1="-4.826" x2="-3.683" y2="-3.861" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-5.08" x2="-1.42" y2="-5.08" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="-4.826" x2="-3.429" y2="-5.08" width="0.1524" layer="21" curve="90"/>
<wire x1="1.3394" y1="5.1642" x2="3.683" y2="-3.861" width="0.1524" layer="21" curve="-121.809325"/>
<wire x1="1.2381" y1="-2.3622" x2="1.2381" y2="2.3622" width="0.1524" layer="21" curve="124.679232"/>
<wire x1="1.8331" y1="-4.3286" x2="1.8331" y2="4.3286" width="0.1524" layer="21" curve="134.096079"/>
<wire x1="1.6181" y1="-4.8154" x2="1.6181" y2="4.8154" width="0.1524" layer="21" curve="142.852617"/>
<wire x1="3.683" y1="-4.826" x2="3.683" y2="-3.861" width="0.1524" layer="21"/>
<wire x1="3.429" y1="-5.08" x2="3.683" y2="-4.826" width="0.1524" layer="21" curve="90"/>
<wire x1="1.42" y1="-5.08" x2="3.429" y2="-5.08" width="0.1524" layer="21"/>
<pad name="1" x="0" y="3.81" drill="1.3208" diameter="2.54" shape="long"/>
<pad name="2" x="0" y="-3.81" drill="1.3208" diameter="2.54" shape="long"/>
<text x="-2.54" y="5.588" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.429" y="-6.858" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="LITTLEFUSE" urn="urn:adsk.eagle:footprint:14040/1">
<description>&lt;B&gt;LITTLEFUSE&lt;/B&gt;&lt;p&gt;
Picofuse/slow Littelfuse</description>
<wire x1="5.08" y1="0" x2="3.937" y2="0" width="0.6096" layer="51"/>
<wire x1="-5.08" y1="0" x2="-3.937" y2="0" width="0.6096" layer="51"/>
<wire x1="2.667" y1="1.778" x2="-2.667" y2="1.778" width="0.1524" layer="21"/>
<wire x1="2.667" y1="-1.778" x2="-2.667" y2="-1.778" width="0.1524" layer="21"/>
<wire x1="-0.762" y1="0.254" x2="-0.762" y2="-0.254" width="0.0508" layer="21"/>
<wire x1="-2.667" y1="1.016" x2="-2.667" y2="-1.016" width="0.0508" layer="21"/>
<wire x1="2.667" y1="1.016" x2="2.667" y2="-1.016" width="0.0508" layer="21"/>
<wire x1="0.762" y1="0.254" x2="0.762" y2="-0.254" width="0.0508" layer="21"/>
<wire x1="3.556" y1="0.508" x2="3.556" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="2.667" y1="-1.778" x2="3.556" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="2.667" y1="1.778" x2="3.556" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-2.667" y1="1.778" x2="-3.556" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="0.508" x2="-3.556" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="-0.508" x2="-2.667" y2="-1.778" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="0" x2="1.524" y2="0" width="0.0508" layer="21"/>
<wire x1="-0.762" y1="0.254" x2="0.762" y2="0.254" width="0.0508" layer="21"/>
<wire x1="-0.762" y1="-0.254" x2="0.762" y2="-0.254" width="0.0508" layer="21"/>
<pad name="1" x="-5.08" y="0" drill="0.8128" diameter="1.778" shape="long" rot="R90"/>
<pad name="2" x="5.08" y="0" drill="0.8128" diameter="1.778" shape="long" rot="R90"/>
<text x="-2.54" y="2.159" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.667" y="-3.4798" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="3.556" y1="-0.3048" x2="3.9116" y2="0.3048" layer="21"/>
<rectangle x1="-3.9116" y1="-0.3048" x2="-3.556" y2="0.3048" layer="21"/>
</package>
<package name="PICOFUSE" urn="urn:adsk.eagle:footprint:14036/1">
<description>&lt;B&gt;PICOFUSE&lt;/B&gt;&lt;p&gt;
Picofuse, 19275 Wickmann</description>
<wire x1="5.08" y1="0" x2="4.064" y2="0" width="0.1524" layer="51"/>
<wire x1="-5.08" y1="0" x2="-4.064" y2="0" width="0.6096" layer="51"/>
<wire x1="-2.794" y1="1.27" x2="-1.524" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="1.016" x2="-1.524" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-2.794" y1="-1.27" x2="-1.524" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.016" x2="-1.524" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.016" x2="1.524" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.016" x2="-1.27" y2="1.016" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.016" x2="1.524" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.016" x2="-1.27" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.794" y1="1.27" x2="1.524" y2="1.27" width="0.1524" layer="21"/>
<wire x1="2.794" y1="-1.27" x2="1.524" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="1.016" x2="-1.524" y2="-1.016" width="0.0508" layer="21"/>
<wire x1="-2.794" y1="1.016" x2="-2.794" y2="-1.016" width="0.0508" layer="21"/>
<wire x1="2.794" y1="1.016" x2="2.794" y2="-1.016" width="0.0508" layer="21"/>
<wire x1="1.524" y1="1.016" x2="1.524" y2="-1.016" width="0.0508" layer="21"/>
<wire x1="3.81" y1="0.508" x2="3.81" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-0.508" x2="3.556" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="2.794" y1="-1.27" x2="3.556" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="3.81" y1="0.508" x2="3.556" y2="0.508" width="0.1524" layer="21"/>
<wire x1="2.794" y1="1.27" x2="3.556" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-2.794" y1="1.27" x2="-3.556" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="0.508" x2="-3.81" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="0.508" x2="-3.81" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-0.508" x2="-3.556" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="-0.508" x2="-2.794" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0" x2="1.27" y2="0" width="0.0508" layer="21"/>
<pad name="1" x="-5.08" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="2" x="5.08" y="0" drill="0.8128" shape="long" rot="R90"/>
<text x="-2.54" y="1.524" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.54" y="-2.8448" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="3.81" y1="-0.3048" x2="4.1656" y2="0.3048" layer="21"/>
<rectangle x1="-4.1656" y1="-0.3048" x2="-3.81" y2="0.3048" layer="21"/>
</package>
<package name="SH22" urn="urn:adsk.eagle:footprint:14037/1">
<description>&lt;b&gt;FUSE HOLDER&lt;/b&gt;&lt;p&gt;
CS PFP30, Schukat</description>
<wire x1="-13.208" y1="-4.826" x2="13.208" y2="-4.826" width="0.1524" layer="21"/>
<wire x1="13.208" y1="4.826" x2="13.208" y2="-4.826" width="0.1524" layer="21"/>
<wire x1="13.208" y1="4.826" x2="-13.208" y2="4.826" width="0.1524" layer="21"/>
<wire x1="-13.208" y1="-4.826" x2="-13.208" y2="4.826" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-2.54" x2="5.08" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="5.08" y1="2.54" x2="-5.08" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-2.54" x2="-5.08" y2="2.54" width="0.1524" layer="21"/>
<pad name="1" x="-10.9982" y="0" drill="1.3208" diameter="2.54" shape="long" rot="R90"/>
<pad name="2" x="10.9982" y="0" drill="1.3208" diameter="2.54" shape="long" rot="R90"/>
<text x="-13.208" y="-6.985" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-6.985" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-13.208" y1="3.937" x2="13.208" y2="4.826" layer="21"/>
<rectangle x1="-13.208" y1="-4.826" x2="13.208" y2="-3.937" layer="21"/>
</package>
<package name="SH22,5" urn="urn:adsk.eagle:footprint:14030/1">
<description>&lt;b&gt;FUSE HOLDER&lt;/b&gt;&lt;p&gt; grid 22,5 mm, OGN0031 8201 Schurter (Buerklin)</description>
<wire x1="-12.573" y1="-3.937" x2="12.573" y2="-3.937" width="0.1524" layer="21"/>
<wire x1="12.573" y1="3.937" x2="-12.573" y2="3.937" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-2.921" x2="5.08" y2="-2.921" width="0.0508" layer="21"/>
<wire x1="-5.08" y1="2.921" x2="5.08" y2="2.921" width="0.0508" layer="21"/>
<wire x1="-10.795" y1="3.683" x2="-5.715" y2="3.683" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="-3.683" x2="-10.795" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="-2.54" x2="-5.715" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="3.683" x2="-10.795" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="2.54" x2="-5.715" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="-3.683" x2="-10.795" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="-3.683" x2="-5.715" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="-3.683" x2="-11.43" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="-3.683" x2="-11.43" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-11.176" y1="-2.032" x2="-11.176" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="-11.176" y1="-3.175" x2="-10.795" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="-3.175" x2="-10.795" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="2.54" x2="-5.715" y2="3.683" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="-2.032" x2="-11.43" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="-11.43" y1="-1.27" x2="-11.176" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="-11.176" y1="-1.27" x2="-11.176" y2="-2.032" width="0.1524" layer="51"/>
<wire x1="10.795" y1="-3.683" x2="5.715" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="10.795" y1="3.683" x2="10.795" y2="3.175" width="0.1524" layer="21"/>
<wire x1="10.795" y1="2.54" x2="5.715" y2="2.54" width="0.1524" layer="21"/>
<wire x1="10.795" y1="-3.683" x2="10.795" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="10.795" y1="-2.54" x2="5.715" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="5.715" y1="3.683" x2="10.795" y2="3.683" width="0.1524" layer="21"/>
<wire x1="5.715" y1="3.683" x2="5.715" y2="2.54" width="0.1524" layer="21"/>
<wire x1="10.795" y1="3.683" x2="11.43" y2="3.683" width="0.1524" layer="21"/>
<wire x1="11.43" y1="3.683" x2="11.43" y2="2.032" width="0.1524" layer="21"/>
<wire x1="11.176" y1="2.032" x2="11.176" y2="3.175" width="0.1524" layer="21"/>
<wire x1="11.176" y1="3.175" x2="10.795" y2="3.175" width="0.1524" layer="21"/>
<wire x1="10.795" y1="3.175" x2="10.795" y2="2.54" width="0.1524" layer="21"/>
<wire x1="5.715" y1="-2.54" x2="5.715" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="11.43" y1="2.032" x2="11.43" y2="1.27" width="0.1524" layer="51"/>
<wire x1="11.43" y1="1.27" x2="11.176" y2="1.27" width="0.1524" layer="51"/>
<wire x1="11.176" y1="1.27" x2="11.176" y2="2.032" width="0.1524" layer="51"/>
<wire x1="-5.207" y1="0" x2="5.207" y2="0" width="0.0508" layer="21"/>
<wire x1="12.573" y1="3.937" x2="12.573" y2="1.651" width="0.1524" layer="21"/>
<wire x1="12.573" y1="-1.651" x2="12.573" y2="1.651" width="0.1524" layer="51"/>
<wire x1="12.573" y1="-1.651" x2="12.573" y2="-3.937" width="0.1524" layer="21"/>
<wire x1="-12.573" y1="3.937" x2="-12.573" y2="1.651" width="0.1524" layer="21"/>
<wire x1="-12.573" y1="-1.651" x2="-12.573" y2="1.651" width="0.1524" layer="51"/>
<wire x1="-12.573" y1="-1.651" x2="-12.573" y2="-3.937" width="0.1524" layer="21"/>
<pad name="1" x="-11.2522" y="0" drill="1.3208" diameter="2.54" shape="long" rot="R90"/>
<pad name="2" x="11.2522" y="0" drill="1.3208" diameter="2.54" shape="long" rot="R90"/>
<text x="-12.7" y="-6.096" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="1.143" y="-6.096" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-10.541" y1="-2.032" x2="-10.16" y2="2.032" layer="51"/>
<rectangle x1="-10.541" y1="1.905" x2="-9.652" y2="2.032" layer="51"/>
<rectangle x1="-10.541" y1="-2.032" x2="-9.652" y2="-1.905" layer="51"/>
<rectangle x1="-5.715" y1="-3.175" x2="-5.08" y2="-2.032" layer="21"/>
<rectangle x1="-5.715" y1="2.032" x2="-5.08" y2="3.175" layer="21"/>
<rectangle x1="-5.715" y1="-2.032" x2="-5.08" y2="2.032" layer="21"/>
<rectangle x1="10.16" y1="-2.032" x2="10.541" y2="2.032" layer="51"/>
<rectangle x1="9.652" y1="-2.032" x2="10.541" y2="-1.905" layer="51"/>
<rectangle x1="9.652" y1="1.905" x2="10.541" y2="2.032" layer="51"/>
<rectangle x1="5.08" y1="2.032" x2="5.715" y2="3.175" layer="21"/>
<rectangle x1="5.08" y1="-3.175" x2="5.715" y2="-2.032" layer="21"/>
<rectangle x1="5.08" y1="-2.032" x2="5.715" y2="2.032" layer="21"/>
<rectangle x1="-5.08" y1="2.159" x2="5.08" y2="2.667" layer="21"/>
<rectangle x1="-5.08" y1="-2.667" x2="5.08" y2="-2.159" layer="21"/>
<rectangle x1="5.715" y1="-2.032" x2="9.652" y2="-1.905" layer="21"/>
<rectangle x1="5.715" y1="1.905" x2="9.652" y2="2.032" layer="21"/>
<rectangle x1="-9.652" y1="1.905" x2="-5.715" y2="2.032" layer="21"/>
<rectangle x1="-9.652" y1="-2.032" x2="-5.715" y2="-1.905" layer="21"/>
<rectangle x1="-10.541" y1="-2.54" x2="-5.715" y2="-2.032" layer="21"/>
<rectangle x1="-10.541" y1="2.032" x2="-5.715" y2="2.54" layer="21"/>
<rectangle x1="5.715" y1="2.032" x2="10.541" y2="2.54" layer="21"/>
<rectangle x1="5.715" y1="-2.54" x2="10.541" y2="-2.032" layer="21"/>
</package>
<package name="SH22,5A" urn="urn:adsk.eagle:footprint:14045/1">
<description>&lt;b&gt;FUSE HOLDER&lt;/b&gt;&lt;p&gt; grid 22,5 mm, isolated cap&lt;p&gt; OGN0031 8201 Schurter (Buerklin)</description>
<wire x1="-12.573" y1="-5.461" x2="12.573" y2="-5.461" width="0.1524" layer="21"/>
<wire x1="12.573" y1="5.461" x2="-12.573" y2="5.461" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-2.921" x2="5.08" y2="-2.921" width="0.0508" layer="21"/>
<wire x1="-5.08" y1="2.921" x2="5.08" y2="2.921" width="0.0508" layer="21"/>
<wire x1="-10.795" y1="3.683" x2="-5.715" y2="3.683" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="-3.683" x2="-10.795" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="-2.54" x2="-5.715" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="3.683" x2="-10.795" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="2.54" x2="-5.715" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="-3.683" x2="-10.795" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="-3.683" x2="-5.715" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="-3.683" x2="-11.43" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="-3.683" x2="-11.43" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-11.176" y1="-2.032" x2="-11.176" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="-11.176" y1="-3.175" x2="-10.795" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="-3.175" x2="-10.795" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="2.54" x2="-5.715" y2="3.683" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="-2.032" x2="-11.43" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="-11.43" y1="-1.27" x2="-11.176" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="-11.176" y1="-1.27" x2="-11.176" y2="-2.032" width="0.1524" layer="51"/>
<wire x1="10.795" y1="-3.683" x2="5.715" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="10.795" y1="3.683" x2="10.795" y2="3.175" width="0.1524" layer="21"/>
<wire x1="10.795" y1="2.54" x2="5.715" y2="2.54" width="0.1524" layer="21"/>
<wire x1="10.795" y1="-3.683" x2="10.795" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="10.795" y1="-2.54" x2="5.715" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="5.715" y1="3.683" x2="10.795" y2="3.683" width="0.1524" layer="21"/>
<wire x1="5.715" y1="3.683" x2="5.715" y2="2.54" width="0.1524" layer="21"/>
<wire x1="10.795" y1="3.683" x2="11.43" y2="3.683" width="0.1524" layer="21"/>
<wire x1="11.43" y1="3.683" x2="11.43" y2="2.032" width="0.1524" layer="21"/>
<wire x1="11.176" y1="2.032" x2="11.176" y2="3.175" width="0.1524" layer="21"/>
<wire x1="11.176" y1="3.175" x2="10.795" y2="3.175" width="0.1524" layer="21"/>
<wire x1="10.795" y1="3.175" x2="10.795" y2="2.54" width="0.1524" layer="21"/>
<wire x1="5.715" y1="-2.54" x2="5.715" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="11.43" y1="2.032" x2="11.43" y2="1.27" width="0.1524" layer="51"/>
<wire x1="11.43" y1="1.27" x2="11.176" y2="1.27" width="0.1524" layer="51"/>
<wire x1="11.176" y1="1.27" x2="11.176" y2="2.032" width="0.1524" layer="51"/>
<wire x1="-5.207" y1="0" x2="5.207" y2="0" width="0.0508" layer="21"/>
<wire x1="12.573" y1="5.461" x2="12.573" y2="1.651" width="0.1524" layer="21"/>
<wire x1="12.573" y1="-1.651" x2="12.573" y2="1.651" width="0.1524" layer="51"/>
<wire x1="12.573" y1="-1.651" x2="12.573" y2="-5.461" width="0.1524" layer="21"/>
<wire x1="-12.573" y1="5.461" x2="-12.573" y2="1.651" width="0.1524" layer="21"/>
<wire x1="-12.573" y1="-1.651" x2="-12.573" y2="1.651" width="0.1524" layer="51"/>
<wire x1="-12.573" y1="-1.651" x2="-12.573" y2="-5.461" width="0.1524" layer="21"/>
<pad name="1" x="-11.2522" y="0" drill="1.3208" diameter="2.54" shape="long" rot="R90"/>
<pad name="2" x="11.2522" y="0" drill="1.3208" diameter="2.54" shape="long" rot="R90"/>
<text x="-12.7" y="-7.62" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="0.0254" y="-7.62" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-10.541" y1="-2.032" x2="-10.16" y2="2.032" layer="51"/>
<rectangle x1="-10.541" y1="1.905" x2="-9.652" y2="2.032" layer="51"/>
<rectangle x1="-10.541" y1="-2.032" x2="-9.652" y2="-1.905" layer="51"/>
<rectangle x1="-5.715" y1="-3.175" x2="-5.08" y2="-2.032" layer="21"/>
<rectangle x1="-5.715" y1="2.032" x2="-5.08" y2="3.175" layer="21"/>
<rectangle x1="-5.715" y1="-2.032" x2="-5.08" y2="2.032" layer="21"/>
<rectangle x1="10.16" y1="-2.032" x2="10.541" y2="2.032" layer="51"/>
<rectangle x1="9.652" y1="-2.032" x2="10.541" y2="-1.905" layer="51"/>
<rectangle x1="9.652" y1="1.905" x2="10.541" y2="2.032" layer="51"/>
<rectangle x1="5.08" y1="2.032" x2="5.715" y2="3.175" layer="21"/>
<rectangle x1="5.08" y1="-3.175" x2="5.715" y2="-2.032" layer="21"/>
<rectangle x1="5.08" y1="-2.032" x2="5.715" y2="2.032" layer="21"/>
<rectangle x1="-5.08" y1="2.159" x2="5.08" y2="2.667" layer="21"/>
<rectangle x1="-5.08" y1="-2.667" x2="5.08" y2="-2.159" layer="21"/>
<rectangle x1="5.715" y1="-2.032" x2="9.652" y2="-1.905" layer="21"/>
<rectangle x1="5.715" y1="1.905" x2="9.652" y2="2.032" layer="21"/>
<rectangle x1="-9.652" y1="1.905" x2="-5.715" y2="2.032" layer="21"/>
<rectangle x1="-9.652" y1="-2.032" x2="-5.715" y2="-1.905" layer="21"/>
<rectangle x1="-10.541" y1="-2.54" x2="-5.715" y2="-2.032" layer="21"/>
<rectangle x1="-10.541" y1="2.032" x2="-5.715" y2="2.54" layer="21"/>
<rectangle x1="5.715" y1="2.032" x2="10.541" y2="2.54" layer="21"/>
<rectangle x1="5.715" y1="-2.54" x2="10.541" y2="-2.032" layer="21"/>
</package>
<package name="SH25" urn="urn:adsk.eagle:footprint:14042/1">
<description>&lt;b&gt;FUSE HOLDER&lt;/b&gt;&lt;p&gt; grid 2,5 mm,  OGN0031 8211 Schurter (Buerklin)</description>
<wire x1="-13.081" y1="-5.461" x2="13.081" y2="-5.461" width="0.1524" layer="21"/>
<wire x1="13.081" y1="5.461" x2="-13.081" y2="5.461" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-2.921" x2="5.08" y2="-2.921" width="0.0508" layer="21"/>
<wire x1="-5.08" y1="2.921" x2="5.08" y2="2.921" width="0.0508" layer="21"/>
<wire x1="-10.795" y1="3.683" x2="-5.715" y2="3.683" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="-3.683" x2="-10.795" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="-2.54" x2="-5.715" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="3.683" x2="-10.795" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="2.54" x2="-5.715" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="-3.683" x2="-10.795" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="-3.683" x2="-5.715" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="-3.683" x2="-11.43" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="-3.683" x2="-11.43" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-11.176" y1="-2.032" x2="-11.176" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="-11.176" y1="-3.175" x2="-10.795" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="-3.175" x2="-10.795" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="2.54" x2="-5.715" y2="3.683" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="-2.032" x2="-11.43" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="-11.43" y1="-1.27" x2="-11.176" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="-11.176" y1="-1.27" x2="-11.176" y2="-2.032" width="0.1524" layer="51"/>
<wire x1="10.795" y1="-3.683" x2="5.715" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="10.795" y1="3.683" x2="10.795" y2="3.175" width="0.1524" layer="21"/>
<wire x1="10.795" y1="2.54" x2="5.715" y2="2.54" width="0.1524" layer="21"/>
<wire x1="10.795" y1="-3.683" x2="10.795" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="10.795" y1="-2.54" x2="5.715" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="5.715" y1="3.683" x2="10.795" y2="3.683" width="0.1524" layer="21"/>
<wire x1="5.715" y1="3.683" x2="5.715" y2="2.54" width="0.1524" layer="21"/>
<wire x1="10.795" y1="3.683" x2="11.43" y2="3.683" width="0.1524" layer="21"/>
<wire x1="11.43" y1="3.683" x2="11.43" y2="2.032" width="0.1524" layer="21"/>
<wire x1="11.176" y1="2.032" x2="11.176" y2="3.175" width="0.1524" layer="21"/>
<wire x1="11.176" y1="3.175" x2="10.795" y2="3.175" width="0.1524" layer="21"/>
<wire x1="10.795" y1="3.175" x2="10.795" y2="2.54" width="0.1524" layer="21"/>
<wire x1="5.715" y1="-2.54" x2="5.715" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="11.43" y1="2.032" x2="11.43" y2="1.27" width="0.1524" layer="51"/>
<wire x1="11.43" y1="1.27" x2="11.176" y2="1.27" width="0.1524" layer="51"/>
<wire x1="11.176" y1="1.27" x2="11.176" y2="2.032" width="0.1524" layer="51"/>
<wire x1="-5.207" y1="0" x2="5.207" y2="0" width="0.0508" layer="21"/>
<wire x1="13.081" y1="5.461" x2="13.081" y2="2.032" width="0.1524" layer="21"/>
<wire x1="13.081" y1="-2.032" x2="13.081" y2="2.032" width="0.1524" layer="51"/>
<wire x1="13.081" y1="-2.032" x2="13.081" y2="-5.461" width="0.1524" layer="21"/>
<wire x1="-13.081" y1="5.461" x2="-13.081" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-13.081" y1="-2.032" x2="-13.081" y2="2.032" width="0.1524" layer="51"/>
<wire x1="-13.081" y1="-2.032" x2="-13.081" y2="-5.461" width="0.1524" layer="21"/>
<pad name="1" x="-12.5222" y="0" drill="1.3208" diameter="2.54" shape="long" rot="R90"/>
<pad name="2" x="12.5222" y="0" drill="1.3208" diameter="2.54" shape="long" rot="R90"/>
<text x="-12.7" y="-7.62" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="-7.62" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-10.541" y1="-2.032" x2="-10.16" y2="2.032" layer="21"/>
<rectangle x1="-10.541" y1="1.905" x2="-9.652" y2="2.032" layer="21"/>
<rectangle x1="-10.541" y1="-2.032" x2="-9.652" y2="-1.905" layer="21"/>
<rectangle x1="-5.715" y1="-3.175" x2="-5.08" y2="-2.032" layer="21"/>
<rectangle x1="-5.715" y1="2.032" x2="-5.08" y2="3.175" layer="21"/>
<rectangle x1="-5.715" y1="-2.032" x2="-5.08" y2="2.032" layer="21"/>
<rectangle x1="10.16" y1="-2.032" x2="10.541" y2="2.032" layer="21"/>
<rectangle x1="9.652" y1="-2.032" x2="10.541" y2="-1.905" layer="21"/>
<rectangle x1="9.652" y1="1.905" x2="10.541" y2="2.032" layer="21"/>
<rectangle x1="5.08" y1="2.032" x2="5.715" y2="3.175" layer="21"/>
<rectangle x1="5.08" y1="-3.175" x2="5.715" y2="-2.032" layer="21"/>
<rectangle x1="5.08" y1="-2.032" x2="5.715" y2="2.032" layer="21"/>
<rectangle x1="-5.08" y1="2.159" x2="5.08" y2="2.667" layer="21"/>
<rectangle x1="-5.08" y1="-2.667" x2="5.08" y2="-2.159" layer="21"/>
<rectangle x1="5.715" y1="-2.032" x2="9.652" y2="-1.905" layer="21"/>
<rectangle x1="5.715" y1="1.905" x2="9.652" y2="2.032" layer="21"/>
<rectangle x1="-9.652" y1="1.905" x2="-5.715" y2="2.032" layer="21"/>
<rectangle x1="-9.652" y1="-2.032" x2="-5.715" y2="-1.905" layer="21"/>
<rectangle x1="-10.541" y1="-2.54" x2="-5.715" y2="-2.032" layer="21"/>
<rectangle x1="-10.541" y1="2.032" x2="-5.715" y2="2.54" layer="21"/>
<rectangle x1="5.715" y1="2.032" x2="10.541" y2="2.54" layer="21"/>
<rectangle x1="5.715" y1="-2.54" x2="10.541" y2="-2.032" layer="21"/>
</package>
<package name="SH32" urn="urn:adsk.eagle:footprint:14044/1">
<description>&lt;b&gt;FUSE HOLDER&lt;/b&gt;&lt;p&gt; 6 x 32 mm, SH contact, SHH3N Schukat / Wickmann 102071 (Buerklin)</description>
<wire x1="9.017" y1="3.81" x2="9.525" y2="3.81" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="3.556" x2="8.89" y2="3.556" width="0.1524" layer="21"/>
<wire x1="8.89" y1="3.556" x2="9.017" y2="3.556" width="0.1524" layer="21"/>
<wire x1="9.017" y1="-3.81" x2="9.017" y2="-3.556" width="0.1524" layer="21"/>
<wire x1="9.017" y1="-3.556" x2="8.89" y2="-3.556" width="0.1524" layer="21"/>
<wire x1="8.89" y1="-3.556" x2="-8.89" y2="-3.556" width="0.1524" layer="21"/>
<wire x1="9.017" y1="3.556" x2="9.017" y2="3.81" width="0.1524" layer="21"/>
<wire x1="9.525" y1="-3.81" x2="9.525" y2="-4.445" width="0.1524" layer="21"/>
<wire x1="9.525" y1="-3.81" x2="9.017" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="9.525" y1="-4.445" x2="16.764" y2="-4.445" width="0.1524" layer="21"/>
<wire x1="16.764" y1="4.445" x2="9.525" y2="4.445" width="0.1524" layer="21"/>
<wire x1="9.525" y1="3.81" x2="9.525" y2="4.445" width="0.1524" layer="21"/>
<wire x1="9.525" y1="-3.81" x2="9.525" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="9.525" y1="3.81" x2="9.525" y2="2.794" width="0.1524" layer="21"/>
<wire x1="9.525" y1="-2.794" x2="16.002" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="9.525" y1="2.794" x2="16.002" y2="2.794" width="0.1524" layer="21"/>
<wire x1="16.764" y1="-2.032" x2="16.764" y2="2.032" width="0.1524" layer="51"/>
<wire x1="16.002" y1="-2.032" x2="16.002" y2="2.032" width="0.1524" layer="51"/>
<wire x1="9.017" y1="-2.032" x2="9.017" y2="0" width="0.1524" layer="51"/>
<wire x1="16.764" y1="-2.032" x2="16.764" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="16.764" y1="-2.794" x2="16.764" y2="-4.445" width="0.1524" layer="21"/>
<wire x1="16.002" y1="-2.032" x2="16.002" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="16.002" y1="-2.794" x2="16.764" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="16.764" y1="4.445" x2="16.764" y2="2.794" width="0.1524" layer="21"/>
<wire x1="16.764" y1="2.794" x2="16.764" y2="2.032" width="0.1524" layer="21"/>
<wire x1="16.002" y1="2.032" x2="16.002" y2="2.794" width="0.1524" layer="21"/>
<wire x1="16.002" y1="2.794" x2="16.764" y2="2.794" width="0.1524" layer="21"/>
<wire x1="9.017" y1="2.032" x2="9.017" y2="3.556" width="0.1524" layer="21"/>
<wire x1="9.017" y1="-2.032" x2="9.017" y2="-3.556" width="0.1524" layer="21"/>
<wire x1="9.017" y1="0" x2="6.985" y2="0" width="0.0508" layer="51"/>
<wire x1="9.017" y1="0" x2="9.017" y2="2.032" width="0.1524" layer="51"/>
<wire x1="-9.017" y1="-3.81" x2="-9.525" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="8.89" y1="-3.556" x2="-9.017" y2="-3.556" width="0.1524" layer="21"/>
<wire x1="-9.017" y1="3.81" x2="-9.017" y2="3.556" width="0.1524" layer="21"/>
<wire x1="-9.017" y1="3.556" x2="8.89" y2="3.556" width="0.1524" layer="21"/>
<wire x1="-9.017" y1="-3.556" x2="-9.017" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="3.81" x2="-9.525" y2="4.445" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="3.81" x2="-9.017" y2="3.81" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="4.445" x2="-16.764" y2="4.445" width="0.1524" layer="21"/>
<wire x1="-16.764" y1="-4.445" x2="-9.525" y2="-4.445" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="-3.81" x2="-9.525" y2="-4.445" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="3.81" x2="-9.525" y2="2.794" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="-3.81" x2="-9.525" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="2.794" x2="-16.002" y2="2.794" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="-2.794" x2="-16.002" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="-16.764" y1="2.032" x2="-16.764" y2="-2.032" width="0.1524" layer="51"/>
<wire x1="-16.002" y1="2.032" x2="-16.002" y2="-2.032" width="0.1524" layer="51"/>
<wire x1="-9.017" y1="2.032" x2="-9.017" y2="0" width="0.1524" layer="51"/>
<wire x1="-16.764" y1="2.032" x2="-16.764" y2="2.794" width="0.1524" layer="21"/>
<wire x1="-16.764" y1="2.794" x2="-16.764" y2="4.445" width="0.1524" layer="21"/>
<wire x1="-16.002" y1="2.032" x2="-16.002" y2="2.794" width="0.1524" layer="21"/>
<wire x1="-16.002" y1="2.794" x2="-16.764" y2="2.794" width="0.1524" layer="21"/>
<wire x1="-16.764" y1="-4.445" x2="-16.764" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="-16.764" y1="-2.794" x2="-16.764" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-16.002" y1="-2.032" x2="-16.002" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="-16.002" y1="-2.794" x2="-16.764" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="-9.017" y1="-2.032" x2="-9.017" y2="-3.556" width="0.1524" layer="21"/>
<wire x1="-9.017" y1="2.032" x2="-9.017" y2="3.556" width="0.1524" layer="21"/>
<wire x1="-9.017" y1="0" x2="-6.985" y2="0" width="0.0508" layer="51"/>
<wire x1="-9.017" y1="0" x2="-9.017" y2="-2.032" width="0.1524" layer="51"/>
<wire x1="-6.985" y1="0" x2="6.985" y2="0" width="0.0508" layer="21"/>
<pad name="2B" x="16.764" y="0" drill="2.0066" shape="long" rot="R90"/>
<pad name="2A" x="9.144" y="0" drill="2.0066" shape="long" rot="R90"/>
<pad name="1A" x="-16.764" y="0" drill="2.0066" shape="long" rot="R90"/>
<pad name="1B" x="-9.144" y="0" drill="2.0066" shape="long" rot="R90"/>
<text x="-7.62" y="3.937" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-7.62" y="-5.334" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="9.017" y1="-3.81" x2="9.525" y2="-2.159" layer="21"/>
<rectangle x1="9.017" y1="2.159" x2="9.525" y2="3.81" layer="21"/>
<rectangle x1="9.017" y1="-2.159" x2="9.525" y2="2.159" layer="51"/>
<rectangle x1="-9.525" y1="-3.81" x2="-9.017" y2="-2.159" layer="21"/>
<rectangle x1="-9.525" y1="2.159" x2="-9.017" y2="3.81" layer="21"/>
<rectangle x1="-9.525" y1="-2.159" x2="-9.017" y2="2.159" layer="51"/>
</package>
<package name="SHK20L" urn="urn:adsk.eagle:footprint:14046/1">
<description>&lt;b&gt;FUSE HOLDER&lt;/b&gt;&lt;p&gt; 5 x 20 mm, SH contact, SHH1 Schukat / E1073 Buerklin</description>
<wire x1="-5.334" y1="2.921" x2="5.334" y2="2.921" width="0.0508" layer="21"/>
<wire x1="-3.302" y1="0" x2="3.302" y2="0" width="0.1524" layer="21"/>
<wire x1="-10.414" y1="3.683" x2="-5.969" y2="3.683" width="0.1524" layer="21"/>
<wire x1="-10.414" y1="-3.683" x2="-10.414" y2="-3.429" width="0.1524" layer="21"/>
<wire x1="-10.414" y1="-2.54" x2="-5.969" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-10.414" y1="3.683" x2="-10.414" y2="3.429" width="0.1524" layer="21"/>
<wire x1="-10.414" y1="2.54" x2="-5.969" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-5.969" y1="-3.683" x2="-10.414" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="-5.969" y1="-3.683" x2="-5.969" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-10.414" y1="-3.683" x2="-11.049" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="-11.049" y1="-3.683" x2="-11.049" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="-2.032" x2="-10.795" y2="-3.429" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="-3.429" x2="-10.414" y2="-3.429" width="0.1524" layer="21"/>
<wire x1="-10.414" y1="-3.429" x2="-10.414" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-5.969" y1="2.54" x2="-5.969" y2="3.683" width="0.1524" layer="21"/>
<wire x1="-11.049" y1="-2.032" x2="-11.049" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="-11.049" y1="-1.27" x2="-10.795" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="-10.795" y1="-1.27" x2="-10.795" y2="-2.032" width="0.1524" layer="51"/>
<wire x1="-3.302" y1="0" x2="-5.334" y2="0" width="0.1524" layer="51"/>
<wire x1="5.334" y1="-2.921" x2="-5.334" y2="-2.921" width="0.0508" layer="21"/>
<wire x1="10.414" y1="-3.683" x2="5.969" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="10.414" y1="3.683" x2="10.414" y2="3.429" width="0.1524" layer="21"/>
<wire x1="10.414" y1="2.54" x2="5.969" y2="2.54" width="0.1524" layer="21"/>
<wire x1="10.414" y1="-3.683" x2="10.414" y2="-3.429" width="0.1524" layer="21"/>
<wire x1="10.414" y1="-2.54" x2="5.969" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="5.969" y1="3.683" x2="10.414" y2="3.683" width="0.1524" layer="21"/>
<wire x1="5.969" y1="3.683" x2="5.969" y2="2.54" width="0.1524" layer="21"/>
<wire x1="10.414" y1="3.683" x2="11.049" y2="3.683" width="0.1524" layer="21"/>
<wire x1="11.049" y1="3.683" x2="11.049" y2="2.032" width="0.1524" layer="21"/>
<wire x1="10.795" y1="2.032" x2="10.795" y2="3.429" width="0.1524" layer="21"/>
<wire x1="10.795" y1="3.429" x2="10.414" y2="3.429" width="0.1524" layer="21"/>
<wire x1="10.414" y1="3.429" x2="10.414" y2="2.54" width="0.1524" layer="21"/>
<wire x1="5.969" y1="-2.54" x2="5.969" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="11.049" y1="2.032" x2="11.049" y2="1.27" width="0.1524" layer="51"/>
<wire x1="11.049" y1="1.27" x2="10.795" y2="1.27" width="0.1524" layer="51"/>
<wire x1="10.795" y1="1.27" x2="10.795" y2="2.032" width="0.1524" layer="51"/>
<wire x1="3.302" y1="0" x2="5.334" y2="0" width="0.1524" layer="51"/>
<wire x1="10.414" y1="-3.683" x2="11.049" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="11.049" y1="-2.032" x2="11.049" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="10.795" y1="-3.429" x2="10.795" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="10.795" y1="-3.429" x2="10.414" y2="-3.429" width="0.1524" layer="21"/>
<wire x1="10.414" y1="-3.429" x2="10.414" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="11.049" y1="1.27" x2="11.049" y2="-2.032" width="0.1524" layer="51"/>
<wire x1="10.795" y1="1.27" x2="10.795" y2="-2.032" width="0.1524" layer="51"/>
<wire x1="-10.795" y1="2.032" x2="-10.795" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="-11.049" y1="2.032" x2="-11.049" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="-10.414" y1="3.683" x2="-11.049" y2="3.683" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="3.429" x2="-10.414" y2="3.429" width="0.1524" layer="21"/>
<wire x1="-10.414" y1="3.429" x2="-10.414" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="3.429" x2="-10.795" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-11.049" y1="2.032" x2="-11.049" y2="3.683" width="0.1524" layer="21"/>
<pad name="1A" x="-10.414" y="0" drill="1.3208" diameter="2.54" shape="long" rot="R90"/>
<pad name="2A" x="10.414" y="0" drill="1.3208" diameter="2.54" shape="long" rot="R90"/>
<pad name="2B" x="5.334" y="0" drill="1.3208" diameter="2.54" shape="long" rot="R90"/>
<pad name="1B" x="-5.334" y="0" drill="1.3208" diameter="2.54" shape="long" rot="R90"/>
<text x="-3.81" y="3.175" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.81" y="-5.08" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-10.033" y1="-2.032" x2="-9.652" y2="2.032" layer="51"/>
<rectangle x1="-5.969" y1="-3.175" x2="-5.334" y2="-2.032" layer="21"/>
<rectangle x1="-5.969" y1="2.032" x2="-5.334" y2="3.175" layer="21"/>
<rectangle x1="-5.969" y1="-2.032" x2="-5.334" y2="2.032" layer="51"/>
<rectangle x1="9.652" y1="-2.032" x2="10.033" y2="2.032" layer="51"/>
<rectangle x1="5.334" y1="2.032" x2="5.969" y2="3.175" layer="21"/>
<rectangle x1="5.334" y1="-3.175" x2="5.969" y2="-2.032" layer="21"/>
<rectangle x1="5.334" y1="-2.032" x2="5.969" y2="2.032" layer="51"/>
<rectangle x1="4.064" y1="1.651" x2="5.334" y2="2.159" layer="51"/>
<rectangle x1="4.064" y1="-2.159" x2="5.334" y2="-1.651" layer="51"/>
<rectangle x1="-5.334" y1="1.651" x2="-4.064" y2="2.159" layer="51"/>
<rectangle x1="-5.334" y1="-2.159" x2="-4.064" y2="-1.651" layer="51"/>
<rectangle x1="-10.414" y1="-2.54" x2="-5.969" y2="-2.032" layer="21"/>
<rectangle x1="-4.064" y1="-2.159" x2="4.064" y2="-1.651" layer="21"/>
<rectangle x1="-4.064" y1="1.651" x2="4.064" y2="2.159" layer="21"/>
<rectangle x1="-6.223" y1="1.905" x2="-5.969" y2="2.032" layer="51"/>
<rectangle x1="5.969" y1="1.905" x2="6.223" y2="2.032" layer="51"/>
<rectangle x1="5.969" y1="-2.032" x2="6.223" y2="-1.905" layer="51"/>
<rectangle x1="9.398" y1="1.905" x2="9.652" y2="2.032" layer="51"/>
<rectangle x1="9.398" y1="-2.032" x2="9.652" y2="-1.905" layer="51"/>
<rectangle x1="6.223" y1="-2.032" x2="9.398" y2="-1.905" layer="21"/>
<rectangle x1="6.223" y1="1.905" x2="9.398" y2="2.032" layer="21"/>
<rectangle x1="5.969" y1="2.032" x2="10.033" y2="2.54" layer="21"/>
<rectangle x1="5.969" y1="-2.54" x2="10.033" y2="-2.032" layer="21"/>
<rectangle x1="-10.033" y1="2.032" x2="-5.969" y2="2.54" layer="21"/>
<rectangle x1="-9.398" y1="1.905" x2="-6.223" y2="2.032" layer="21"/>
<rectangle x1="-9.652" y1="1.905" x2="-9.398" y2="2.032" layer="51"/>
<rectangle x1="-6.223" y1="-2.032" x2="-5.969" y2="-1.905" layer="51"/>
<rectangle x1="-9.398" y1="-2.032" x2="-6.223" y2="-1.905" layer="21"/>
<rectangle x1="-9.652" y1="-2.032" x2="-9.398" y2="-1.905" layer="51"/>
</package>
<package name="SHK20Q" urn="urn:adsk.eagle:footprint:14047/1">
<description>&lt;b&gt;FUSE HOLDER&lt;/b&gt;&lt;p&gt; 5 x 20 mm, SH contact, E1207 Buerklin 46G6061</description>
<wire x1="-5.08" y1="2.921" x2="5.08" y2="2.921" width="0.0508" layer="21"/>
<wire x1="-9.652" y1="3.683" x2="-6.096" y2="3.683" width="0.1524" layer="51"/>
<wire x1="-10.414" y1="-3.683" x2="-10.414" y2="-3.429" width="0.1524" layer="21"/>
<wire x1="-10.414" y1="3.683" x2="-10.414" y2="3.429" width="0.1524" layer="21"/>
<wire x1="-9.906" y1="2.54" x2="-5.842" y2="2.54" width="0.1524" layer="51"/>
<wire x1="-6.096" y1="-3.683" x2="-9.652" y2="-3.683" width="0.1524" layer="51"/>
<wire x1="-5.842" y1="-3.683" x2="-5.842" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-10.414" y1="-3.683" x2="-11.049" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="-3.429" x2="-10.414" y2="-3.429" width="0.1524" layer="21"/>
<wire x1="-10.414" y1="-3.429" x2="-10.414" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-5.842" y1="2.54" x2="-5.842" y2="3.683" width="0.1524" layer="21"/>
<wire x1="-11.049" y1="-3.683" x2="-11.049" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-11.049" y1="0.889" x2="-10.795" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="0.889" x2="-10.795" y2="-3.429" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0" x2="-5.08" y2="0" width="0.0508" layer="21"/>
<wire x1="5.08" y1="-2.921" x2="-5.08" y2="-2.921" width="0.0508" layer="21"/>
<wire x1="9.652" y1="-3.683" x2="6.096" y2="-3.683" width="0.1524" layer="51"/>
<wire x1="10.414" y1="3.683" x2="10.414" y2="3.429" width="0.1524" layer="21"/>
<wire x1="9.906" y1="2.54" x2="5.842" y2="2.54" width="0.1524" layer="51"/>
<wire x1="10.414" y1="-3.683" x2="10.414" y2="-3.429" width="0.1524" layer="21"/>
<wire x1="9.906" y1="-2.54" x2="5.842" y2="-2.54" width="0.1524" layer="51"/>
<wire x1="6.096" y1="3.683" x2="9.652" y2="3.683" width="0.1524" layer="51"/>
<wire x1="5.842" y1="3.683" x2="5.842" y2="2.54" width="0.1524" layer="21"/>
<wire x1="10.414" y1="3.683" x2="11.049" y2="3.683" width="0.1524" layer="21"/>
<wire x1="10.795" y1="3.429" x2="10.414" y2="3.429" width="0.1524" layer="21"/>
<wire x1="10.414" y1="3.429" x2="10.414" y2="2.54" width="0.1524" layer="21"/>
<wire x1="5.842" y1="-2.54" x2="5.842" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="10.414" y1="-3.683" x2="11.049" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="10.795" y1="-3.429" x2="10.414" y2="-3.429" width="0.1524" layer="21"/>
<wire x1="10.414" y1="-3.429" x2="10.414" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="10.795" y1="-3.429" x2="10.795" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="11.049" y1="3.683" x2="11.049" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="-10.414" y1="3.683" x2="-11.049" y2="3.683" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="3.429" x2="-10.414" y2="3.429" width="0.1524" layer="21"/>
<wire x1="-10.414" y1="3.429" x2="-10.414" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-10.414" y1="2.54" x2="-10.414" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="3.429" x2="-10.795" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-11.049" y1="0.889" x2="-11.049" y2="3.683" width="0.1524" layer="21"/>
<wire x1="10.795" y1="-0.889" x2="11.049" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="10.795" y1="-0.889" x2="10.795" y2="3.429" width="0.1524" layer="21"/>
<wire x1="11.049" y1="-0.889" x2="11.049" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="9.906" y1="2.54" x2="10.414" y2="2.54" width="0.1524" layer="21"/>
<wire x1="9.652" y1="3.683" x2="10.414" y2="3.683" width="0.1524" layer="21"/>
<wire x1="6.096" y1="3.683" x2="5.842" y2="3.683" width="0.1524" layer="21"/>
<wire x1="6.096" y1="-3.683" x2="5.842" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="9.652" y1="-3.683" x2="10.414" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="9.906" y1="-2.54" x2="10.414" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="10.414" y1="-2.54" x2="10.414" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-6.096" y1="-3.683" x2="-5.842" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="-9.652" y1="-3.683" x2="-10.414" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="-9.906" y1="-2.54" x2="-10.414" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-10.414" y1="2.54" x2="-9.906" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-10.414" y1="3.683" x2="-9.652" y2="3.683" width="0.1524" layer="21"/>
<wire x1="-6.096" y1="3.683" x2="-5.842" y2="3.683" width="0.1524" layer="21"/>
<wire x1="-9.906" y1="-2.54" x2="-5.842" y2="-2.54" width="0.1524" layer="51"/>
<pad name="1A" x="-7.874" y="2.54" drill="1.5" diameter="3.81" shape="octagon"/>
<pad name="2A" x="7.874" y="2.54" drill="1.5" diameter="3.81" shape="octagon"/>
<pad name="2B" x="7.874" y="-2.54" drill="1.5" diameter="3.81" shape="octagon"/>
<pad name="1B" x="-7.874" y="-2.54" drill="1.5" diameter="3.81" shape="octagon"/>
<text x="-3.81" y="-5.08" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<text x="-3.81" y="3.302" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<rectangle x1="-5.08" y1="1.651" x2="5.08" y2="2.159" layer="21"/>
<rectangle x1="-5.08" y1="-2.159" x2="5.08" y2="-1.651" layer="21"/>
<rectangle x1="5.08" y1="-3.175" x2="5.588" y2="3.175" layer="21"/>
<rectangle x1="10.795" y1="-0.889" x2="11.049" y2="3.683" layer="21"/>
<rectangle x1="-10.795" y1="-3.683" x2="-10.414" y2="-3.429" layer="21"/>
<rectangle x1="-5.588" y1="-3.175" x2="-5.08" y2="3.175" layer="21"/>
<rectangle x1="-11.049" y1="-3.683" x2="-10.795" y2="0.889" layer="21"/>
<rectangle x1="5.588" y1="-3.175" x2="5.842" y2="-2.159" layer="21"/>
<rectangle x1="5.588" y1="2.159" x2="5.842" y2="3.175" layer="21"/>
<rectangle x1="9.906" y1="-2.54" x2="10.16" y2="2.54" layer="21"/>
<rectangle x1="5.842" y1="-2.54" x2="9.906" y2="-2.159" layer="51"/>
<rectangle x1="5.842" y1="2.159" x2="9.906" y2="2.54" layer="51"/>
<rectangle x1="-10.16" y1="-2.54" x2="-9.906" y2="2.54" layer="21"/>
<rectangle x1="-9.906" y1="2.159" x2="-5.842" y2="2.54" layer="51"/>
<rectangle x1="-5.842" y1="2.159" x2="-5.588" y2="3.175" layer="21"/>
<rectangle x1="-9.906" y1="-2.54" x2="-5.842" y2="-2.159" layer="51"/>
<rectangle x1="-5.842" y1="-3.175" x2="-5.588" y2="-2.159" layer="21"/>
</package>
<package name="SHKOG" urn="urn:adsk.eagle:footprint:14048/1">
<description>&lt;b&gt;FUSE HOLDER&lt;/b&gt;&lt;p&gt; 5 x 20/6 x 32 mm, SH contact, OG 46G6083 Buerklin</description>
<wire x1="-3.048" y1="0" x2="-5.08" y2="0" width="0.0508" layer="51"/>
<wire x1="9.144" y1="-3.683" x2="5.969" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="5.969" y1="3.683" x2="9.144" y2="3.683" width="0.1524" layer="21"/>
<wire x1="5.969" y1="3.683" x2="5.969" y2="2.54" width="0.1524" layer="21"/>
<wire x1="5.969" y1="-2.54" x2="5.969" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0" x2="5.08" y2="0" width="0.0508" layer="21"/>
<wire x1="17.78" y1="3.683" x2="12.192" y2="3.683" width="0.1524" layer="21"/>
<wire x1="17.78" y1="-3.683" x2="12.192" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="17.78" y1="3.683" x2="17.78" y2="2.54" width="0.1524" layer="21"/>
<wire x1="9.144" y1="-3.683" x2="11.049" y2="-3.683" width="0.1524" layer="51"/>
<wire x1="9.144" y1="3.683" x2="11.049" y2="3.683" width="0.1524" layer="51"/>
<wire x1="8.636" y1="-2.54" x2="5.969" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="8.636" y1="-2.54" x2="11.049" y2="-2.54" width="0.1524" layer="51"/>
<wire x1="12.192" y1="-2.54" x2="17.78" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="17.78" y1="-2.54" x2="17.78" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="17.78" y1="2.54" x2="12.192" y2="2.54" width="0.1524" layer="21"/>
<wire x1="17.78" y1="2.54" x2="17.78" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="12.192" y1="2.54" x2="11.049" y2="2.54" width="0.1524" layer="51"/>
<wire x1="8.636" y1="2.54" x2="5.969" y2="2.54" width="0.1524" layer="21"/>
<wire x1="12.192" y1="-1.397" x2="12.192" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="12.192" y1="-3.683" x2="11.684" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="12.192" y1="1.397" x2="12.192" y2="3.683" width="0.1524" layer="21"/>
<wire x1="12.192" y1="3.683" x2="11.684" y2="3.683" width="0.1524" layer="21"/>
<wire x1="12.192" y1="1.397" x2="11.684" y2="1.397" width="0.1524" layer="21"/>
<wire x1="12.192" y1="-1.397" x2="11.684" y2="-1.397" width="0.1524" layer="21"/>
<wire x1="11.684" y1="-1.397" x2="11.049" y2="-1.397" width="0.1524" layer="51"/>
<wire x1="11.049" y1="-2.54" x2="11.049" y2="-1.397" width="0.1524" layer="51"/>
<wire x1="11.049" y1="-2.54" x2="12.192" y2="-2.54" width="0.1524" layer="51"/>
<wire x1="11.684" y1="1.397" x2="11.049" y2="1.397" width="0.1524" layer="51"/>
<wire x1="11.049" y1="2.54" x2="11.049" y2="1.397" width="0.1524" layer="51"/>
<wire x1="11.049" y1="2.54" x2="8.636" y2="2.54" width="0.1524" layer="51"/>
<wire x1="11.049" y1="-2.54" x2="11.049" y2="-3.683" width="0.1524" layer="51"/>
<wire x1="11.049" y1="-3.683" x2="11.684" y2="-3.683" width="0.1524" layer="51"/>
<wire x1="11.049" y1="2.54" x2="11.049" y2="3.683" width="0.1524" layer="51"/>
<wire x1="11.049" y1="3.683" x2="11.684" y2="3.683" width="0.1524" layer="51"/>
<wire x1="5.08" y1="-2.921" x2="-5.08" y2="-2.921" width="0.0508" layer="21"/>
<wire x1="-5.08" y1="2.921" x2="5.08" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-9.144" y1="3.683" x2="-5.969" y2="3.683" width="0.1524" layer="21"/>
<wire x1="-5.969" y1="-3.683" x2="-9.144" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="-5.969" y1="-3.683" x2="-5.969" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-5.969" y1="2.54" x2="-5.969" y2="3.683" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-3.683" x2="-12.192" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="3.683" x2="-12.192" y2="3.683" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-3.683" x2="-17.78" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-9.144" y1="3.683" x2="-11.049" y2="3.683" width="0.1524" layer="51"/>
<wire x1="-9.144" y1="-3.683" x2="-11.049" y2="-3.683" width="0.1524" layer="51"/>
<wire x1="-8.636" y1="2.54" x2="-5.969" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-8.636" y1="2.54" x2="-11.049" y2="2.54" width="0.1524" layer="51"/>
<wire x1="-12.192" y1="2.54" x2="-17.78" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="2.54" x2="-17.78" y2="3.683" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-2.54" x2="-12.192" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-2.54" x2="-17.78" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-12.192" y1="-2.54" x2="-11.049" y2="-2.54" width="0.1524" layer="51"/>
<wire x1="-8.636" y1="-2.54" x2="-5.969" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-12.192" y1="1.397" x2="-12.192" y2="3.683" width="0.1524" layer="21"/>
<wire x1="-12.192" y1="3.683" x2="-11.684" y2="3.683" width="0.1524" layer="21"/>
<wire x1="-12.192" y1="-1.397" x2="-12.192" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="-12.192" y1="-3.683" x2="-11.684" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="-12.192" y1="-1.397" x2="-11.684" y2="-1.397" width="0.1524" layer="21"/>
<wire x1="-12.192" y1="1.397" x2="-11.684" y2="1.397" width="0.1524" layer="21"/>
<wire x1="-11.684" y1="1.397" x2="-11.049" y2="1.397" width="0.1524" layer="51"/>
<wire x1="-11.049" y1="2.54" x2="-11.049" y2="1.397" width="0.1524" layer="51"/>
<wire x1="-11.049" y1="2.54" x2="-12.192" y2="2.54" width="0.1524" layer="51"/>
<wire x1="-11.684" y1="-1.397" x2="-11.049" y2="-1.397" width="0.1524" layer="51"/>
<wire x1="-11.049" y1="-2.54" x2="-11.049" y2="-1.397" width="0.1524" layer="51"/>
<wire x1="-11.049" y1="-2.54" x2="-8.636" y2="-2.54" width="0.1524" layer="51"/>
<wire x1="-11.049" y1="2.54" x2="-11.049" y2="3.683" width="0.1524" layer="51"/>
<wire x1="-11.049" y1="3.683" x2="-11.684" y2="3.683" width="0.1524" layer="51"/>
<wire x1="-11.049" y1="-2.54" x2="-11.049" y2="-3.683" width="0.1524" layer="51"/>
<wire x1="-11.049" y1="-3.683" x2="-11.684" y2="-3.683" width="0.1524" layer="51"/>
<pad name="2B" x="10.414" y="-2.54" drill="1.3208" diameter="2.54" shape="long"/>
<pad name="2A" x="10.414" y="2.54" drill="1.3208" diameter="2.54" shape="long"/>
<pad name="1A" x="-10.414" y="2.54" drill="1.3208" diameter="2.54" shape="long"/>
<pad name="1B" x="-10.414" y="-2.54" drill="1.3208" diameter="2.54" shape="long"/>
<text x="-3.81" y="3.175" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.81" y="-5.08" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="16.637" y1="-2.54" x2="17.78" y2="-1.397" layer="21"/>
<rectangle x1="16.637" y1="1.397" x2="17.78" y2="2.54" layer="21"/>
<rectangle x1="11.049" y1="-2.54" x2="12.192" y2="-1.397" layer="51"/>
<rectangle x1="11.049" y1="1.397" x2="12.192" y2="2.54" layer="51"/>
<rectangle x1="5.715" y1="-2.54" x2="8.509" y2="-1.905" layer="21"/>
<rectangle x1="8.509" y1="-2.54" x2="10.16" y2="-1.905" layer="51"/>
<rectangle x1="5.715" y1="1.905" x2="8.509" y2="2.54" layer="21"/>
<rectangle x1="8.509" y1="1.905" x2="10.16" y2="2.54" layer="51"/>
<rectangle x1="-5.08" y1="-2.159" x2="5.08" y2="-1.651" layer="21"/>
<rectangle x1="-5.08" y1="1.651" x2="5.08" y2="2.159" layer="21"/>
<rectangle x1="-17.78" y1="1.397" x2="-16.637" y2="2.54" layer="21"/>
<rectangle x1="-17.78" y1="-2.54" x2="-16.637" y2="-1.397" layer="21"/>
<rectangle x1="-12.192" y1="1.397" x2="-11.049" y2="2.54" layer="51"/>
<rectangle x1="-12.192" y1="-2.54" x2="-11.049" y2="-1.397" layer="51"/>
<rectangle x1="-8.509" y1="1.905" x2="-5.715" y2="2.54" layer="21"/>
<rectangle x1="-10.16" y1="1.905" x2="-8.509" y2="2.54" layer="51"/>
<rectangle x1="-8.509" y1="-2.54" x2="-5.715" y2="-1.905" layer="21"/>
<rectangle x1="-10.16" y1="-2.54" x2="-8.509" y2="-1.905" layer="51"/>
<rectangle x1="-5.08" y1="1.651" x2="5.08" y2="2.159" layer="21"/>
<rectangle x1="-5.08" y1="-2.159" x2="5.08" y2="-1.651" layer="21"/>
<rectangle x1="9.779" y1="-0.889" x2="10.16" y2="0.889" layer="21"/>
<rectangle x1="9.779" y1="0.889" x2="10.16" y2="1.905" layer="51"/>
<rectangle x1="9.779" y1="-1.905" x2="10.16" y2="-0.889" layer="51"/>
<rectangle x1="-10.16" y1="-0.889" x2="-9.779" y2="0.889" layer="21"/>
<rectangle x1="-10.16" y1="0.889" x2="-9.779" y2="1.905" layer="51"/>
<rectangle x1="-10.16" y1="-1.905" x2="-9.779" y2="-0.889" layer="51"/>
<rectangle x1="5.08" y1="-3.175" x2="5.969" y2="3.175" layer="21"/>
<rectangle x1="-5.969" y1="-3.175" x2="-5.08" y2="3.175" layer="21"/>
</package>
<package name="TE5" urn="urn:adsk.eagle:footprint:14038/1">
<description>&lt;b&gt;FUSE&lt;/b&gt;&lt;p&gt;
Wickmann</description>
<wire x1="3.683" y1="2.032" x2="4.318" y2="1.397" width="0.1524" layer="21" curve="-90"/>
<wire x1="3.683" y1="-2.032" x2="4.318" y2="-1.397" width="0.1524" layer="21" curve="90"/>
<wire x1="-4.318" y1="-1.397" x2="-3.683" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="-4.318" y1="1.397" x2="-3.683" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="3.683" y1="2.032" x2="-3.683" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-4.318" y1="1.397" x2="-4.318" y2="-1.397" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="-2.032" x2="3.683" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="4.318" y1="-1.397" x2="4.318" y2="1.397" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="0" x2="2.159" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.27" y1="0.381" x2="-1.27" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-1.27" y1="-0.381" x2="1.27" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="1.27" y1="0.381" x2="1.27" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="1.27" y1="0.381" x2="-1.27" y2="0.381" width="0.1524" layer="51"/>
<pad name="1" x="-2.54" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="2.54" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-4.191" y="2.54" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-4.318" y="-3.81" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="TR5" urn="urn:adsk.eagle:footprint:14034/1">
<description>&lt;b&gt;FUSE&lt;/b&gt;&lt;p&gt;
Wickmann</description>
<wire x1="-2.159" y1="0" x2="2.159" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.27" y1="0.381" x2="-1.27" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-1.27" y1="-0.381" x2="1.27" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="1.27" y1="0.381" x2="1.27" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="1.27" y1="0.381" x2="-1.27" y2="0.381" width="0.1524" layer="51"/>
<circle x="0" y="0" radius="4.318" width="0.1524" layer="21"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" diameter="1.778" shape="long" rot="R90"/>
<pad name="2" x="2.54" y="0" drill="0.8128" diameter="1.778" shape="long" rot="R90"/>
<text x="-2.54" y="5.08" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.54" y="-2.54" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
</packages>
<packages3d>
<package3d name="FUSE_HOLDER_5X20MM" urn="urn:adsk.eagle:package:14079/1" type="box">
<description>Fuse Holder 5x20 mm
Source: User LBR Version 2.05</description>
<packageinstances>
<packageinstance name="FUSE_HOLDER_5X20MM"/>
</packageinstances>
</package3d>
<package3d name="19559" urn="urn:adsk.eagle:package:14056/1" type="box">
<description>FUSE HOLDER
TR5 Fuse Holder Wickmann</description>
<packageinstances>
<packageinstance name="19559"/>
</packageinstances>
</package3d>
<package3d name="19560" urn="urn:adsk.eagle:package:14057/1" type="box">
<description>FUSE HOLDER
TR5 Fuse Holder Wickmann</description>
<packageinstances>
<packageinstance name="19560"/>
</packageinstances>
</package3d>
<package3d name="F456" urn="urn:adsk.eagle:package:14063/1" type="box">
<description>FUSE HOLDER
CS Schukat</description>
<packageinstances>
<packageinstance name="F456"/>
</packageinstances>
</package3d>
<package3d name="F457" urn="urn:adsk.eagle:package:14076/1" type="box">
<description>FUSE HOLDER
CS Schukat</description>
<packageinstances>
<packageinstance name="F457"/>
</packageinstances>
</package3d>
<package3d name="FUSE_HOLDER_MENTOR-1821" urn="urn:adsk.eagle:package:14077/1" type="box">
<description>Fuse Holder 5x20 mm Manufacturer: MENTOR Type: 1821
Distributor: Bürklin 46 G 6111
Source: User LBR Version 2.05</description>
<packageinstances>
<packageinstance name="FUSE_HOLDER_MENTOR-1821"/>
</packageinstances>
</package3d>
<package3d name="FUSE_HOLDER_SCHURTER-FAS" urn="urn:adsk.eagle:package:14080/1" type="box">
<description>Fuse holder 5x20 mm Manufacturer: SCHURTER Type: FAS
Distributor: Bürklin 46 G 611
Source: User LBR Version 2.05</description>
<packageinstances>
<packageinstance name="FUSE_HOLDER_SCHURTER-FAS"/>
</packageinstances>
</package3d>
<package3d name="FUSE_HOLDER_WICKMANN-19596" urn="urn:adsk.eagle:package:14078/1" type="box">
<description>Fuse holder 5x20 mm Manufacturer: WICKMANN Type: 19596
Distributor: Bürklin 46 G 612
Source: User LBR Version 2.05</description>
<packageinstances>
<packageinstance name="FUSE_HOLDER_WICKMANN-19596"/>
</packageinstances>
</package3d>
<package3d name="GSH15" urn="urn:adsk.eagle:package:14065/1" type="box">
<description>FUSE HOLDER
grid 15mm, 19649 Wickmann</description>
<packageinstances>
<packageinstance name="GSH15"/>
</packageinstances>
</package3d>
<package3d name="KS10H" urn="urn:adsk.eagle:package:14058/1" type="box">
<description>FUSE HOLDER
CS Schukat</description>
<packageinstances>
<packageinstance name="KS10H"/>
</packageinstances>
</package3d>
<package3d name="KS16" urn="urn:adsk.eagle:package:14060/1" type="box">
<description>FUSE HOLDER
CS Schukat</description>
<packageinstances>
<packageinstance name="KS16"/>
</packageinstances>
</package3d>
<package3d name="KS17" urn="urn:adsk.eagle:package:14067/1" type="box">
<description>FUSE HOLDER
CS Schukat</description>
<packageinstances>
<packageinstance name="KS17"/>
</packageinstances>
</package3d>
<package3d name="KS9V" urn="urn:adsk.eagle:package:14075/1" type="box">
<description>FUSE HOLDER
CS Schukat</description>
<packageinstances>
<packageinstance name="KS9V"/>
</packageinstances>
</package3d>
<package3d name="LITTLEFUSE" urn="urn:adsk.eagle:package:14064/1" type="box">
<description>LITTLEFUSE
Picofuse/slow Littelfuse</description>
<packageinstances>
<packageinstance name="LITTLEFUSE"/>
</packageinstances>
</package3d>
<package3d name="PICOFUSE" urn="urn:adsk.eagle:package:14074/1" type="box">
<description>PICOFUSE
Picofuse, 19275 Wickmann</description>
<packageinstances>
<packageinstance name="PICOFUSE"/>
</packageinstances>
</package3d>
<package3d name="SH22" urn="urn:adsk.eagle:package:14062/1" type="box">
<description>FUSE HOLDER
CS PFP30, Schukat</description>
<packageinstances>
<packageinstance name="SH22"/>
</packageinstances>
</package3d>
<package3d name="SH22,5" urn="urn:adsk.eagle:package:14059/1" type="box">
<description>FUSE HOLDER grid 22,5 mm, OGN0031 8201 Schurter (Buerklin)</description>
<packageinstances>
<packageinstance name="SH22,5"/>
</packageinstances>
</package3d>
<package3d name="SH22,5A" urn="urn:adsk.eagle:package:14070/1" type="box">
<description>FUSE HOLDER grid 22,5 mm, isolated cap OGN0031 8201 Schurter (Buerklin)</description>
<packageinstances>
<packageinstance name="SH22,5A"/>
</packageinstances>
</package3d>
<package3d name="SH25" urn="urn:adsk.eagle:package:14066/1" type="box">
<description>FUSE HOLDER grid 2,5 mm,  OGN0031 8211 Schurter (Buerklin)</description>
<packageinstances>
<packageinstance name="SH25"/>
</packageinstances>
</package3d>
<package3d name="SH32" urn="urn:adsk.eagle:package:14068/1" type="box">
<description>FUSE HOLDER 6 x 32 mm, SH contact, SHH3N Schukat / Wickmann 102071 (Buerklin)</description>
<packageinstances>
<packageinstance name="SH32"/>
</packageinstances>
</package3d>
<package3d name="SHK20L" urn="urn:adsk.eagle:package:14071/1" type="box">
<description>FUSE HOLDER 5 x 20 mm, SH contact, SHH1 Schukat / E1073 Buerklin</description>
<packageinstances>
<packageinstance name="SHK20L"/>
</packageinstances>
</package3d>
<package3d name="SHK20Q" urn="urn:adsk.eagle:package:14073/1" type="box">
<description>FUSE HOLDER 5 x 20 mm, SH contact, E1207 Buerklin 46G6061</description>
<packageinstances>
<packageinstance name="SHK20Q"/>
</packageinstances>
</package3d>
<package3d name="SHKOG" urn="urn:adsk.eagle:package:14072/1" type="box">
<description>FUSE HOLDER 5 x 20/6 x 32 mm, SH contact, OG 46G6083 Buerklin</description>
<packageinstances>
<packageinstance name="SHKOG"/>
</packageinstances>
</package3d>
<package3d name="TE5" urn="urn:adsk.eagle:package:14069/1" type="box">
<description>FUSE
Wickmann</description>
<packageinstances>
<packageinstance name="TE5"/>
</packageinstances>
</package3d>
<package3d name="TR5" urn="urn:adsk.eagle:package:14061/1" type="box">
<description>FUSE
Wickmann</description>
<packageinstances>
<packageinstance name="TR5"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="FUSE">
<wire x1="-3.81" y1="-0.762" x2="3.81" y2="-0.762" width="0.254" layer="94"/>
<wire x1="3.81" y1="0.762" x2="-3.81" y2="0.762" width="0.254" layer="94"/>
<wire x1="3.81" y1="-0.762" x2="3.81" y2="0.762" width="0.254" layer="94"/>
<wire x1="-3.81" y1="0.762" x2="-3.81" y2="-0.762" width="0.254" layer="94"/>
<wire x1="-2.54" y1="0" x2="2.54" y2="0" width="0.1524" layer="94"/>
<text x="-3.81" y="1.397" size="1.778" layer="95">&gt;NAME</text>
<text x="-3.81" y="-2.921" size="1.778" layer="96">&gt;VALUE</text>
<pin name="2" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="FUSE" prefix="F">
<description>&lt;b&gt;Fuse&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="FUSE" x="0" y="0"/>
</gates>
<devices>
<device name="19559" package="19559">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:14056/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="55900000001" constant="no"/>
<attribute name="OC_FARNELL" value="9516360" constant="no"/>
<attribute name="OC_NEWARK" value="02P0286" constant="no"/>
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="19560" package="19560">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:14057/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="56000001009" constant="no"/>
<attribute name="OC_FARNELL" value="1185363" constant="no"/>
<attribute name="OC_NEWARK" value="98K6125" constant="no"/>
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="F456" package="F456">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:14063/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="F457" package="F457">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:14076/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="BLANK_5X20MM" package="FUSE_HOLDER_5X20MM">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:14079/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
<attribute name="POPULARITY" value="4" constant="no"/>
</technology>
</technologies>
</device>
<device name="1821" package="FUSE_HOLDER_MENTOR-1821">
<connects>
<connect gate="G$1" pin="1" pad="A"/>
<connect gate="G$1" pin="2" pad="B"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:14077/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
<attribute name="POPULARITY" value="1" constant="no"/>
</technology>
</technologies>
</device>
<device name="FAS" package="FUSE_HOLDER_SCHURTER-FAS">
<connects>
<connect gate="G$1" pin="1" pad="A"/>
<connect gate="G$1" pin="2" pad="B"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:14080/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="0031.3501" constant="no"/>
<attribute name="OC_FARNELL" value="1214778" constant="no"/>
<attribute name="OC_NEWARK" value="98K4273" constant="no"/>
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="19596" package="FUSE_HOLDER_WICKMANN-19596">
<connects>
<connect gate="G$1" pin="1" pad="A"/>
<connect gate="G$1" pin="2" pad="B"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:14078/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="1271669" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="GSH15" package="GSH15">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:14065/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="KS10H" package="KS10H">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:14058/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="KS16" package="KS16">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:14060/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="KS17" package="KS17">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:14067/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="KS9V" package="KS9V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:14075/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="LITTLEFUSE" package="LITTLEFUSE">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:14064/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
<attribute name="POPULARITY" value="1" constant="no"/>
</technology>
</technologies>
</device>
<device name="PICOFUSE" package="PICOFUSE">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:14074/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
<attribute name="POPULARITY" value="1" constant="no"/>
</technology>
</technologies>
</device>
<device name="SH22" package="SH22">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:14062/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="SH22,5" package="SH22,5">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:14059/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
<attribute name="POPULARITY" value="8" constant="no"/>
</technology>
</technologies>
</device>
<device name="SH22,5A" package="SH22,5A">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:14070/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="SH35" package="SH25">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:14066/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="SH32" package="SH32">
<connects>
<connect gate="G$1" pin="1" pad="1A"/>
<connect gate="G$1" pin="2" pad="2A"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:14068/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="SHK20L" package="SHK20L">
<connects>
<connect gate="G$1" pin="1" pad="1A"/>
<connect gate="G$1" pin="2" pad="2A"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:14071/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
<attribute name="POPULARITY" value="2" constant="no"/>
</technology>
</technologies>
</device>
<device name="SHK20Q" package="SHK20Q">
<connects>
<connect gate="G$1" pin="1" pad="1A"/>
<connect gate="G$1" pin="2" pad="2A"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:14073/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="SHKOG" package="SHKOG">
<connects>
<connect gate="G$1" pin="1" pad="1A"/>
<connect gate="G$1" pin="2" pad="2A"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:14072/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="TE5" package="TE5">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:14069/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="TR5" package="TR5">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:14061/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
<attribute name="POPULARITY" value="1" constant="no"/>
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
<part name="U$1" library="ESP32-DEVKITV1" deviceset="ESP32DEVKITV1" device=""/>
<part name="HLK1" library="HLK-PM01" deviceset="HLK-PM01" device="3W"/>
<part name="220V" library="con-wago-500" deviceset="W237-102" device="" package3d_urn="urn:adsk.eagle:package:10688/1"/>
<part name="RELAY1" library="con-wago-500" deviceset="W237-102" device="" package3d_urn="urn:adsk.eagle:package:10688/1"/>
<part name="RELAY2" library="con-wago-500" deviceset="W237-102" device="" package3d_urn="urn:adsk.eagle:package:10688/1"/>
<part name="FUSE1" library="fuse" deviceset="FUSE" device="BLANK_5X20MM" package3d_urn="urn:adsk.eagle:package:14079/1"/>
<part name="FUSE2" library="fuse" deviceset="FUSE" device="BLANK_5X20MM" package3d_urn="urn:adsk.eagle:package:14079/1"/>
<part name="FUSE3" library="fuse" deviceset="FUSE" device="BLANK_5X20MM" package3d_urn="urn:adsk.eagle:package:14079/1"/>
<part name="FUSE4" library="fuse" deviceset="FUSE" device="BLANK_5X20MM" package3d_urn="urn:adsk.eagle:package:14079/1"/>
<part name="RELAY3" library="con-wago-500" deviceset="W237-102" device="" package3d_urn="urn:adsk.eagle:package:10688/1"/>
<part name="RELAY4" library="con-wago-500" deviceset="W237-102" device="" package3d_urn="urn:adsk.eagle:package:10688/1"/>
<part name="NORC1" library="con-wago-500" deviceset="W237-102" device="" package3d_urn="urn:adsk.eagle:package:10688/1"/>
<part name="NORC2" library="con-wago-500" deviceset="W237-102" device="" package3d_urn="urn:adsk.eagle:package:10688/1"/>
<part name="NORC3" library="con-wago-500" deviceset="W237-102" device="" package3d_urn="urn:adsk.eagle:package:10688/1"/>
<part name="NORC4" library="con-wago-500" deviceset="W237-102" device="" package3d_urn="urn:adsk.eagle:package:10688/1"/>
<part name="CH1" library="con-wago-500" deviceset="W237-102" device="" package3d_urn="urn:adsk.eagle:package:10688/1"/>
<part name="CH2" library="con-wago-500" deviceset="W237-102" device="" package3d_urn="urn:adsk.eagle:package:10688/1"/>
<part name="CH3" library="con-wago-500" deviceset="W237-102" device="" package3d_urn="urn:adsk.eagle:package:10688/1"/>
<part name="CH4" library="con-wago-500" deviceset="W237-102" device="" package3d_urn="urn:adsk.eagle:package:10688/1"/>
<part name="LOAD_IN" library="con-wago-500" deviceset="W237-102" device="" package3d_urn="urn:adsk.eagle:package:10688/1"/>
<part name="RELAY_PWR" library="con-wago-500" deviceset="W237-102" device="" package3d_urn="urn:adsk.eagle:package:10688/1"/>
<part name="PSU_5V" library="con-wago-500" deviceset="W237-102" device="" package3d_urn="urn:adsk.eagle:package:10688/1"/>
<part name="MCU_PWR_IN" library="con-wago-500" deviceset="W237-102" device="" package3d_urn="urn:adsk.eagle:package:10688/1"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U$1" gate="G$1" x="45.72" y="-2.54" smashed="yes">
<attribute name="NAME" x="19.05" y="2.54" size="1.27" layer="95" rot="R90"/>
</instance>
<instance part="HLK1" gate="G$1" x="-27.94" y="2.54" smashed="yes">
<attribute name="NAME" x="-40.64" y="10.16" size="1.27" layer="94"/>
</instance>
<instance part="220V" gate="-1" x="-43.18" y="25.4" smashed="yes">
<attribute name="NAME" x="-43.18" y="26.289" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="220V" gate="-2" x="-43.18" y="20.32" smashed="yes">
<attribute name="VALUE" x="-45.72" y="16.637" size="1.778" layer="96"/>
<attribute name="NAME" x="-43.18" y="21.209" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="RELAY1" gate="-1" x="86.36" y="-15.24" smashed="yes">
<attribute name="NAME" x="86.36" y="-14.351" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="RELAY1" gate="-2" x="86.36" y="-20.32" smashed="yes">
<attribute name="VALUE" x="83.82" y="-24.003" size="1.778" layer="96"/>
<attribute name="NAME" x="86.36" y="-19.431" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="RELAY2" gate="-1" x="86.36" y="-5.08" smashed="yes">
<attribute name="NAME" x="86.36" y="-4.191" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="RELAY2" gate="-2" x="86.36" y="-10.16" smashed="yes">
<attribute name="VALUE" x="83.82" y="-13.843" size="1.778" layer="96"/>
<attribute name="NAME" x="86.36" y="-9.271" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="FUSE1" gate="G$1" x="-10.16" y="-33.02" smashed="yes">
<attribute name="NAME" x="-13.97" y="-31.623" size="1.778" layer="95"/>
<attribute name="VALUE" x="-13.97" y="-35.941" size="1.778" layer="96"/>
</instance>
<instance part="FUSE2" gate="G$1" x="-10.16" y="-43.18" smashed="yes">
<attribute name="NAME" x="-13.97" y="-41.783" size="1.778" layer="95"/>
<attribute name="VALUE" x="-13.97" y="-46.101" size="1.778" layer="96"/>
</instance>
<instance part="FUSE3" gate="G$1" x="-10.16" y="-53.34" smashed="yes">
<attribute name="NAME" x="-13.97" y="-51.943" size="1.778" layer="95"/>
<attribute name="VALUE" x="-13.97" y="-56.261" size="1.778" layer="96"/>
</instance>
<instance part="FUSE4" gate="G$1" x="-10.16" y="-63.5" smashed="yes">
<attribute name="NAME" x="-13.97" y="-62.103" size="1.778" layer="95"/>
<attribute name="VALUE" x="-13.97" y="-66.421" size="1.778" layer="96"/>
</instance>
<instance part="RELAY3" gate="-1" x="86.36" y="5.08" smashed="yes">
<attribute name="NAME" x="86.36" y="5.969" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="RELAY3" gate="-2" x="86.36" y="0" smashed="yes">
<attribute name="VALUE" x="83.82" y="-3.683" size="1.778" layer="96"/>
<attribute name="NAME" x="86.36" y="0.889" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="RELAY4" gate="-1" x="86.36" y="15.24" smashed="yes">
<attribute name="NAME" x="86.36" y="16.129" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="RELAY4" gate="-2" x="86.36" y="10.16" smashed="yes">
<attribute name="VALUE" x="83.82" y="6.477" size="1.778" layer="96"/>
<attribute name="NAME" x="86.36" y="11.049" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="NORC1" gate="-1" x="-53.34" y="-30.48" smashed="yes">
<attribute name="NAME" x="-53.34" y="-29.591" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="NORC1" gate="-2" x="-53.34" y="-35.56" smashed="yes">
<attribute name="VALUE" x="-55.88" y="-39.243" size="1.778" layer="96"/>
<attribute name="NAME" x="-53.34" y="-34.671" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="NORC2" gate="-1" x="-53.34" y="-40.64" smashed="yes">
<attribute name="NAME" x="-53.34" y="-39.751" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="NORC2" gate="-2" x="-53.34" y="-45.72" smashed="yes">
<attribute name="VALUE" x="-55.88" y="-49.403" size="1.778" layer="96"/>
<attribute name="NAME" x="-53.34" y="-44.831" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="NORC3" gate="-1" x="-53.34" y="-50.8" smashed="yes">
<attribute name="NAME" x="-53.34" y="-49.911" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="NORC3" gate="-2" x="-53.34" y="-55.88" smashed="yes">
<attribute name="VALUE" x="-55.88" y="-59.563" size="1.778" layer="96"/>
<attribute name="NAME" x="-53.34" y="-54.991" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="NORC4" gate="-1" x="-53.34" y="-60.96" smashed="yes">
<attribute name="NAME" x="-53.34" y="-60.071" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="NORC4" gate="-2" x="-53.34" y="-66.04" smashed="yes">
<attribute name="VALUE" x="-55.88" y="-69.723" size="1.778" layer="96"/>
<attribute name="NAME" x="-53.34" y="-65.151" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="CH1" gate="-1" x="38.1" y="-63.5" smashed="yes" rot="R90">
<attribute name="NAME" x="37.211" y="-63.5" size="1.778" layer="95" rot="R270"/>
</instance>
<instance part="CH1" gate="-2" x="43.18" y="-63.5" smashed="yes" rot="R90">
<attribute name="VALUE" x="46.863" y="-66.04" size="1.778" layer="96" rot="R90"/>
<attribute name="NAME" x="42.291" y="-63.5" size="1.778" layer="95" rot="R270"/>
</instance>
<instance part="CH2" gate="-1" x="48.26" y="-63.5" smashed="yes" rot="R90">
<attribute name="NAME" x="47.371" y="-63.5" size="1.778" layer="95" rot="R270"/>
</instance>
<instance part="CH2" gate="-2" x="53.34" y="-63.5" smashed="yes" rot="R90">
<attribute name="VALUE" x="57.023" y="-66.04" size="1.778" layer="96" rot="R90"/>
<attribute name="NAME" x="52.451" y="-63.5" size="1.778" layer="95" rot="R270"/>
</instance>
<instance part="CH3" gate="-1" x="58.42" y="-63.5" smashed="yes" rot="R90">
<attribute name="NAME" x="57.531" y="-63.5" size="1.778" layer="95" rot="R270"/>
</instance>
<instance part="CH3" gate="-2" x="63.5" y="-63.5" smashed="yes" rot="R90">
<attribute name="VALUE" x="67.183" y="-66.04" size="1.778" layer="96" rot="R90"/>
<attribute name="NAME" x="62.611" y="-63.5" size="1.778" layer="95" rot="R270"/>
</instance>
<instance part="CH4" gate="-1" x="68.58" y="-63.5" smashed="yes" rot="R90">
<attribute name="NAME" x="67.691" y="-63.5" size="1.778" layer="95" rot="R270"/>
</instance>
<instance part="CH4" gate="-2" x="73.66" y="-63.5" smashed="yes" rot="R90">
<attribute name="VALUE" x="77.343" y="-66.04" size="1.778" layer="96" rot="R90"/>
<attribute name="NAME" x="72.771" y="-63.5" size="1.778" layer="95" rot="R270"/>
</instance>
<instance part="LOAD_IN" gate="-1" x="-53.34" y="-15.24" smashed="yes">
<attribute name="NAME" x="-53.34" y="-14.351" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="LOAD_IN" gate="-2" x="-53.34" y="-20.32" smashed="yes">
<attribute name="VALUE" x="-55.88" y="-24.003" size="1.778" layer="96"/>
<attribute name="NAME" x="-53.34" y="-19.431" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="RELAY_PWR" gate="-1" x="86.36" y="-27.94" smashed="yes">
<attribute name="NAME" x="86.36" y="-27.051" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="RELAY_PWR" gate="-2" x="86.36" y="-33.02" smashed="yes">
<attribute name="VALUE" x="83.82" y="-36.703" size="1.778" layer="96"/>
<attribute name="NAME" x="86.36" y="-32.131" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="PSU_5V" gate="-1" x="-12.7" y="25.4" smashed="yes">
<attribute name="NAME" x="-12.7" y="26.289" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="PSU_5V" gate="-2" x="-12.7" y="20.32" smashed="yes">
<attribute name="VALUE" x="-15.24" y="16.637" size="1.778" layer="96"/>
<attribute name="NAME" x="-12.7" y="21.209" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="MCU_PWR_IN" gate="-1" x="30.48" y="35.56" smashed="yes">
<attribute name="NAME" x="30.48" y="36.449" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="MCU_PWR_IN" gate="-2" x="30.48" y="30.48" smashed="yes">
<attribute name="VALUE" x="27.94" y="26.797" size="1.778" layer="96"/>
<attribute name="NAME" x="30.48" y="31.369" size="1.778" layer="95" rot="R180"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="GND" class="0">
<segment>
<pinref part="HLK1" gate="G$1" pin="-VO"/>
<wire x1="-7.62" y1="10.16" x2="-5.08" y2="10.16" width="0.1524" layer="91"/>
<label x="-5.08" y="10.16" size="1.524" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="GND@1"/>
<wire x1="25.4" y1="15.24" x2="25.4" y2="17.78" width="0.1524" layer="91"/>
<label x="25.4" y="17.78" size="1.524" layer="95" rot="R90" xref="yes"/>
</segment>
<segment>
<pinref part="RELAY1" gate="-1" pin="KL"/>
<wire x1="91.44" y1="-15.24" x2="93.98" y2="-15.24" width="0.1524" layer="91"/>
<label x="93.98" y="-15.24" size="1.27" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="RELAY2" gate="-1" pin="KL"/>
<wire x1="91.44" y1="-5.08" x2="93.98" y2="-5.08" width="0.1524" layer="91"/>
<label x="93.98" y="-5.08" size="1.27" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="RELAY3" gate="-1" pin="KL"/>
<wire x1="91.44" y1="5.08" x2="93.98" y2="5.08" width="0.1524" layer="91"/>
<label x="93.98" y="5.08" size="1.27" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="RELAY4" gate="-1" pin="KL"/>
<wire x1="91.44" y1="15.24" x2="93.98" y2="15.24" width="0.1524" layer="91"/>
<label x="93.98" y="15.24" size="1.27" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="RELAY_PWR" gate="-1" pin="KL"/>
<wire x1="91.44" y1="-27.94" x2="93.98" y2="-27.94" width="0.1524" layer="91"/>
<label x="93.98" y="-27.94" size="1.778" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="GND@2"/>
<wire x1="25.4" y1="-20.32" x2="25.4" y2="-22.86" width="0.1524" layer="91"/>
<label x="25.4" y="-22.86" size="1.524" layer="95" rot="R270" xref="yes"/>
</segment>
<segment>
<pinref part="PSU_5V" gate="-1" pin="KL"/>
<wire x1="-7.62" y1="25.4" x2="-5.08" y2="25.4" width="0.1524" layer="91"/>
<label x="-5.08" y="25.4" size="1.524" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="MCU_PWR_IN" gate="-1" pin="KL"/>
<wire x1="35.56" y1="35.56" x2="38.1" y2="35.56" width="0.1524" layer="91"/>
<label x="38.1" y="35.56" size="1.524" layer="95" xref="yes"/>
</segment>
</net>
<net name="5V" class="0">
<segment>
<pinref part="HLK1" gate="G$1" pin="+VO"/>
<wire x1="-7.62" y1="-5.08" x2="-5.08" y2="-5.08" width="0.1524" layer="91"/>
<label x="-5.08" y="-5.08" size="1.524" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="PSU_5V" gate="-2" pin="KL"/>
<wire x1="-7.62" y1="20.32" x2="-5.08" y2="20.32" width="0.1524" layer="91"/>
<label x="-5.08" y="20.32" size="1.524" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="RELAY_PWR" gate="-2" pin="KL"/>
<wire x1="91.44" y1="-33.02" x2="93.98" y2="-33.02" width="0.1524" layer="91"/>
<label x="93.98" y="-33.02" size="1.778" layer="95" xref="yes"/>
</segment>
</net>
<net name="AC1" class="0">
<segment>
<pinref part="220V" gate="-1" pin="KL"/>
<wire x1="-38.1" y1="25.4" x2="-35.56" y2="25.4" width="0.1524" layer="91"/>
<label x="-35.56" y="25.4" size="1.524" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="HLK1" gate="G$1" pin="AC1"/>
<wire x1="-48.26" y1="5.08" x2="-50.8" y2="5.08" width="0.1524" layer="91"/>
<label x="-50.8" y="5.08" size="1.524" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="AC2" class="0">
<segment>
<pinref part="220V" gate="-2" pin="KL"/>
<wire x1="-38.1" y1="20.32" x2="-35.56" y2="20.32" width="0.1524" layer="91"/>
<label x="-35.56" y="20.32" size="1.524" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="HLK1" gate="G$1" pin="AC2"/>
<wire x1="-48.26" y1="0" x2="-50.8" y2="0" width="0.1524" layer="91"/>
<label x="-50.8" y="0" size="1.524" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="C4" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="IO33"/>
<wire x1="43.18" y1="15.24" x2="43.18" y2="17.78" width="0.1524" layer="91"/>
<label x="43.18" y="17.78" size="1.016" layer="95" rot="R90" xref="yes"/>
</segment>
<segment>
<pinref part="RELAY4" gate="-2" pin="KL"/>
<wire x1="91.44" y1="10.16" x2="93.98" y2="10.16" width="0.1524" layer="91"/>
<label x="93.98" y="10.16" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="C3" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="IO25"/>
<wire x1="40.64" y1="15.24" x2="40.64" y2="17.78" width="0.1524" layer="91"/>
<label x="40.64" y="17.78" size="1.016" layer="95" rot="R90" xref="yes"/>
</segment>
<segment>
<pinref part="RELAY3" gate="-2" pin="KL"/>
<wire x1="91.44" y1="0" x2="93.98" y2="0" width="0.1524" layer="91"/>
<label x="93.98" y="0" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="C2" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="IO26"/>
<wire x1="38.1" y1="15.24" x2="38.1" y2="17.78" width="0.1524" layer="91"/>
<label x="38.1" y="17.78" size="1.016" layer="95" rot="R90" xref="yes"/>
</segment>
<segment>
<pinref part="RELAY2" gate="-2" pin="KL"/>
<wire x1="91.44" y1="-10.16" x2="93.98" y2="-10.16" width="0.1524" layer="91"/>
<label x="93.98" y="-10.16" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="C1" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="IO27"/>
<wire x1="35.56" y1="15.24" x2="35.56" y2="17.78" width="0.1524" layer="91"/>
<label x="35.56" y="17.78" size="1.016" layer="95" rot="R90" xref="yes"/>
</segment>
<segment>
<pinref part="RELAY1" gate="-2" pin="KL"/>
<wire x1="91.44" y1="-20.32" x2="93.98" y2="-20.32" width="0.1524" layer="91"/>
<label x="93.98" y="-20.32" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="M-" class="0">
<segment>
<pinref part="LOAD_IN" gate="-1" pin="KL"/>
<wire x1="-48.26" y1="-15.24" x2="-45.72" y2="-15.24" width="0.1524" layer="91"/>
<label x="-45.72" y="-15.24" size="1.778" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="CH1" gate="-2" pin="KL"/>
<wire x1="43.18" y1="-58.42" x2="43.18" y2="-55.88" width="0.1524" layer="91"/>
<label x="43.18" y="-55.88" size="1.778" layer="95" rot="R90" xref="yes"/>
</segment>
<segment>
<pinref part="CH2" gate="-2" pin="KL"/>
<wire x1="53.34" y1="-58.42" x2="53.34" y2="-55.88" width="0.1524" layer="91"/>
<label x="53.34" y="-55.88" size="1.778" layer="95" rot="R90" xref="yes"/>
</segment>
<segment>
<pinref part="CH3" gate="-2" pin="KL"/>
<wire x1="63.5" y1="-58.42" x2="63.5" y2="-55.88" width="0.1524" layer="91"/>
<label x="63.5" y="-55.88" size="1.778" layer="95" rot="R90" xref="yes"/>
</segment>
<segment>
<pinref part="CH4" gate="-2" pin="KL"/>
<wire x1="73.66" y1="-58.42" x2="73.66" y2="-55.88" width="0.1524" layer="91"/>
<label x="73.66" y="-55.88" size="1.778" layer="95" rot="R90" xref="yes"/>
</segment>
</net>
<net name="M+" class="0">
<segment>
<pinref part="LOAD_IN" gate="-2" pin="KL"/>
<wire x1="-48.26" y1="-20.32" x2="-45.72" y2="-20.32" width="0.1524" layer="91"/>
<label x="-45.72" y="-20.32" size="1.778" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="FUSE1" gate="G$1" pin="2"/>
<wire x1="-5.08" y1="-33.02" x2="-2.54" y2="-33.02" width="0.1524" layer="91"/>
<label x="-2.54" y="-33.02" size="1.778" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="FUSE2" gate="G$1" pin="2"/>
<wire x1="-5.08" y1="-43.18" x2="-2.54" y2="-43.18" width="0.1524" layer="91"/>
<label x="-2.54" y="-43.18" size="1.778" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="FUSE3" gate="G$1" pin="2"/>
<wire x1="-5.08" y1="-53.34" x2="-2.54" y2="-53.34" width="0.1524" layer="91"/>
<label x="-2.54" y="-53.34" size="1.778" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="FUSE4" gate="G$1" pin="2"/>
<wire x1="-5.08" y1="-63.5" x2="-2.54" y2="-63.5" width="0.1524" layer="91"/>
<label x="-2.54" y="-63.5" size="1.778" layer="95" xref="yes"/>
</segment>
</net>
<net name="RC1" class="0">
<segment>
<pinref part="NORC1" gate="-2" pin="KL"/>
<wire x1="-48.26" y1="-35.56" x2="-45.72" y2="-35.56" width="0.1524" layer="91"/>
<label x="-45.72" y="-35.56" size="1.778" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="CH1" gate="-1" pin="KL"/>
<wire x1="38.1" y1="-58.42" x2="38.1" y2="-55.88" width="0.1524" layer="91"/>
<label x="38.1" y="-55.88" size="1.778" layer="95" rot="R90" xref="yes"/>
</segment>
</net>
<net name="RC2" class="0">
<segment>
<pinref part="NORC2" gate="-2" pin="KL"/>
<wire x1="-48.26" y1="-45.72" x2="-45.72" y2="-45.72" width="0.1524" layer="91"/>
<label x="-45.72" y="-45.72" size="1.778" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="CH2" gate="-1" pin="KL"/>
<wire x1="48.26" y1="-58.42" x2="48.26" y2="-55.88" width="0.1524" layer="91"/>
<label x="48.26" y="-55.88" size="1.778" layer="95" rot="R90" xref="yes"/>
</segment>
</net>
<net name="RC3" class="0">
<segment>
<pinref part="NORC3" gate="-2" pin="KL"/>
<wire x1="-48.26" y1="-55.88" x2="-45.72" y2="-55.88" width="0.1524" layer="91"/>
<label x="-45.72" y="-55.88" size="1.778" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="CH3" gate="-1" pin="KL"/>
<wire x1="58.42" y1="-58.42" x2="58.42" y2="-55.88" width="0.1524" layer="91"/>
<label x="58.42" y="-55.88" size="1.778" layer="95" rot="R90" xref="yes"/>
</segment>
</net>
<net name="RC4" class="0">
<segment>
<pinref part="NORC4" gate="-2" pin="KL"/>
<wire x1="-48.26" y1="-66.04" x2="-45.72" y2="-66.04" width="0.1524" layer="91"/>
<label x="-45.72" y="-66.04" size="1.778" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="CH4" gate="-1" pin="KL"/>
<wire x1="68.58" y1="-58.42" x2="68.58" y2="-55.88" width="0.1524" layer="91"/>
<label x="68.58" y="-55.88" size="1.778" layer="95" rot="R90" xref="yes"/>
</segment>
</net>
<net name="F1" class="0">
<segment>
<pinref part="FUSE1" gate="G$1" pin="1"/>
<wire x1="-15.24" y1="-33.02" x2="-17.78" y2="-33.02" width="0.1524" layer="91"/>
<label x="-17.78" y="-33.02" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="NORC1" gate="-1" pin="KL"/>
<wire x1="-48.26" y1="-30.48" x2="-45.72" y2="-30.48" width="0.1524" layer="91"/>
<label x="-45.72" y="-30.48" size="1.778" layer="95" xref="yes"/>
</segment>
</net>
<net name="F2" class="0">
<segment>
<pinref part="NORC2" gate="-1" pin="KL"/>
<wire x1="-48.26" y1="-40.64" x2="-45.72" y2="-40.64" width="0.1524" layer="91"/>
<label x="-45.72" y="-40.64" size="1.778" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="FUSE2" gate="G$1" pin="1"/>
<wire x1="-15.24" y1="-43.18" x2="-17.78" y2="-43.18" width="0.1524" layer="91"/>
<label x="-17.78" y="-43.18" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="F3" class="0">
<segment>
<pinref part="NORC3" gate="-1" pin="KL"/>
<wire x1="-48.26" y1="-50.8" x2="-45.72" y2="-50.8" width="0.1524" layer="91"/>
<label x="-45.72" y="-50.8" size="1.778" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="FUSE3" gate="G$1" pin="1"/>
<wire x1="-15.24" y1="-53.34" x2="-17.78" y2="-53.34" width="0.1524" layer="91"/>
<label x="-17.78" y="-53.34" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="F4" class="0">
<segment>
<pinref part="NORC4" gate="-1" pin="KL"/>
<wire x1="-48.26" y1="-60.96" x2="-45.72" y2="-60.96" width="0.1524" layer="91"/>
<label x="-45.72" y="-60.96" size="1.778" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="FUSE4" gate="G$1" pin="1"/>
<wire x1="-15.24" y1="-63.5" x2="-17.78" y2="-63.5" width="0.1524" layer="91"/>
<label x="-17.78" y="-63.5" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="3V3" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="3V3"/>
<wire x1="22.86" y1="-20.32" x2="22.86" y2="-22.86" width="0.1524" layer="91"/>
<label x="22.86" y="-22.86" size="1.524" layer="95" rot="R270" xref="yes"/>
</segment>
</net>
<net name="VIN" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="VIN"/>
<wire x1="22.86" y1="15.24" x2="22.86" y2="17.78" width="0.1524" layer="91"/>
<label x="22.86" y="17.78" size="1.524" layer="95" rot="R90" xref="yes"/>
</segment>
<segment>
<pinref part="MCU_PWR_IN" gate="-2" pin="KL"/>
<wire x1="35.56" y1="30.48" x2="38.1" y2="30.48" width="0.1524" layer="91"/>
<label x="38.1" y="30.48" size="1.524" layer="95" xref="yes"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
