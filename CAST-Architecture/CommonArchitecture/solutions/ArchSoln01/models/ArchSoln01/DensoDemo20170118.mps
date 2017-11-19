<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:5d8d7861-f4ba-4d50-912f-d0f22700b36c(ArchSoln01.DensoDemo20170118)">
  <persistence version="9" />
  <languages>
    <devkit ref="a1f77d3a-043e-4ac9-9850-7f0694670f80(info.engineeredmechatronics.dri)" />
  </languages>
  <imports>
    <import index="cmup" ref="r:5a437a79-b151-4007-9ee1-b1d4eccb901b(info.engineeredmechatronics.dri.req.aliasCategories)" implicit="true" />
  </imports>
  <registry>
    <language id="634f42b3-1d27-40f1-8e93-833a7b65c70b" name="info.engineeredmechatronics.dri.architecture">
      <concept id="8777550351271455619" name="info.engineeredmechatronics.dri.architecture.structure.UsePart" flags="ng" index="24sZga" />
      <concept id="3051813213034580712" name="info.engineeredmechatronics.dri.architecture.structure.DelegatingConnector" flags="ng" index="2pBNOq">
        <child id="3051813213034580720" name="outer" index="2pBNO2" />
        <child id="3051813213034580719" name="inner" index="2pBNOt" />
      </concept>
      <concept id="8230838321693867160" name="info.engineeredmechatronics.dri.architecture.structure.RequiresPort" flags="ng" index="M1vd0" />
      <concept id="8230838321693867159" name="info.engineeredmechatronics.dri.architecture.structure.ProvidesPort" flags="ng" index="M1vdf" />
      <concept id="8230838321693188186" name="info.engineeredmechatronics.dri.architecture.structure.Port" flags="ng" index="M22Y2">
        <reference id="8469594633337561072" name="portType" index="22ati1" />
      </concept>
      <concept id="8230838321693217288" name="info.engineeredmechatronics.dri.architecture.structure.PortTypeType" flags="ng" index="M2TRg">
        <reference id="8230838321693217289" name="portType" index="M2TRh" />
      </concept>
      <concept id="8230838321692904600" name="info.engineeredmechatronics.dri.architecture.structure.PortType" flags="ng" index="M54d0">
        <child id="8230838321692907819" name="items" index="M55rN" />
      </concept>
      <concept id="8230838321692907809" name="info.engineeredmechatronics.dri.architecture.structure.SignalItem" flags="ng" index="M55rT" />
      <concept id="8230838321694656065" name="info.engineeredmechatronics.dri.architecture.structure.ChildPortRef" flags="ng" index="MsoAp">
        <reference id="8230838321694656132" name="part" index="Mso_s" />
        <reference id="8230838321694656134" name="port" index="Mso_u" />
      </concept>
      <concept id="8230838321694630662" name="info.engineeredmechatronics.dri.architecture.structure.LocalPortRef" flags="ng" index="MvyNu">
        <reference id="8230838321694630663" name="port" index="MvyNv" />
      </concept>
      <concept id="8230838321694630584" name="info.engineeredmechatronics.dri.architecture.structure.AssemblyConnector" flags="ng" index="MvyPw">
        <child id="8230838321694657243" name="source" index="Msok3" />
        <child id="8230838321694657245" name="target" index="Msok5" />
      </concept>
      <concept id="4166288872634225" name="info.engineeredmechatronics.dri.architecture.structure.Part" flags="ng" index="2ShzD6">
        <child id="8777550351271053438" name="contents" index="24jtvR" />
      </concept>
      <concept id="4853162681951060459" name="info.engineeredmechatronics.dri.architecture.structure.PartRoot" flags="ng" index="2XIuhl">
        <child id="4853162681951060469" name="part" index="2XIuhb" />
      </concept>
      <concept id="6899217562913289665" name="info.engineeredmechatronics.dri.architecture.structure.EmptyPartContent" flags="ng" index="2YaWgg" />
      <concept id="6899217562913120780" name="info.engineeredmechatronics.dri.architecture.structure.EmptyArchitectureContent" flags="ng" index="2Yb5ft" />
      <concept id="6899217562912810603" name="info.engineeredmechatronics.dri.architecture.structure.IArchitectureContent" flags="ng" index="2YcLuU">
        <property id="8469594633338194738" name="exported" index="229S13" />
      </concept>
      <concept id="6899217562912808188" name="info.engineeredmechatronics.dri.architecture.structure.ArchitectureChunk" flags="ng" index="2YcMOH">
        <child id="7002388552575876538" name="contents" index="2IDCrN" />
      </concept>
      <concept id="4888338718029255977" name="info.engineeredmechatronics.dri.architecture.structure.IPartInstance" flags="ng" index="1ueGG3">
        <reference id="4888338718029259564" name="part" index="1ueJO6" />
      </concept>
      <concept id="2071967365828256469" name="info.engineeredmechatronics.dri.architecture.structure.LogicalPortType" flags="ng" index="1QD3A2" />
    </language>
    <language id="d4280a54-f6df-4383-aa41-d1b2bffa7eb1" name="com.mbeddr.core.base">
      <concept id="4901333676673876644" name="com.mbeddr.core.base.structure.CodeReviewData" flags="ng" index="3RMOIA">
        <property id="279511073609046054" name="lastReviewState" index="IC5RL" />
        <property id="1687004685686364087" name="codeState" index="37E2p_" />
        <property id="4901333676674426578" name="reviewIsCurrent" index="3ROUZg" />
        <property id="4901333676674177026" name="lastReviewTimestamp" index="3RPX40" />
        <property id="4901333676674177031" name="lastReviewReviewer" index="3RPX45" />
        <property id="4901333676674177040" name="lastReviewHash" index="3RPX4i" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="8ca79d43-eb45-4791-bdd4-0d6130ff895b" name="de.itemis.mps.editor.diagram.layout">
      <concept id="6720495385597071406" name="de.itemis.mps.editor.diagram.layout.structure.Layout_Box" flags="ng" index="gqqVs">
        <property id="6720495385597071504" name="bounds_height" index="gqqTy" />
        <property id="6720495385597071502" name="bounds_y" index="gqqTW" />
        <property id="6720495385597071503" name="bounds_width" index="gqqTX" />
        <property id="6720495385597071501" name="bounds_x" index="gqqTZ" />
        <property id="4583510071007917016" name="transform" index="TgtnS" />
        <child id="738815095926774816" name="portLayouts" index="1pap1a" />
      </concept>
      <concept id="2319506556913310852" name="de.itemis.mps.editor.diagram.layout.structure.Layout_Connection" flags="ng" index="2VclpC">
        <child id="2319506556913311101" name="anchors" index="2Vcluh" />
        <child id="4767615435799372763" name="labels" index="3ul5Gx" />
      </concept>
      <concept id="2319506556913310727" name="de.itemis.mps.editor.diagram.layout.structure.Point" flags="ng" index="2VclrF">
        <property id="2319506556913310861" name="x" index="2Vclpx" />
        <property id="2319506556913310863" name="y" index="2Vclpz" />
      </concept>
      <concept id="8963411245960991886" name="de.itemis.mps.editor.diagram.layout.structure.LayoutMap" flags="ng" index="37mRI7">
        <child id="8963411245960991904" name="entries" index="37mRID" />
      </concept>
      <concept id="8963411245960991903" name="de.itemis.mps.editor.diagram.layout.structure.LayoutMapEntry" flags="ng" index="37mRIm">
        <property id="8963411245960998400" name="key" index="37mO49" />
        <child id="8963411245960998404" name="value" index="37mO4d" />
      </concept>
      <concept id="738815095926749345" name="de.itemis.mps.editor.diagram.layout.structure.Layout_Port" flags="ng" index="1pa3jb">
        <property id="7964702570467115501" name="ordinal" index="2gRgW$" />
        <property id="738815095926749379" name="portName" index="1pa3iD" />
      </concept>
      <concept id="4767615435799372731" name="de.itemis.mps.editor.diagram.layout.structure.Layout_EdgeLabel" flags="ng" index="3ul5H1">
        <property id="4767615435799372759" name="type" index="3ul5GH" />
        <child id="4767615435799372761" name="position" index="3ul5Gz" />
      </concept>
      <concept id="3253043142928125505" name="de.itemis.mps.editor.diagram.layout.structure.RelativePosition" flags="ng" index="3wpmZ1">
        <child id="3253043142928125557" name="referencePoint" index="3wpmZP" />
        <child id="3253043142928125559" name="offset" index="3wpmZR" />
      </concept>
    </language>
    <language id="61c69711-ed61-4850-81d9-7714ff227fb0" name="com.mbeddr.core.expressions">
      <concept id="8864856114140038681" name="com.mbeddr.core.expressions.structure.DoubleType" flags="ng" index="2fgwQN" />
      <concept id="318113533128716675" name="com.mbeddr.core.expressions.structure.ITyped" flags="ng" index="2C2TGh">
        <child id="318113533128716676" name="type" index="2C2TGm" />
      </concept>
      <concept id="8860443239512128054" name="com.mbeddr.core.expressions.structure.Type" flags="ng" index="3TlMgo">
        <property id="2941277002445651368" name="const" index="2c7vTL" />
        <property id="2941277002448691247" name="volatile" index="2caQfQ" />
      </concept>
      <concept id="8860443239512128108" name="com.mbeddr.core.expressions.structure.IntType" flags="ng" index="3TlMh2" />
    </language>
    <language id="dbc6f42a-41b9-485a-bad8-b1a8dab61ecc" name="info.engineeredmechatronics.dri.simulink">
      <concept id="491045946649465904" name="info.engineeredmechatronics.dri.simulink.structure.MatlabSettings" flags="ng" index="3kJPYv">
        <property id="1007050463763170675" name="rootDir" index="2AxGpW" />
      </concept>
    </language>
    <language id="298ed6a7-1355-4e59-a954-2b23ec4d1bb6" name="info.engineeredmechatronics.dri.req">
      <concept id="6944297619196489827" name="info.engineeredmechatronics.dri.req.structure.ElementAlias" flags="ng" index="6$MA7">
        <reference id="6944297619196489831" name="category" index="6$MA3" />
      </concept>
      <concept id="6944297619195485758" name="info.engineeredmechatronics.dri.req.structure.IAliasedConcept" flags="ng" index="6SWvq">
        <child id="4554402356088537735" name="multiAliasName" index="TU7Tn" />
      </concept>
      <concept id="4554402356088537734" name="info.engineeredmechatronics.dri.req.structure.MultiAliasName" flags="ng" index="TU7Tm">
        <child id="6944297619196489824" name="aliases" index="6$MA4" />
      </concept>
    </language>
  </registry>
  <node concept="2YcMOH" id="4p4xuWB67UJ">
    <property role="TrG5h" value="Arch001_2017" />
    <node concept="1QD3A2" id="2bFLxpRxyN9" role="2IDCrN">
      <node concept="TU7Tm" id="2bFLxpRxyNb" role="TU7Tn">
        <node concept="6$MA7" id="2bFLxpRxyNd" role="6$MA4">
          <property role="TrG5h" value="accelCmd" />
          <ref role="6$MA3" to="cmup:2Puzg$LxGk_" resolve="default" />
        </node>
      </node>
      <node concept="M55rT" id="2bFLxpRxyQt" role="M55rN">
        <property role="TrG5h" value="val" />
        <node concept="2fgwQN" id="2bFLxpRxyQN" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
    </node>
    <node concept="1QD3A2" id="2bFLxpRxyGn" role="2IDCrN">
      <node concept="TU7Tm" id="2bFLxpRxyGp" role="TU7Tn">
        <node concept="6$MA7" id="2bFLxpRxyGr" role="6$MA4">
          <property role="TrG5h" value="brakeCmd" />
          <ref role="6$MA3" to="cmup:2Puzg$LxGk_" resolve="default" />
        </node>
      </node>
      <node concept="M55rT" id="2bFLxpRxyJA" role="M55rN">
        <property role="TrG5h" value="val" />
        <node concept="2fgwQN" id="2bFLxpRxyJR" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
    </node>
    <node concept="1QD3A2" id="2bFLxpRxy_J" role="2IDCrN">
      <node concept="TU7Tm" id="2bFLxpRxy_L" role="TU7Tn">
        <node concept="6$MA7" id="2bFLxpRxy_N" role="6$MA4">
          <property role="TrG5h" value="steerCmd" />
          <ref role="6$MA3" to="cmup:2Puzg$LxGk_" resolve="default" />
        </node>
      </node>
      <node concept="M55rT" id="2bFLxpRxyCT" role="M55rN">
        <property role="TrG5h" value="val" />
        <node concept="2fgwQN" id="2bFLxpRxyDa" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
    </node>
    <node concept="1QD3A2" id="2bFLxpRxxIa" role="2IDCrN">
      <node concept="TU7Tm" id="2bFLxpRxxIc" role="TU7Tn">
        <node concept="6$MA7" id="2bFLxpRxxIe" role="6$MA4">
          <property role="TrG5h" value="vehState" />
          <ref role="6$MA3" to="cmup:2Puzg$LxGk_" resolve="default" />
        </node>
      </node>
      <node concept="M55rT" id="2bFLxpRxxJv" role="M55rN">
        <property role="TrG5h" value="x" />
        <node concept="2fgwQN" id="2bFLxpRxxJK" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="M55rT" id="2bFLxpRxxJZ" role="M55rN">
        <property role="TrG5h" value="y" />
        <node concept="2fgwQN" id="2bFLxpRxxKk" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="M55rT" id="2bFLxpRxxK_" role="M55rN">
        <property role="TrG5h" value="z" />
        <node concept="2fgwQN" id="2bFLxpRxxKW" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="M55rT" id="2bFLxpRxxLf" role="M55rN">
        <property role="TrG5h" value="theta" />
        <node concept="2fgwQN" id="2bFLxpRxxLH" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="M55rT" id="2bFLxpRxxM2" role="M55rN">
        <property role="TrG5h" value="phi" />
        <node concept="2fgwQN" id="2bFLxpRxxMt" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="M55rT" id="2bFLxpRxxMO" role="M55rN">
        <property role="TrG5h" value="psi" />
        <node concept="2fgwQN" id="2bFLxpRxxNh" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="M55rT" id="2bFLxpRxxNE" role="M55rN">
        <property role="TrG5h" value="u" />
        <node concept="2fgwQN" id="2bFLxpRxxO9" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="M55rT" id="2bFLxpRxxO$" role="M55rN">
        <property role="TrG5h" value="v" />
        <node concept="2fgwQN" id="2bFLxpRxxP5" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="M55rT" id="2bFLxpRxxPy" role="M55rN">
        <property role="TrG5h" value="w" />
        <node concept="2fgwQN" id="2bFLxpRxxQ5" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="M55rT" id="2bFLxpRxxQ$" role="M55rN">
        <property role="TrG5h" value="dtheta" />
        <node concept="2fgwQN" id="2bFLxpRxxRj" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="M55rT" id="2bFLxpRxxRO" role="M55rN">
        <property role="TrG5h" value="dphi" />
        <node concept="2fgwQN" id="2bFLxpRxxSw" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="M55rT" id="2bFLxpRxxT3" role="M55rN">
        <property role="TrG5h" value="dpsi" />
        <node concept="2fgwQN" id="2bFLxpRxxTL" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
    </node>
    <node concept="1QD3A2" id="3AUo3sYYszJ" role="2IDCrN">
      <node concept="TU7Tm" id="3AUo3sYYszK" role="TU7Tn">
        <node concept="6$MA7" id="3AUo3sYYszL" role="6$MA4">
          <property role="TrG5h" value="vehStateLast" />
          <ref role="6$MA3" to="cmup:2Puzg$LxGk_" resolve="default" />
        </node>
      </node>
      <node concept="M55rT" id="3AUo3sYYszM" role="M55rN">
        <property role="TrG5h" value="x" />
        <node concept="2fgwQN" id="3AUo3sYYszN" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="M55rT" id="3AUo3sYYszO" role="M55rN">
        <property role="TrG5h" value="y" />
        <node concept="2fgwQN" id="3AUo3sYYszP" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="M55rT" id="3AUo3sYYszQ" role="M55rN">
        <property role="TrG5h" value="z" />
        <node concept="2fgwQN" id="3AUo3sYYszR" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="M55rT" id="3AUo3sYYszS" role="M55rN">
        <property role="TrG5h" value="theta" />
        <node concept="2fgwQN" id="3AUo3sYYszT" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="M55rT" id="3AUo3sYYszU" role="M55rN">
        <property role="TrG5h" value="phi" />
        <node concept="2fgwQN" id="3AUo3sYYszV" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="M55rT" id="3AUo3sYYszW" role="M55rN">
        <property role="TrG5h" value="psi" />
        <node concept="2fgwQN" id="3AUo3sYYszX" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="M55rT" id="3AUo3sYYszY" role="M55rN">
        <property role="TrG5h" value="u" />
        <node concept="2fgwQN" id="3AUo3sYYszZ" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="M55rT" id="3AUo3sYYs$0" role="M55rN">
        <property role="TrG5h" value="v" />
        <node concept="2fgwQN" id="3AUo3sYYs$1" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="M55rT" id="3AUo3sYYs$2" role="M55rN">
        <property role="TrG5h" value="w" />
        <node concept="2fgwQN" id="3AUo3sYYs$3" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="M55rT" id="3AUo3sYYs$4" role="M55rN">
        <property role="TrG5h" value="dtheta" />
        <node concept="2fgwQN" id="3AUo3sYYs$5" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="M55rT" id="3AUo3sYYs$6" role="M55rN">
        <property role="TrG5h" value="dphi" />
        <node concept="2fgwQN" id="3AUo3sYYs$7" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="M55rT" id="3AUo3sYYs$8" role="M55rN">
        <property role="TrG5h" value="dpsi" />
        <node concept="2fgwQN" id="3AUo3sYYs$9" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
    </node>
    <node concept="1QD3A2" id="3AUo3sYYsEB" role="2IDCrN">
      <node concept="M55rT" id="3AUo3sYYsKg" role="M55rN">
        <property role="TrG5h" value="x" />
        <node concept="2fgwQN" id="3AUo3sYYsKh" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="M55rT" id="3AUo3sYYsKi" role="M55rN">
        <property role="TrG5h" value="y" />
        <node concept="2fgwQN" id="3AUo3sYYsKj" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="M55rT" id="3AUo3sYYsKk" role="M55rN">
        <property role="TrG5h" value="z" />
        <node concept="2fgwQN" id="3AUo3sYYsKl" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="M55rT" id="3AUo3sYYsKm" role="M55rN">
        <property role="TrG5h" value="Rotx" />
        <node concept="2fgwQN" id="3AUo3sYYsKn" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="M55rT" id="3AUo3sYYsKo" role="M55rN">
        <property role="TrG5h" value="Roty" />
        <node concept="2fgwQN" id="3AUo3sYYsKp" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="M55rT" id="3AUo3sYYsKq" role="M55rN">
        <property role="TrG5h" value="Rotz" />
        <node concept="2fgwQN" id="3AUo3sYYsKr" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="M55rT" id="3AUo3sYYsKs" role="M55rN">
        <property role="TrG5h" value="GPS_lat" />
        <node concept="2fgwQN" id="3AUo3sYYsKt" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="M55rT" id="3AUo3sYYsKu" role="M55rN">
        <property role="TrG5h" value="GPS_long" />
        <node concept="2fgwQN" id="3AUo3sYYsKv" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="M55rT" id="3AUo3sYYsKw" role="M55rN">
        <property role="TrG5h" value="GPD_alt" />
        <node concept="2fgwQN" id="3AUo3sYYsKx" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="M55rT" id="3AUo3sYYsKy" role="M55rN">
        <property role="TrG5h" value="Velocity" />
        <node concept="2fgwQN" id="3AUo3sYYsKz" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="M55rT" id="3AUo3sYYsK$" role="M55rN">
        <property role="TrG5h" value="Heading" />
        <node concept="2fgwQN" id="3AUo3sYYsK_" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="M55rT" id="3AUo3sYYsKA" role="M55rN">
        <property role="TrG5h" value="YawRate" />
        <node concept="2fgwQN" id="3AUo3sYYsKB" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="TU7Tm" id="3AUo3sYYsED" role="TU7Tn">
        <node concept="6$MA7" id="3AUo3sYYsEF" role="6$MA4">
          <property role="TrG5h" value="prescanSimData" />
          <ref role="6$MA3" to="cmup:2Puzg$LxGk_" resolve="default" />
        </node>
      </node>
    </node>
    <node concept="1QD3A2" id="3AUo3sYYvka" role="2IDCrN">
      <node concept="M55rT" id="3AUo3sYYvqd" role="M55rN">
        <property role="TrG5h" value="x" />
        <node concept="2fgwQN" id="3AUo3sYYvqe" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="M55rT" id="3AUo3sYYvqf" role="M55rN">
        <property role="TrG5h" value="y" />
        <node concept="2fgwQN" id="3AUo3sYYvqg" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="M55rT" id="3AUo3sYYvqh" role="M55rN">
        <property role="TrG5h" value="z" />
        <node concept="2fgwQN" id="3AUo3sYYvqi" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="M55rT" id="3AUo3sYYvqj" role="M55rN">
        <property role="TrG5h" value="dx" />
        <node concept="2fgwQN" id="3AUo3sYYvqk" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="M55rT" id="3AUo3sYYvql" role="M55rN">
        <property role="TrG5h" value="dy" />
        <node concept="2fgwQN" id="3AUo3sYYvqm" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="M55rT" id="3AUo3sYYvqn" role="M55rN">
        <property role="TrG5h" value="dz" />
        <node concept="2fgwQN" id="3AUo3sYYvqo" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="M55rT" id="3AUo3sYYvqp" role="M55rN">
        <property role="TrG5h" value="R" />
        <node concept="2fgwQN" id="3AUo3sYYvqq" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="M55rT" id="3AUo3sYYvqr" role="M55rN">
        <property role="TrG5h" value="P" />
        <node concept="2fgwQN" id="3AUo3sYYvqs" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="M55rT" id="3AUo3sYYvqt" role="M55rN">
        <property role="TrG5h" value="Y" />
        <node concept="2fgwQN" id="3AUo3sYYvqu" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="TU7Tm" id="3AUo3sYYvkc" role="TU7Tn">
        <node concept="6$MA7" id="3AUo3sYYvke" role="6$MA4">
          <property role="TrG5h" value="prescanState" />
          <ref role="6$MA3" to="cmup:2Puzg$LxGk_" resolve="default" />
        </node>
      </node>
    </node>
    <node concept="1QD3A2" id="2bFLxpRxymB" role="2IDCrN">
      <node concept="TU7Tm" id="2bFLxpRxymD" role="TU7Tn">
        <node concept="6$MA7" id="2bFLxpRxymF" role="6$MA4">
          <property role="TrG5h" value="controllerMainBus" />
          <ref role="6$MA3" to="cmup:2Puzg$LxGk_" resolve="default" />
        </node>
      </node>
      <node concept="M55rT" id="2bFLxpRxypq" role="M55rN">
        <property role="TrG5h" value="ActuationCmdBus" />
        <node concept="M2TRg" id="2bFLxpRxyq4" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <ref role="M2TRh" node="2bFLxpRxvf6" resolve="actuationCmdBus" />
        </node>
      </node>
      <node concept="M55rT" id="2bFLxpRxyqj" role="M55rN">
        <property role="TrG5h" value="ArbitratedActuationReq" />
        <node concept="M2TRg" id="2bFLxpRxyrb" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <ref role="M2TRh" node="2bFLxpRxxzg" resolve="arbitratedAcutationReq" />
        </node>
      </node>
      <node concept="M55rT" id="2bFLxpRxyrs" role="M55rN">
        <property role="TrG5h" value="FunctionFeatures" />
        <node concept="M2TRg" id="2bFLxpRxys2" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <ref role="M2TRh" node="2bFLxpRxygp" resolve="functionFeatures" />
        </node>
      </node>
      <node concept="M55rT" id="2bFLxpRxysl" role="M55rN">
        <property role="TrG5h" value="SituationBus" />
        <node concept="M2TRg" id="2bFLxpRxysX" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <ref role="M2TRh" node="2bFLxpRxy7c" resolve="situationBus" />
        </node>
      </node>
      <node concept="M55rT" id="2bFLxpRxyti" role="M55rN">
        <property role="TrG5h" value="IdealSensors" />
        <node concept="M2TRg" id="2bFLxpRxyu6" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <ref role="M2TRh" node="2bFLxpRxxVv" resolve="idealSensorBus" />
        </node>
      </node>
      <node concept="M55rT" id="Z2Xv5FRDlE" role="M55rN">
        <property role="TrG5h" value="FromPreScan" />
        <node concept="M2TRg" id="662_HI6tc9E" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <ref role="M2TRh" node="3AUo3sYYsEB" resolve="prescanSimData" />
        </node>
      </node>
      <node concept="M55rT" id="Z2Xv5FRK$S" role="M55rN">
        <property role="TrG5h" value="ConnectedBus" />
        <node concept="M2TRg" id="662_HI6tca5" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <ref role="M2TRh" node="3AUo3sYYwDo" resolve="connectedBus" />
        </node>
      </node>
      <node concept="M55rT" id="Z2Xv5FRKAA" role="M55rN">
        <property role="TrG5h" value="ContextualAwarenessBus" />
        <node concept="M2TRg" id="662_HI6tcaw" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <ref role="M2TRh" node="Z2Xv5FRO_A" resolve="contextualAwarenssBus" />
        </node>
      </node>
    </node>
    <node concept="1QD3A2" id="2bFLxpRxxVv" role="2IDCrN">
      <node concept="TU7Tm" id="2bFLxpRxxVw" role="TU7Tn">
        <node concept="6$MA7" id="2bFLxpRxxVx" role="6$MA4">
          <property role="TrG5h" value="idealSensorBus" />
          <ref role="6$MA3" to="cmup:2Puzg$LxGk_" resolve="default" />
        </node>
      </node>
      <node concept="M55rT" id="2bFLxpRxxVy" role="M55rN">
        <property role="TrG5h" value="x" />
        <node concept="2fgwQN" id="2bFLxpRxxVz" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="M55rT" id="2bFLxpRxxV$" role="M55rN">
        <property role="TrG5h" value="y" />
        <node concept="2fgwQN" id="2bFLxpRxxV_" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="M55rT" id="2bFLxpRxxVA" role="M55rN">
        <property role="TrG5h" value="z" />
        <node concept="2fgwQN" id="2bFLxpRxxVB" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="M55rT" id="2bFLxpRxxVC" role="M55rN">
        <property role="TrG5h" value="theta" />
        <node concept="2fgwQN" id="2bFLxpRxxVD" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="M55rT" id="2bFLxpRxxVE" role="M55rN">
        <property role="TrG5h" value="phi" />
        <node concept="2fgwQN" id="2bFLxpRxxVF" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="M55rT" id="2bFLxpRxxVG" role="M55rN">
        <property role="TrG5h" value="psi" />
        <node concept="2fgwQN" id="2bFLxpRxxVH" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="M55rT" id="2bFLxpRxxVI" role="M55rN">
        <property role="TrG5h" value="u" />
        <node concept="2fgwQN" id="2bFLxpRxxVJ" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="M55rT" id="2bFLxpRxxVK" role="M55rN">
        <property role="TrG5h" value="v" />
        <node concept="2fgwQN" id="2bFLxpRxxVL" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="M55rT" id="2bFLxpRxxVM" role="M55rN">
        <property role="TrG5h" value="w" />
        <node concept="2fgwQN" id="2bFLxpRxxVN" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="M55rT" id="2bFLxpRxxVO" role="M55rN">
        <property role="TrG5h" value="dtheta" />
        <node concept="2fgwQN" id="2bFLxpRxxVP" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="M55rT" id="2bFLxpRxxVQ" role="M55rN">
        <property role="TrG5h" value="dphi" />
        <node concept="2fgwQN" id="2bFLxpRxxVR" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="M55rT" id="2bFLxpRxxVS" role="M55rN">
        <property role="TrG5h" value="dpsi" />
        <node concept="2fgwQN" id="2bFLxpRxxVT" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
    </node>
    <node concept="1QD3A2" id="3AUo3sYYwDo" role="2IDCrN">
      <node concept="TU7Tm" id="3AUo3sYYwDq" role="TU7Tn">
        <node concept="6$MA7" id="3AUo3sYYwDs" role="6$MA4">
          <property role="TrG5h" value="connectedBus" />
          <ref role="6$MA3" to="cmup:2Puzg$LxGk_" resolve="default" />
        </node>
      </node>
      <node concept="M55rT" id="3AUo3sYYwKc" role="M55rN">
        <property role="TrG5h" value="bjectBus" />
        <node concept="M2TRg" id="662_HI6tbV8" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <ref role="M2TRh" node="Z2Xv5FROW_" resolve="objectBus" />
        </node>
      </node>
      <node concept="M55rT" id="662_HI6tbVA" role="M55rN">
        <property role="TrG5h" value="numberObject" />
        <node concept="3TlMh2" id="662_HI6tbWT" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="3RMOIA" id="Z2Xv5FRDpT" role="lGtFl">
        <property role="3RPX4i" value="-491387832" />
        <property role="3RPX40" value="1488999677298" />
        <property role="3RPX45" value="shangguanlantian" />
        <property role="3ROUZg" value="true" />
        <property role="37E2p_" value="raw" />
        <property role="IC5RL" value="raw" />
      </node>
    </node>
    <node concept="1QD3A2" id="2bFLxpRxy7c" role="2IDCrN">
      <node concept="TU7Tm" id="2bFLxpRxy7e" role="TU7Tn">
        <node concept="6$MA7" id="2bFLxpRxy7g" role="6$MA4">
          <property role="TrG5h" value="situationBus" />
          <ref role="6$MA3" to="cmup:2Puzg$LxGk_" resolve="default" />
        </node>
      </node>
      <node concept="M55rT" id="2bFLxpRxyan" role="M55rN">
        <property role="TrG5h" value="selfAwarenessBus" />
        <node concept="M2TRg" id="2bFLxpRxyba" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <ref role="M2TRh" node="2bFLxpRxxIa" resolve="vehState" />
        </node>
      </node>
      <node concept="M55rT" id="3AUo3sYYx0y" role="M55rN">
        <property role="TrG5h" value="contextualAwarenessBus" />
        <node concept="M2TRg" id="662_HI6t9e9" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <ref role="M2TRh" node="3AUo3sYYwDo" resolve="connectedBus" />
        </node>
      </node>
    </node>
    <node concept="1QD3A2" id="3AUo3sYYxcg" role="2IDCrN">
      <node concept="TU7Tm" id="3AUo3sYYxci" role="TU7Tn">
        <node concept="6$MA7" id="3AUo3sYYxck" role="6$MA4">
          <property role="TrG5h" value="featureReqBus" />
          <ref role="6$MA3" to="cmup:2Puzg$LxGk_" resolve="default" />
        </node>
      </node>
      <node concept="M55rT" id="662_HI6t9eg" role="M55rN">
        <property role="TrG5h" value="v_des" />
        <node concept="2fgwQN" id="662_HI6t9f1" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="M55rT" id="662_HI6t9fo" role="M55rN">
        <property role="TrG5h" value="a_des" />
        <node concept="2fgwQN" id="662_HI6t9gd" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="M55rT" id="662_HI6t9gA" role="M55rN">
        <property role="TrG5h" value="psi_des" />
        <node concept="2fgwQN" id="662_HI6t9ht" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="M55rT" id="662_HI6t9hS" role="M55rN">
        <property role="TrG5h" value="dpsi_des" />
        <node concept="2fgwQN" id="662_HI6t9iQ" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
    </node>
    <node concept="1QD3A2" id="2bFLxpRxxzg" role="2IDCrN">
      <node concept="TU7Tm" id="2bFLxpRxxzi" role="TU7Tn">
        <node concept="6$MA7" id="2bFLxpRxxzk" role="6$MA4">
          <property role="TrG5h" value="arbitratedAcutationReq" />
          <ref role="6$MA3" to="cmup:2Puzg$LxGk_" resolve="default" />
        </node>
      </node>
      <node concept="M55rT" id="2bFLxpRxx$e" role="M55rN">
        <property role="TrG5h" value="v_des" />
        <node concept="2fgwQN" id="2bFLxpRxx$$" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="M55rT" id="2bFLxpRxx$N" role="M55rN">
        <property role="TrG5h" value="a_des" />
        <node concept="2fgwQN" id="2bFLxpRxx_d" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="M55rT" id="2bFLxpRxx_u" role="M55rN">
        <property role="TrG5h" value="psi_des" />
        <node concept="2fgwQN" id="2bFLxpRxx_P" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="M55rT" id="2bFLxpRxxA8" role="M55rN">
        <property role="TrG5h" value="dpsi_des" />
        <node concept="2fgwQN" id="2bFLxpRxxB4" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
    </node>
    <node concept="1QD3A2" id="2bFLxpRxvf6" role="2IDCrN">
      <node concept="TU7Tm" id="2bFLxpRxvf8" role="TU7Tn">
        <node concept="6$MA7" id="2bFLxpRxvfa" role="6$MA4">
          <property role="TrG5h" value="actuationCmdBus" />
          <ref role="6$MA3" to="cmup:2Puzg$LxGk_" resolve="default" />
        </node>
      </node>
      <node concept="M55rT" id="2bFLxpRxvfV" role="M55rN">
        <property role="TrG5h" value="steering_cmd" />
        <node concept="M2TRg" id="662_HI6t9jk" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <ref role="M2TRh" node="2bFLxpRxy_J" resolve="steerCmd" />
        </node>
      </node>
      <node concept="M55rT" id="2bFLxpRxxwO" role="M55rN">
        <property role="TrG5h" value="decel_cmd" />
        <node concept="M2TRg" id="662_HI6t9jJ" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <ref role="M2TRh" node="2bFLxpRxyGn" resolve="brakeCmd" />
        </node>
      </node>
      <node concept="M55rT" id="2bFLxpRxxxD" role="M55rN">
        <property role="TrG5h" value="accel_cmd" />
        <node concept="M2TRg" id="662_HI6t9ka" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <ref role="M2TRh" node="2bFLxpRxyN9" resolve="accelCmd" />
        </node>
      </node>
    </node>
    <node concept="1QD3A2" id="Z2Xv5FRO_A" role="2IDCrN">
      <node concept="TU7Tm" id="Z2Xv5FRO_C" role="TU7Tn">
        <node concept="6$MA7" id="Z2Xv5FRO_E" role="6$MA4">
          <property role="TrG5h" value="contextualAwarenssBus" />
          <ref role="6$MA3" to="cmup:2Puzg$LxGk_" resolve="default" />
        </node>
      </node>
      <node concept="M55rT" id="662_HI6tbXp" role="M55rN">
        <property role="TrG5h" value="objectBus" />
        <node concept="M2TRg" id="662_HI6tbYd" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <ref role="M2TRh" node="Z2Xv5FROW_" resolve="objectBus" />
        </node>
      </node>
    </node>
    <node concept="1QD3A2" id="Z2Xv5FROW_" role="2IDCrN">
      <node concept="TU7Tm" id="Z2Xv5FROWB" role="TU7Tn">
        <node concept="6$MA7" id="Z2Xv5FROWD" role="6$MA4">
          <property role="TrG5h" value="objectBus" />
          <ref role="6$MA3" to="cmup:2Puzg$LxGk_" resolve="default" />
        </node>
      </node>
      <node concept="M55rT" id="662_HI6t9DW" role="M55rN">
        <property role="TrG5h" value="x" />
        <node concept="2fgwQN" id="662_HI6t9Et" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="M55rT" id="662_HI6t9EI" role="M55rN">
        <property role="TrG5h" value="y" />
        <node concept="2fgwQN" id="662_HI6t9Fj" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="M55rT" id="662_HI6t9FA" role="M55rN">
        <property role="TrG5h" value="yaw" />
        <node concept="2fgwQN" id="662_HI6t9Gi" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
    </node>
    <node concept="1QD3A2" id="2bFLxpRxxDb" role="2IDCrN">
      <node concept="TU7Tm" id="2bFLxpRxxDd" role="TU7Tn">
        <node concept="6$MA7" id="2bFLxpRxxDf" role="6$MA4">
          <property role="TrG5h" value="wpFollower" />
          <ref role="6$MA3" to="cmup:2Puzg$LxGk_" resolve="default" />
        </node>
      </node>
      <node concept="M55rT" id="2bFLxpRxxEl" role="M55rN">
        <property role="TrG5h" value="v_des" />
        <node concept="2fgwQN" id="2bFLxpRxxEF" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="M55rT" id="2bFLxpRxxEU" role="M55rN">
        <property role="TrG5h" value="a_des" />
        <node concept="2fgwQN" id="2bFLxpRxxFk" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="M55rT" id="2bFLxpRxxF_" role="M55rN">
        <property role="TrG5h" value="psi_des" />
        <node concept="2fgwQN" id="2bFLxpRxxFW" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="M55rT" id="2bFLxpRxxGf" role="M55rN">
        <property role="TrG5h" value="dpsi_des" />
        <node concept="2fgwQN" id="2bFLxpRxxGR" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
    </node>
    <node concept="1QD3A2" id="2bFLxpRxxYT" role="2IDCrN">
      <node concept="TU7Tm" id="2bFLxpRxxYV" role="TU7Tn">
        <node concept="6$MA7" id="2bFLxpRxxYX" role="6$MA4">
          <property role="TrG5h" value="wayPoints" />
          <ref role="6$MA3" to="cmup:2Puzg$LxGk_" resolve="default" />
        </node>
      </node>
      <node concept="M55rT" id="2bFLxpRxy14" role="M55rN">
        <property role="TrG5h" value="finalWayPoint" />
        <node concept="M2TRg" id="2bFLxpRxy1N" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <ref role="M2TRh" node="2bFLxpRxxDb" resolve="wpFollower" />
        </node>
      </node>
      <node concept="M55rT" id="2bFLxpRxy22" role="M55rN">
        <property role="TrG5h" value="currentWayPoint" />
        <node concept="M2TRg" id="2bFLxpRxy2A" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <ref role="M2TRh" node="2bFLxpRxxDb" resolve="wpFollower" />
        </node>
      </node>
      <node concept="M55rT" id="2bFLxpRxy2R" role="M55rN">
        <property role="TrG5h" value="finalWayPointIndex" />
        <node concept="3TlMh2" id="2bFLxpRxy3t" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="M55rT" id="2bFLxpRxy3N" role="M55rN">
        <property role="TrG5h" value="currentWayPointIndex" />
        <node concept="3TlMh2" id="2bFLxpRxy4_" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
    </node>
    <node concept="1QD3A2" id="2bFLxpRxygp" role="2IDCrN">
      <node concept="TU7Tm" id="2bFLxpRxygr" role="TU7Tn">
        <node concept="6$MA7" id="2bFLxpRxygt" role="6$MA4">
          <property role="TrG5h" value="functionFeatures" />
          <ref role="6$MA3" to="cmup:2Puzg$LxGk_" resolve="default" />
        </node>
      </node>
      <node concept="M55rT" id="2bFLxpRxyj7" role="M55rN">
        <property role="TrG5h" value="wpFollowerFn" />
        <node concept="M2TRg" id="2bFLxpRxyjG" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <ref role="M2TRh" node="2bFLxpRxxDb" resolve="wpFollower" />
        </node>
      </node>
    </node>
    <node concept="2Yb5ft" id="440z1WXyymo" role="2IDCrN" />
    <node concept="2XIuhl" id="4p4xuWB67UM" role="2IDCrN">
      <property role="229S13" value="true" />
      <node concept="2ShzD6" id="4p4xuWB67UO" role="2XIuhb">
        <property role="TrG5h" value="CASTArchitecture_SingleVehicle" />
        <node concept="24sZga" id="4p4xuWB67Vi" role="24jtvR">
          <property role="TrG5h" value="VehicleDynamics" />
          <ref role="1ueJO6" node="4p4xuWB67V3" resolve="vehicle" />
        </node>
        <node concept="24sZga" id="4p4xuWB680d" role="24jtvR">
          <property role="TrG5h" value="Controller" />
          <ref role="1ueJO6" node="4p4xuWB67VE" resolve="controller" />
        </node>
        <node concept="24sZga" id="3AUo3sYYxJS" role="24jtvR">
          <property role="TrG5h" value="Monitor" />
          <ref role="1ueJO6" node="3AUo3sYYriy" resolve="monitor" />
        </node>
        <node concept="24sZga" id="3AUo3sYYxKr" role="24jtvR">
          <property role="TrG5h" value="VehStateBusUnitDelayAndInit" />
          <ref role="1ueJO6" node="3AUo3sYYrxP" resolve="vehStateBusUnitDelayAndInit" />
        </node>
        <node concept="2YaWgg" id="Z2Xv5FR_KU" role="24jtvR" />
        <node concept="M1vd0" id="Z2Xv5FR_LH" role="24jtvR">
          <ref role="22ati1" node="3AUo3sYYsEB" resolve="prescanSimData" />
          <node concept="TU7Tm" id="Z2Xv5FR_LJ" role="TU7Tn">
            <node concept="6$MA7" id="Z2Xv5FR_LL" role="6$MA4">
              <property role="TrG5h" value="PreScanIn" />
              <ref role="6$MA3" to="cmup:2Puzg$LxGk_" resolve="default" />
            </node>
          </node>
        </node>
        <node concept="M1vdf" id="Z2Xv5FR_MI" role="24jtvR">
          <ref role="22ati1" node="2bFLxpRxxIa" resolve="vehState" />
          <node concept="TU7Tm" id="Z2Xv5FR_MK" role="TU7Tn">
            <node concept="6$MA7" id="Z2Xv5FR_MM" role="6$MA4">
              <property role="TrG5h" value="VehicleStateBus" />
              <ref role="6$MA3" to="cmup:2Puzg$LxGk_" resolve="default" />
            </node>
          </node>
        </node>
        <node concept="M1vdf" id="Z2Xv5FR_NP" role="24jtvR">
          <ref role="22ati1" node="2bFLxpRxymB" resolve="controllerMainBus" />
          <node concept="TU7Tm" id="Z2Xv5FR_NR" role="TU7Tn">
            <node concept="6$MA7" id="Z2Xv5FR_NT" role="6$MA4">
              <property role="TrG5h" value="ControllerMainBus" />
              <ref role="6$MA3" to="cmup:2Puzg$LxGk_" resolve="default" />
            </node>
          </node>
        </node>
        <node concept="M1vdf" id="Z2Xv5FR_P2" role="24jtvR">
          <ref role="22ati1" node="3AUo3sYYvka" resolve="prescanState" />
          <node concept="TU7Tm" id="Z2Xv5FR_P4" role="TU7Tn">
            <node concept="6$MA7" id="Z2Xv5FR_P6" role="6$MA4">
              <property role="TrG5h" value="PreScanOut" />
              <ref role="6$MA3" to="cmup:2Puzg$LxGk_" resolve="default" />
            </node>
          </node>
        </node>
        <node concept="2YaWgg" id="3AUo3sYYxKW" role="24jtvR" />
        <node concept="MvyPw" id="2bFLxpRxyZo" role="24jtvR">
          <node concept="MsoAp" id="2bFLxpRxyZu" role="Msok3">
            <ref role="Mso_s" node="4p4xuWB680d" resolve="Controller" />
            <ref role="Mso_u" node="2bFLxpRxyXB" resolve="accelCmd" />
          </node>
          <node concept="MsoAp" id="2bFLxpRxyZz" role="Msok5">
            <ref role="Mso_s" node="4p4xuWB67Vi" resolve="VehicleDynamics" />
            <ref role="Mso_u" node="2bFLxpRxyRk" resolve="accelCmd" />
          </node>
        </node>
        <node concept="MvyPw" id="2bFLxpRxyZW" role="24jtvR">
          <node concept="MsoAp" id="2bFLxpRxz05" role="Msok3">
            <ref role="Mso_s" node="4p4xuWB680d" resolve="Controller" />
            <ref role="Mso_u" node="2bFLxpRxyYk" resolve="brakeCmd" />
          </node>
          <node concept="MsoAp" id="2bFLxpRxz0a" role="Msok5">
            <ref role="Mso_s" node="4p4xuWB67Vi" resolve="VehicleDynamics" />
            <ref role="Mso_u" node="2bFLxpRxyRJ" resolve="brakeCmd" />
          </node>
        </node>
        <node concept="MvyPw" id="2bFLxpRxz0A" role="24jtvR">
          <node concept="MsoAp" id="2bFLxpRxz0M" role="Msok3">
            <ref role="Mso_s" node="4p4xuWB680d" resolve="Controller" />
            <ref role="Mso_u" node="2bFLxpRxyvr" resolve="steerCmd" />
          </node>
          <node concept="MsoAp" id="2bFLxpRxz0R" role="Msok5">
            <ref role="Mso_s" node="4p4xuWB67Vi" resolve="VehicleDynamics" />
            <ref role="Mso_u" node="2bFLxpRxyQZ" resolve="steerCmd" />
          </node>
        </node>
        <node concept="MvyPw" id="Z2Xv5FR_Ik" role="24jtvR">
          <node concept="MsoAp" id="Z2Xv5FR_IE" role="Msok3">
            <ref role="Mso_s" node="4p4xuWB680d" resolve="Controller" />
            <ref role="Mso_u" node="3AUo3sYYy0b" resolve="ControllerMainBus" />
          </node>
          <node concept="MsoAp" id="Z2Xv5FR_IJ" role="Msok5">
            <ref role="Mso_s" node="3AUo3sYYxJS" resolve="Monitor" />
            <ref role="Mso_u" node="3AUo3sYYy8a" resolve="ControllerMainBus" />
          </node>
        </node>
        <node concept="2pBNOq" id="Z2Xv5FR_RF" role="24jtvR">
          <node concept="MsoAp" id="Z2Xv5FR_Sl" role="2pBNOt">
            <ref role="Mso_s" node="4p4xuWB680d" resolve="Controller" />
            <ref role="Mso_u" node="3AUo3sYYy0b" resolve="ControllerMainBus" />
          </node>
          <node concept="MvyNu" id="Z2Xv5FR_Sn" role="2pBNO2">
            <ref role="MvyNv" node="Z2Xv5FR_NP" resolve="ControllerMainBus" />
          </node>
        </node>
        <node concept="2pBNOq" id="Z2Xv5FR_Ql" role="24jtvR">
          <node concept="MsoAp" id="Z2Xv5FR_QW" role="2pBNOt">
            <ref role="Mso_s" node="4p4xuWB680d" resolve="Controller" />
            <ref role="Mso_u" node="3AUo3sYYxU6" resolve="PreScanSimData" />
          </node>
          <node concept="MvyNu" id="Z2Xv5FR_QY" role="2pBNO2">
            <ref role="MvyNv" node="Z2Xv5FR_LH" resolve="PreScanIn" />
          </node>
        </node>
        <node concept="2YaWgg" id="Z2Xv5FR_JS" role="24jtvR" />
        <node concept="MvyPw" id="2bFLxpRxz1m" role="24jtvR">
          <node concept="MsoAp" id="2bFLxpRxz1_" role="Msok3">
            <ref role="Mso_s" node="4p4xuWB67Vi" resolve="VehicleDynamics" />
            <ref role="Mso_u" node="2bFLxpRxySg" resolve="VehStatesBus" />
          </node>
          <node concept="MsoAp" id="2bFLxpRxz1E" role="Msok5">
            <ref role="Mso_u" node="3AUo3sYYy8p" resolve="VehicleStateBus" />
            <ref role="Mso_s" node="3AUo3sYYxKr" resolve="VehStateBusUnitDelayAndInit" />
          </node>
        </node>
        <node concept="MvyPw" id="Z2Xv5FR_T7" role="24jtvR">
          <node concept="MsoAp" id="Z2Xv5FR_TP" role="Msok3">
            <ref role="Mso_s" node="4p4xuWB67Vi" resolve="VehicleDynamics" />
            <ref role="Mso_u" node="2bFLxpRxySg" resolve="VehStatesBus" />
          </node>
          <node concept="MsoAp" id="Z2Xv5FR_TU" role="Msok5">
            <ref role="Mso_s" node="3AUo3sYYxJS" resolve="Monitor" />
            <ref role="Mso_u" node="3AUo3sYYy7W" resolve="VehicleStateBus" />
          </node>
        </node>
        <node concept="2pBNOq" id="Z2Xv5FR_V_" role="24jtvR">
          <node concept="MsoAp" id="Z2Xv5FR_Wl" role="2pBNOt">
            <ref role="Mso_s" node="4p4xuWB67Vi" resolve="VehicleDynamics" />
            <ref role="Mso_u" node="2bFLxpRxySg" resolve="VehStatesBus" />
          </node>
          <node concept="MvyNu" id="Z2Xv5FR_Wn" role="2pBNO2">
            <ref role="MvyNv" node="Z2Xv5FR_MI" resolve="VehicleStateBus" />
          </node>
        </node>
        <node concept="2pBNOq" id="Z2Xv5FR_Xd" role="24jtvR">
          <node concept="MsoAp" id="Z2Xv5FR_Y0" role="2pBNOt">
            <ref role="Mso_s" node="4p4xuWB67Vi" resolve="VehicleDynamics" />
            <ref role="Mso_u" node="3AUo3sYYy7s" resolve="PreScanState" />
          </node>
          <node concept="MvyNu" id="Z2Xv5FR_Y2" role="2pBNO2">
            <ref role="MvyNv" node="Z2Xv5FR_P2" resolve="PreScanOut" />
          </node>
        </node>
        <node concept="2YaWgg" id="Z2Xv5FR_Y6" role="24jtvR" />
        <node concept="MvyPw" id="Z2Xv5FR_ZL" role="24jtvR">
          <node concept="MsoAp" id="Z2Xv5FRA0D" role="Msok3">
            <ref role="Mso_s" node="3AUo3sYYxKr" resolve="VehStateBusUnitDelayAndInit" />
            <ref role="Mso_u" node="3AUo3sYYyul" resolve="VehicleStateBusDelayed" />
          </node>
          <node concept="MsoAp" id="Z2Xv5FRA0I" role="Msok5">
            <ref role="Mso_s" node="4p4xuWB680d" resolve="Controller" />
            <ref role="Mso_u" node="2bFLxpRxyuU" resolve="VehStateLast" />
          </node>
        </node>
        <node concept="MvyPw" id="Z2Xv5FRA2H" role="24jtvR">
          <node concept="MsoAp" id="Z2Xv5FRA3C" role="Msok3">
            <ref role="Mso_s" node="3AUo3sYYxKr" resolve="VehStateBusUnitDelayAndInit" />
            <ref role="Mso_u" node="3AUo3sYYyul" resolve="VehicleStateBusDelayed" />
          </node>
          <node concept="MsoAp" id="Z2Xv5FRA3H" role="Msok5">
            <ref role="Mso_s" node="4p4xuWB67Vi" resolve="VehicleDynamics" />
            <ref role="Mso_u" node="3AUo3sYYy3o" resolve="VehStateLast" />
          </node>
        </node>
      </node>
      <node concept="37mRI7" id="4p4xuWB67Vl" role="lGtFl">
        <node concept="37mRIm" id="4p4xuWB67Vm" role="37mRID">
          <property role="37mO49" value="5063319143270874834" />
          <node concept="gqqVs" id="4p4xuWB67Vk" role="37mO4d">
            <property role="gqqTZ" value="330.0" />
            <property role="gqqTW" value="43.0" />
            <property role="gqqTX" value="126.0" />
            <property role="gqqTy" value="57.0" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
            <node concept="1pa3jb" id="2bFLxpRxz2y" role="1pap1a">
              <property role="1pa3iD" value="vehStates" />
              <property role="2gRgW$" value="1610612734" />
            </node>
            <node concept="1pa3jb" id="2bFLxpRxz2z" role="1pap1a">
              <property role="1pa3iD" value="steercmd" />
              <property role="2gRgW$" value="134217727" />
            </node>
            <node concept="1pa3jb" id="2bFLxpRxz2$" role="1pap1a">
              <property role="1pa3iD" value="accelcmd" />
              <property role="2gRgW$" value="536870911" />
            </node>
            <node concept="1pa3jb" id="2bFLxpRxz2_" role="1pap1a">
              <property role="1pa3iD" value="decelcmd" />
              <property role="2gRgW$" value="939524095" />
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="4p4xuWB6854" role="37mRID">
          <property role="37mO49" value="5063319143270875149" />
          <node concept="gqqVs" id="4p4xuWB6853" role="37mO4d">
            <property role="gqqTZ" value="74.0" />
            <property role="gqqTW" value="43.0" />
            <property role="gqqTX" value="182.0" />
            <property role="gqqTy" value="57.0" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
            <node concept="1pa3jb" id="2bFLxpRxz2A" role="1pap1a">
              <property role="1pa3iD" value="steercmd" />
              <property role="2gRgW$" value="1207959550" />
            </node>
            <node concept="1pa3jb" id="2bFLxpRxz2B" role="1pap1a">
              <property role="1pa3iD" value="accelcmd" />
              <property role="2gRgW$" value="1610612734" />
            </node>
            <node concept="1pa3jb" id="2bFLxpRxz2C" role="1pap1a">
              <property role="1pa3iD" value="decelcmd" />
              <property role="2gRgW$" value="2013265918" />
            </node>
            <node concept="1pa3jb" id="2bFLxpRxz2D" role="1pap1a">
              <property role="1pa3iD" value="CtlBusIn" />
              <property role="2gRgW$" value="805306367" />
            </node>
            <node concept="1pa3jb" id="2bFLxpRxz2E" role="1pap1a">
              <property role="1pa3iD" value="sensBus" />
              <property role="2gRgW$" value="268435455" />
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="2bFLxpRxz2G" role="37mRID">
          <property role="37mO49" value="2516322616613416920" />
          <node concept="2VclpC" id="2bFLxpRxz2F" role="37mO4d">
            <node concept="3ul5H1" id="2bFLxpRxz2H" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="2bFLxpRxz2I" role="3ul5Gz">
                <node concept="2VclrF" id="2bFLxpRxz2J" role="3wpmZR">
                  <property role="2Vclpx" value="-266.0738198943075" />
                  <property role="2Vclpz" value="-124.63333333333333" />
                </node>
                <node concept="2VclrF" id="2bFLxpRxz2K" role="3wpmZP">
                  <property role="2Vclpx" value="293.0" />
                  <property role="2Vclpz" value="94.98011477366089" />
                </node>
              </node>
            </node>
            <node concept="3ul5H1" id="2bFLxpRxz2L" role="3ul5Gx">
              <property role="3ul5GH" value="startRole" />
              <node concept="3wpmZ1" id="2bFLxpRxz2M" role="3ul5Gz">
                <node concept="2VclrF" id="2bFLxpRxz2N" role="3wpmZR">
                  <property role="2Vclpx" value="-76.25233700959544" />
                  <property role="2Vclpz" value="-50.75747695210295" />
                </node>
                <node concept="2VclrF" id="2bFLxpRxz2O" role="3wpmZP">
                  <property role="2Vclpx" value="282.4852813742386" />
                  <property role="2Vclpz" value="94.98011477366089" />
                </node>
              </node>
            </node>
            <node concept="3ul5H1" id="2bFLxpRxz2P" role="3ul5Gx">
              <property role="3ul5GH" value="endRole" />
              <node concept="3wpmZ1" id="2bFLxpRxz2Q" role="3ul5Gz">
                <node concept="2VclrF" id="2bFLxpRxz2R" role="3wpmZR">
                  <property role="2Vclpx" value="-265.6916093278859" />
                  <property role="2Vclpz" value="-14.972592685212291" />
                </node>
                <node concept="2VclrF" id="2bFLxpRxz2S" role="3wpmZP">
                  <property role="2Vclpx" value="303.5147186257614" />
                  <property role="2Vclpz" value="94.98011477366089" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="2bFLxpRxz2U" role="37mRID">
          <property role="37mO49" value="2516322616613416956" />
          <node concept="2VclpC" id="2bFLxpRxz2T" role="37mO4d">
            <node concept="3ul5H1" id="2bFLxpRxz2V" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="2bFLxpRxz2W" role="3ul5Gz">
                <node concept="2VclrF" id="2bFLxpRxz2X" role="3wpmZR">
                  <property role="2Vclpx" value="-266.97669308050195" />
                  <property role="2Vclpz" value="-154.0" />
                </node>
                <node concept="2VclrF" id="2bFLxpRxz2Y" role="3wpmZP">
                  <property role="2Vclpx" value="293.0" />
                  <property role="2Vclpz" value="114.0" />
                </node>
              </node>
            </node>
            <node concept="3ul5H1" id="2bFLxpRxz2Z" role="3ul5Gx">
              <property role="3ul5GH" value="startRole" />
              <node concept="3wpmZ1" id="2bFLxpRxz30" role="3ul5Gz">
                <node concept="2VclrF" id="2bFLxpRxz31" role="3wpmZR">
                  <property role="2Vclpx" value="-75.19422996510892" />
                  <property role="2Vclpz" value="-48.75945561062286" />
                </node>
                <node concept="2VclrF" id="2bFLxpRxz32" role="3wpmZP">
                  <property role="2Vclpx" value="282.4852813742386" />
                  <property role="2Vclpz" value="114.0" />
                </node>
              </node>
            </node>
            <node concept="3ul5H1" id="2bFLxpRxz33" role="3ul5Gx">
              <property role="3ul5GH" value="endRole" />
              <node concept="3wpmZ1" id="2bFLxpRxz34" role="3ul5Gz">
                <node concept="2VclrF" id="2bFLxpRxz35" role="3wpmZR">
                  <property role="2Vclpx" value="-265.7662512927526" />
                  <property role="2Vclpz" value="-14.591204149652768" />
                </node>
                <node concept="2VclrF" id="2bFLxpRxz36" role="3wpmZP">
                  <property role="2Vclpx" value="303.5147186257614" />
                  <property role="2Vclpz" value="114.0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="2bFLxpRxz38" role="37mRID">
          <property role="37mO49" value="2516322616613416998" />
          <node concept="2VclpC" id="2bFLxpRxz37" role="37mO4d">
            <node concept="3ul5H1" id="2bFLxpRxz39" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="2bFLxpRxz3a" role="3ul5Gz">
                <node concept="2VclrF" id="2bFLxpRxz3b" role="3wpmZR">
                  <property role="2Vclpx" value="-264.0562425675729" />
                  <property role="2Vclpz" value="-104.0" />
                </node>
                <node concept="2VclrF" id="2bFLxpRxz3c" role="3wpmZP">
                  <property role="2Vclpx" value="293.0" />
                  <property role="2Vclpz" value="75.9602295473218" />
                </node>
              </node>
            </node>
            <node concept="3ul5H1" id="2bFLxpRxz3d" role="3ul5Gx">
              <property role="3ul5GH" value="startRole" />
              <node concept="3wpmZ1" id="2bFLxpRxz3e" role="3ul5Gz">
                <node concept="2VclrF" id="2bFLxpRxz3f" role="3wpmZR">
                  <property role="2Vclpx" value="-79.1286262550947" />
                  <property role="2Vclpz" value="-54.057865140806406" />
                </node>
                <node concept="2VclrF" id="2bFLxpRxz3g" role="3wpmZP">
                  <property role="2Vclpx" value="282.4852813742386" />
                  <property role="2Vclpz" value="75.9602295473218" />
                </node>
              </node>
            </node>
            <node concept="3ul5H1" id="2bFLxpRxz3h" role="3ul5Gx">
              <property role="3ul5GH" value="endRole" />
              <node concept="3wpmZ1" id="2bFLxpRxz3i" role="3ul5Gz">
                <node concept="2VclrF" id="2bFLxpRxz3j" role="3wpmZR">
                  <property role="2Vclpx" value="-265.5752481320801" />
                  <property role="2Vclpz" value="-15.481676400521025" />
                </node>
                <node concept="2VclrF" id="2bFLxpRxz3k" role="3wpmZP">
                  <property role="2Vclpx" value="303.5147186257614" />
                  <property role="2Vclpz" value="75.9602295473218" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="2bFLxpRxz3m" role="37mRID">
          <property role="37mO49" value="2516322616613417046" />
          <node concept="2VclpC" id="2bFLxpRxz3l" role="37mO4d">
            <node concept="2VclrF" id="2bFLxpRxz3n" role="2Vcluh">
              <property role="2Vclpx" value="490.0" />
              <property role="2Vclpz" value="71.5" />
            </node>
            <node concept="2VclrF" id="2bFLxpRxz3o" role="2Vcluh">
              <property role="2Vclpx" value="490.0" />
              <property role="2Vclpz" value="27.0" />
            </node>
            <node concept="2VclrF" id="2bFLxpRxz3p" role="2Vcluh">
              <property role="2Vclpx" value="40.0" />
              <property role="2Vclpz" value="27.0" />
            </node>
            <node concept="2VclrF" id="2bFLxpRxz3q" role="2Vcluh">
              <property role="2Vclpx" value="40.0" />
              <property role="2Vclpz" value="61.95000076293945" />
            </node>
            <node concept="3ul5H1" id="2bFLxpRxz3r" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="2bFLxpRxz3s" role="3ul5Gz">
                <node concept="2VclrF" id="2bFLxpRxz3t" role="3wpmZR">
                  <property role="2Vclpx" value="-137.85664018537653" />
                  <property role="2Vclpz" value="-28.0" />
                </node>
                <node concept="2VclrF" id="2bFLxpRxz3u" role="3wpmZP">
                  <property role="2Vclpx" value="269.77499990973905" />
                  <property role="2Vclpz" value="27.0" />
                </node>
              </node>
            </node>
            <node concept="3ul5H1" id="2bFLxpRxz3v" role="3ul5Gx">
              <property role="3ul5GH" value="startRole" />
              <node concept="3wpmZ1" id="2bFLxpRxz3w" role="3ul5Gz">
                <node concept="2VclrF" id="2bFLxpRxz3x" role="3wpmZR">
                  <property role="2Vclpx" value="-266.68312165020023" />
                  <property role="2Vclpz" value="-12.616397171873501" />
                </node>
                <node concept="2VclrF" id="2bFLxpRxz3y" role="3wpmZP">
                  <property role="2Vclpx" value="477.3566551191439" />
                  <property role="2Vclpz" value="86.4421348591936" />
                </node>
              </node>
            </node>
            <node concept="3ul5H1" id="2bFLxpRxz3z" role="3ul5Gx">
              <property role="3ul5GH" value="endRole" />
              <node concept="3wpmZ1" id="2bFLxpRxz3$" role="3ul5Gz">
                <node concept="2VclrF" id="2bFLxpRxz3_" role="3wpmZR">
                  <property role="2Vclpx" value="-70.50507011330888" />
                  <property role="2Vclpz" value="-35.375040937772205" />
                </node>
                <node concept="2VclrF" id="2bFLxpRxz3A" role="3wpmZP">
                  <property role="2Vclpx" value="52.64334488085612" />
                  <property role="2Vclpz" value="76.8921349945801" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2Yb5ft" id="4p4xuWB67US" role="2IDCrN" />
    <node concept="2XIuhl" id="4p4xuWB67V1" role="2IDCrN">
      <node concept="2ShzD6" id="4p4xuWB67V3" role="2XIuhb">
        <property role="TrG5h" value="vehicle" />
        <node concept="24sZga" id="4p4xuWB684K" role="24jtvR">
          <property role="TrG5h" value="Sensors" />
          <ref role="1ueJO6" node="4p4xuWB682U" resolve="sensors" />
        </node>
        <node concept="24sZga" id="4p4xuWB684Q" role="24jtvR">
          <property role="TrG5h" value="Actuators" />
          <ref role="1ueJO6" node="4p4xuWB683w" resolve="actuators" />
        </node>
        <node concept="24sZga" id="4p4xuWB684Y" role="24jtvR">
          <property role="TrG5h" value="VehicleDynamics" />
          <ref role="1ueJO6" node="4p4xuWB6849" resolve="vehicleDynamics" />
        </node>
        <node concept="2YaWgg" id="3AUo3sYYy0H" role="24jtvR" />
        <node concept="M1vd0" id="2bFLxpRxyRk" role="24jtvR">
          <ref role="22ati1" node="2bFLxpRxyN9" resolve="accelCmd" />
          <node concept="TU7Tm" id="2bFLxpRxyRm" role="TU7Tn">
            <node concept="6$MA7" id="2bFLxpRxyRo" role="6$MA4">
              <property role="TrG5h" value="accelCmd" />
              <ref role="6$MA3" to="cmup:2Puzg$LxGk_" resolve="default" />
            </node>
          </node>
        </node>
        <node concept="M1vd0" id="2bFLxpRxyRJ" role="24jtvR">
          <ref role="22ati1" node="2bFLxpRxyGn" resolve="brakeCmd" />
          <node concept="TU7Tm" id="2bFLxpRxyRL" role="TU7Tn">
            <node concept="6$MA7" id="2bFLxpRxyRN" role="6$MA4">
              <property role="TrG5h" value="brakeCmd" />
              <ref role="6$MA3" to="cmup:2Puzg$LxGk_" resolve="default" />
            </node>
          </node>
        </node>
        <node concept="M1vd0" id="2bFLxpRxyQZ" role="24jtvR">
          <ref role="22ati1" node="2bFLxpRxy_J" resolve="steerCmd" />
          <node concept="TU7Tm" id="2bFLxpRxyR1" role="TU7Tn">
            <node concept="6$MA7" id="2bFLxpRxyR3" role="6$MA4">
              <property role="TrG5h" value="steerCmd" />
              <ref role="6$MA3" to="cmup:2Puzg$LxGk_" resolve="default" />
            </node>
          </node>
        </node>
        <node concept="M1vd0" id="3AUo3sYYy3o" role="24jtvR">
          <ref role="22ati1" node="3AUo3sYYszJ" resolve="vehStateLast" />
          <node concept="TU7Tm" id="3AUo3sYYy3q" role="TU7Tn">
            <node concept="6$MA7" id="3AUo3sYYy3s" role="6$MA4">
              <property role="TrG5h" value="VehStateLast" />
              <ref role="6$MA3" to="cmup:2Puzg$LxGk_" resolve="default" />
            </node>
          </node>
        </node>
        <node concept="2YaWgg" id="3AUo3sYYy55" role="24jtvR" />
        <node concept="M1vdf" id="2bFLxpRxySg" role="24jtvR">
          <ref role="22ati1" node="2bFLxpRxxIa" resolve="vehState" />
          <node concept="TU7Tm" id="2bFLxpRxySi" role="TU7Tn">
            <node concept="6$MA7" id="2bFLxpRxySk" role="6$MA4">
              <property role="TrG5h" value="VehStatesBus" />
              <ref role="6$MA3" to="cmup:2Puzg$LxGk_" resolve="default" />
            </node>
          </node>
        </node>
        <node concept="M1vdf" id="3AUo3sYYy7s" role="24jtvR">
          <ref role="22ati1" node="3AUo3sYYvka" resolve="prescanState" />
          <node concept="TU7Tm" id="3AUo3sYYy7u" role="TU7Tn">
            <node concept="6$MA7" id="3AUo3sYYy7w" role="6$MA4">
              <property role="TrG5h" value="PreScanState" />
              <ref role="6$MA3" to="cmup:2Puzg$LxGk_" resolve="default" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2Yb5ft" id="2bFLxpRxyTT" role="2IDCrN" />
    <node concept="2XIuhl" id="4p4xuWB682S" role="2IDCrN">
      <node concept="2ShzD6" id="4p4xuWB682U" role="2XIuhb">
        <property role="TrG5h" value="sensors" />
        <node concept="24sZga" id="4$SuO9Gz91r" role="24jtvR">
          <property role="TrG5h" value="RTK-GPS" />
          <ref role="1ueJO6" node="4$SuO9Gz7aF" resolve="rtk-gps" />
        </node>
        <node concept="24sZga" id="4$SuO9Gz91w" role="24jtvR">
          <property role="TrG5h" value="IMU" />
          <ref role="1ueJO6" node="4$SuO9Gz7wU" resolve="imu" />
        </node>
        <node concept="24sZga" id="4$SuO9Gz91C" role="24jtvR">
          <property role="TrG5h" value="Radar" />
          <ref role="1ueJO6" node="4$SuO9Gz8vK" resolve="radar" />
        </node>
        <node concept="24sZga" id="4$SuO9Gz91M" role="24jtvR">
          <property role="TrG5h" value="Lidar" />
          <ref role="1ueJO6" node="4$SuO9Gz8EX" resolve="lidar" />
        </node>
        <node concept="24sZga" id="4$SuO9Gz91Y" role="24jtvR">
          <property role="TrG5h" value="Camera" />
          <ref role="1ueJO6" node="4$SuO9Gz8Qd" resolve="camera" />
        </node>
      </node>
    </node>
    <node concept="2XIuhl" id="4p4xuWB683u" role="2IDCrN">
      <node concept="2ShzD6" id="4p4xuWB683w" role="2XIuhb">
        <property role="TrG5h" value="actuators" />
        <node concept="2YaWgg" id="4p4xuWB6845" role="24jtvR" />
      </node>
    </node>
    <node concept="2XIuhl" id="4p4xuWB6847" role="2IDCrN">
      <node concept="2ShzD6" id="4p4xuWB6849" role="2XIuhb">
        <property role="TrG5h" value="vehicleDynamics" />
      </node>
    </node>
    <node concept="2XIuhl" id="4$SuO9Gz7aD" role="2IDCrN">
      <node concept="2ShzD6" id="4$SuO9Gz7aF" role="2XIuhb">
        <property role="TrG5h" value="rtk-gps" />
        <node concept="2YaWgg" id="4$SuO9Gz7lK" role="24jtvR" />
      </node>
    </node>
    <node concept="2XIuhl" id="4$SuO9Gz7wS" role="2IDCrN">
      <node concept="2ShzD6" id="4$SuO9Gz7wU" role="2XIuhb">
        <property role="TrG5h" value="imu" />
      </node>
    </node>
    <node concept="2XIuhl" id="4$SuO9Gz8vI" role="2IDCrN">
      <node concept="2ShzD6" id="4$SuO9Gz8vK" role="2XIuhb">
        <property role="TrG5h" value="radar" />
      </node>
    </node>
    <node concept="2XIuhl" id="4$SuO9Gz8EV" role="2IDCrN">
      <node concept="2ShzD6" id="4$SuO9Gz8EX" role="2XIuhb">
        <property role="TrG5h" value="lidar" />
        <node concept="2YaWgg" id="4$SuO9Gz8Q9" role="24jtvR" />
      </node>
    </node>
    <node concept="2XIuhl" id="4$SuO9Gz8Qb" role="2IDCrN">
      <node concept="2ShzD6" id="4$SuO9Gz8Qd" role="2XIuhb">
        <property role="TrG5h" value="camera" />
        <node concept="2YaWgg" id="7CS0GWm6hbV" role="24jtvR" />
      </node>
    </node>
    <node concept="2XIuhl" id="4p4xuWB67VC" role="2IDCrN">
      <node concept="2ShzD6" id="4p4xuWB67VE" role="2XIuhb">
        <property role="TrG5h" value="controller" />
        <node concept="24sZga" id="4p4xuWB680D" role="24jtvR">
          <property role="TrG5h" value="SensorDataCollection" />
          <ref role="1ueJO6" node="4p4xuWB67Wk" resolve="sensorDataCollection" />
        </node>
        <node concept="24sZga" id="4p4xuWB680Q" role="24jtvR">
          <property role="TrG5h" value="SituationalAwareness" />
          <ref role="1ueJO6" node="4p4xuWB67Xv" resolve="situationalAwareness" />
        </node>
        <node concept="24sZga" id="4p4xuWB6810" role="24jtvR">
          <property role="TrG5h" value="FeaturedFunctions" />
          <ref role="1ueJO6" node="4p4xuWB67Yb" resolve="featuredFunctions" />
        </node>
        <node concept="24sZga" id="4p4xuWB681c" role="24jtvR">
          <property role="TrG5h" value="StrategicArbitration" />
          <ref role="1ueJO6" node="4p4xuWB67YV" resolve="strategicArbitration" />
        </node>
        <node concept="24sZga" id="4p4xuWB680I" role="24jtvR">
          <property role="TrG5h" value="Actuation" />
          <ref role="1ueJO6" node="3AUo3sYYq9I" resolve="actuation" />
        </node>
        <node concept="24sZga" id="Z2Xv5FRBvs" role="24jtvR">
          <property role="TrG5h" value="CtlMainBusUnitDelayAndInit" />
          <ref role="1ueJO6" node="2M92zfWTSPZ" resolve="ctlMainBusUnitDelayAndInit" />
        </node>
        <node concept="2YaWgg" id="3AUo3sYYxMk" role="24jtvR" />
        <node concept="M1vd0" id="2bFLxpRxyuU" role="24jtvR">
          <ref role="22ati1" node="3AUo3sYYszJ" resolve="vehStateLast" />
          <node concept="TU7Tm" id="2bFLxpRxyuW" role="TU7Tn">
            <node concept="6$MA7" id="2bFLxpRxyuY" role="6$MA4">
              <property role="TrG5h" value="VehStateLast" />
              <ref role="6$MA3" to="cmup:2Puzg$LxGk_" resolve="default" />
            </node>
          </node>
        </node>
        <node concept="M1vd0" id="3AUo3sYYxU6" role="24jtvR">
          <ref role="22ati1" node="3AUo3sYYsEB" resolve="prescanSimData" />
          <node concept="TU7Tm" id="3AUo3sYYxU8" role="TU7Tn">
            <node concept="6$MA7" id="3AUo3sYYxUa" role="6$MA4">
              <property role="TrG5h" value="PreScanSimData" />
              <ref role="6$MA3" to="cmup:2Puzg$LxGk_" resolve="default" />
            </node>
          </node>
        </node>
        <node concept="2YaWgg" id="3AUo3sYYxWb" role="24jtvR" />
        <node concept="M1vdf" id="2bFLxpRxyXB" role="24jtvR">
          <ref role="22ati1" node="2bFLxpRxyN9" resolve="accelCmd" />
          <node concept="TU7Tm" id="2bFLxpRxyXD" role="TU7Tn">
            <node concept="6$MA7" id="2bFLxpRxyXF" role="6$MA4">
              <property role="TrG5h" value="accelCmd" />
              <ref role="6$MA3" to="cmup:2Puzg$LxGk_" resolve="default" />
            </node>
          </node>
        </node>
        <node concept="M1vdf" id="2bFLxpRxyYk" role="24jtvR">
          <ref role="22ati1" node="2bFLxpRxyGn" resolve="brakeCmd" />
          <node concept="TU7Tm" id="2bFLxpRxyYm" role="TU7Tn">
            <node concept="6$MA7" id="2bFLxpRxyYo" role="6$MA4">
              <property role="TrG5h" value="brakeCmd" />
              <ref role="6$MA3" to="cmup:2Puzg$LxGk_" resolve="default" />
            </node>
          </node>
        </node>
        <node concept="M1vdf" id="2bFLxpRxyvr" role="24jtvR">
          <ref role="22ati1" node="2bFLxpRxy_J" resolve="steerCmd" />
          <node concept="TU7Tm" id="2bFLxpRxyvt" role="TU7Tn">
            <node concept="6$MA7" id="2bFLxpRxyvv" role="6$MA4">
              <property role="TrG5h" value="steerCmd" />
              <ref role="6$MA3" to="cmup:2Puzg$LxGk_" resolve="default" />
            </node>
          </node>
        </node>
        <node concept="M1vdf" id="3AUo3sYYy0b" role="24jtvR">
          <ref role="22ati1" node="2bFLxpRxymB" resolve="controllerMainBus" />
          <node concept="TU7Tm" id="3AUo3sYYy0d" role="TU7Tn">
            <node concept="6$MA7" id="3AUo3sYYy0f" role="6$MA4">
              <property role="TrG5h" value="ControllerMainBus" />
              <ref role="6$MA3" to="cmup:2Puzg$LxGk_" resolve="default" />
            </node>
          </node>
        </node>
        <node concept="2YaWgg" id="Z2Xv5FRAFp" role="24jtvR" />
        <node concept="2pBNOq" id="Z2Xv5FRAGg" role="24jtvR">
          <node concept="MsoAp" id="Z2Xv5FRAGH" role="2pBNOt">
            <ref role="Mso_s" node="4p4xuWB680D" resolve="SensorDataCollection" />
            <ref role="Mso_u" node="2M92zfWTSAt" resolve="VehicleStateLast" />
          </node>
          <node concept="MvyNu" id="Z2Xv5FRAGJ" role="2pBNO2">
            <ref role="MvyNv" node="2bFLxpRxyuU" resolve="VehStateLast" />
          </node>
        </node>
        <node concept="2pBNOq" id="Z2Xv5FRAHi" role="24jtvR">
          <node concept="MsoAp" id="Z2Xv5FRAHM" role="2pBNOt">
            <ref role="Mso_s" node="4p4xuWB680D" resolve="SensorDataCollection" />
            <ref role="Mso_u" node="2M92zfWTSAc" resolve="PreScanSimData" />
          </node>
          <node concept="MvyNu" id="Z2Xv5FRAHO" role="2pBNO2">
            <ref role="MvyNv" node="3AUo3sYYxU6" resolve="PreScanSimData" />
          </node>
        </node>
        <node concept="MvyPw" id="Z2Xv5FRAIq" role="24jtvR">
          <node concept="MsoAp" id="Z2Xv5FRAIY" role="Msok3">
            <ref role="Mso_s" node="4p4xuWB680D" resolve="SensorDataCollection" />
            <ref role="Mso_u" node="2M92zfWTVA8" resolve="PreScanSimDataBus" />
          </node>
          <node concept="MsoAp" id="Z2Xv5FRAJ3" role="Msok5">
            <ref role="Mso_s" node="4p4xuWB680Q" resolve="SituationalAwareness" />
            <ref role="Mso_u" node="Z2Xv5FRA6C" resolve="PreScanSimDataBus" />
          </node>
        </node>
        <node concept="MvyPw" id="Z2Xv5FRAKy" role="24jtvR">
          <node concept="MsoAp" id="Z2Xv5FRAL9" role="Msok3">
            <ref role="Mso_s" node="4p4xuWB680D" resolve="SensorDataCollection" />
            <ref role="Mso_u" node="2M92zfWTVAH" resolve="IdealSensorBus" />
          </node>
          <node concept="MsoAp" id="Z2Xv5FRALe" role="Msok5">
            <ref role="Mso_s" node="4p4xuWB680Q" resolve="SituationalAwareness" />
            <ref role="Mso_u" node="Z2Xv5FRA6Q" resolve="IdealSensorBus" />
          </node>
        </node>
        <node concept="MvyPw" id="Z2Xv5FRAMs" role="24jtvR">
          <node concept="MsoAp" id="Z2Xv5FRAN6" role="Msok3">
            <ref role="Mso_s" node="4p4xuWB680D" resolve="SensorDataCollection" />
            <ref role="Mso_u" node="Z2Xv5FRQ84" resolve="ConnectedBus" />
          </node>
          <node concept="MsoAp" id="Z2Xv5FRANb" role="Msok5">
            <ref role="Mso_s" node="4p4xuWB680Q" resolve="SituationalAwareness" />
            <ref role="Mso_u" node="Z2Xv5FRA7d" resolve="ConnectedBus" />
          </node>
        </node>
        <node concept="MvyPw" id="Z2Xv5FRAO8" role="24jtvR">
          <node concept="MsoAp" id="Z2Xv5FRAOP" role="Msok3">
            <ref role="Mso_s" node="4p4xuWB680D" resolve="SensorDataCollection" />
            <ref role="Mso_u" node="2M92zfWTVC9" resolve="ControllerMainBusOut" />
          </node>
          <node concept="MsoAp" id="Z2Xv5FRAOU" role="Msok5">
            <ref role="Mso_s" node="4p4xuWB680Q" resolve="SituationalAwareness" />
            <ref role="Mso_u" node="Z2Xv5FRA7E" resolve="ControllerMainBusIn" />
          </node>
        </node>
        <node concept="2YaWgg" id="Z2Xv5FRAQG" role="24jtvR" />
        <node concept="MvyPw" id="Z2Xv5FRAS9" role="24jtvR">
          <node concept="MsoAp" id="Z2Xv5FRASU" role="Msok3">
            <ref role="Mso_s" node="4p4xuWB680Q" resolve="SituationalAwareness" />
            <ref role="Mso_u" node="Z2Xv5FRA8s" resolve="SituationBus" />
          </node>
          <node concept="MsoAp" id="Z2Xv5FRASZ" role="Msok5">
            <ref role="Mso_s" node="4p4xuWB6810" resolve="FeaturedFunctions" />
            <ref role="Mso_u" node="Z2Xv5FRArk" resolve="SituationBus" />
          </node>
        </node>
        <node concept="MvyPw" id="Z2Xv5FRAV$" role="24jtvR">
          <node concept="MsoAp" id="Z2Xv5FRAWp" role="Msok3">
            <ref role="Mso_s" node="4p4xuWB680Q" resolve="SituationalAwareness" />
            <ref role="Mso_u" node="Z2Xv5FRA97" resolve="ControllerMainBusOut" />
          </node>
          <node concept="MsoAp" id="Z2Xv5FRAWu" role="Msok5">
            <ref role="Mso_s" node="4p4xuWB6810" resolve="FeaturedFunctions" />
            <ref role="Mso_u" node="Z2Xv5FRAry" resolve="ControllerMainBusIn" />
          </node>
        </node>
        <node concept="2YaWgg" id="Z2Xv5FRAXC" role="24jtvR" />
        <node concept="MvyPw" id="Z2Xv5FRAZl" role="24jtvR">
          <node concept="MsoAp" id="Z2Xv5FRB0e" role="Msok3">
            <ref role="Mso_s" node="4p4xuWB6810" resolve="FeaturedFunctions" />
            <ref role="Mso_u" node="Z2Xv5FRAs2" resolve="FeatureReqBus" />
          </node>
          <node concept="MsoAp" id="Z2Xv5FRB0j" role="Msok5">
            <ref role="Mso_s" node="4p4xuWB681c" resolve="StrategicArbitration" />
            <ref role="Mso_u" node="Z2Xv5FRAsR" resolve="FeatureReqBus" />
          </node>
        </node>
        <node concept="MvyPw" id="Z2Xv5FRB25" role="24jtvR">
          <node concept="MsoAp" id="Z2Xv5FRB31" role="Msok3">
            <ref role="Mso_s" node="4p4xuWB6810" resolve="FeaturedFunctions" />
            <ref role="Mso_u" node="Z2Xv5FRAsx" resolve="ControllerMainBusOut" />
          </node>
          <node concept="MsoAp" id="Z2Xv5FRB36" role="Msok5">
            <ref role="Mso_s" node="4p4xuWB681c" resolve="StrategicArbitration" />
            <ref role="Mso_u" node="Z2Xv5FRAt5" resolve="ControllerMainBusIn" />
          </node>
        </node>
        <node concept="2YaWgg" id="Z2Xv5FRB4k" role="24jtvR" />
        <node concept="MvyPw" id="Z2Xv5FRB6f" role="24jtvR">
          <node concept="MsoAp" id="Z2Xv5FRB7f" role="Msok3">
            <ref role="Mso_s" node="4p4xuWB681c" resolve="StrategicArbitration" />
            <ref role="Mso_u" node="Z2Xv5FRAt_" resolve="ArbitratedActuationReq" />
          </node>
          <node concept="MsoAp" id="Z2Xv5FRB7k" role="Msok5">
            <ref role="Mso_s" node="4p4xuWB680I" resolve="Actuation" />
            <ref role="Mso_u" node="Z2Xv5FRACw" resolve="ArbitratedActuationReq" />
          </node>
        </node>
        <node concept="MvyPw" id="Z2Xv5FRB8V" role="24jtvR">
          <node concept="MsoAp" id="Z2Xv5FRB9Y" role="Msok3">
            <ref role="Mso_s" node="4p4xuWB681c" resolve="StrategicArbitration" />
            <ref role="Mso_u" node="Z2Xv5FRAuq" resolve="ControllerMainBusOut" />
          </node>
          <node concept="MsoAp" id="Z2Xv5FRBbj" role="Msok5">
            <ref role="Mso_s" node="4p4xuWB680I" resolve="Actuation" />
            <ref role="Mso_u" node="Z2Xv5FRACI" resolve="ControllerMainBusIn" />
          </node>
        </node>
        <node concept="2YaWgg" id="Z2Xv5FRBdx" role="24jtvR" />
        <node concept="2pBNOq" id="Z2Xv5FRBiX" role="24jtvR">
          <node concept="MsoAp" id="Z2Xv5FRBk3" role="2pBNOt">
            <ref role="Mso_s" node="4p4xuWB680I" resolve="Actuation" />
            <ref role="Mso_u" node="Z2Xv5FRADe" resolve="AccelCmd" />
          </node>
          <node concept="MvyNu" id="Z2Xv5FRBk5" role="2pBNO2">
            <ref role="MvyNv" node="2bFLxpRxyXB" resolve="accelCmd" />
          </node>
        </node>
        <node concept="2pBNOq" id="Z2Xv5FRBlh" role="24jtvR">
          <node concept="MsoAp" id="Z2Xv5FRBmq" role="2pBNOt">
            <ref role="Mso_s" node="4p4xuWB680I" resolve="Actuation" />
            <ref role="Mso_u" node="Z2Xv5FRADH" resolve="BrakeCmd" />
          </node>
          <node concept="MvyNu" id="Z2Xv5FRBms" role="2pBNO2">
            <ref role="MvyNv" node="2bFLxpRxyYk" resolve="brakeCmd" />
          </node>
        </node>
        <node concept="2pBNOq" id="Z2Xv5FRBnF" role="24jtvR">
          <node concept="MsoAp" id="Z2Xv5FRBoR" role="2pBNOt">
            <ref role="Mso_s" node="4p4xuWB680I" resolve="Actuation" />
            <ref role="Mso_u" node="Z2Xv5FRAEi" resolve="SteerCmd" />
          </node>
          <node concept="MvyNu" id="Z2Xv5FRBoT" role="2pBNO2">
            <ref role="MvyNv" node="2bFLxpRxyvr" resolve="steerCmd" />
          </node>
        </node>
        <node concept="2pBNOq" id="Z2Xv5FRBqb" role="24jtvR">
          <node concept="MsoAp" id="Z2Xv5FRBrq" role="2pBNOt">
            <ref role="Mso_s" node="4p4xuWB680I" resolve="Actuation" />
            <ref role="Mso_u" node="Z2Xv5FRAEX" resolve="ControllerMainBusOut" />
          </node>
          <node concept="MvyNu" id="Z2Xv5FRBrs" role="2pBNO2">
            <ref role="MvyNv" node="3AUo3sYYy0b" resolve="ControllerMainBus" />
          </node>
        </node>
        <node concept="MvyPw" id="Z2Xv5FRBsL" role="24jtvR">
          <node concept="MsoAp" id="Z2Xv5FRBu4" role="Msok3">
            <ref role="Mso_s" node="4p4xuWB680I" resolve="Actuation" />
            <ref role="Mso_u" node="Z2Xv5FRAEX" resolve="ControllerMainBusOut" />
          </node>
          <node concept="MsoAp" id="Z2Xv5FRBwK" role="Msok5">
            <ref role="Mso_s" node="Z2Xv5FRBvs" resolve="CtlMainBusUnitDelayAndInit" />
            <ref role="Mso_u" node="2M92zfWTSXu" resolve="CtlBus" />
          </node>
        </node>
        <node concept="2YaWgg" id="Z2Xv5FRByK" role="24jtvR" />
        <node concept="MvyPw" id="Z2Xv5FRB_r" role="24jtvR">
          <node concept="MsoAp" id="Z2Xv5FRBAN" role="Msok3">
            <ref role="Mso_s" node="Z2Xv5FRBvs" resolve="CtlMainBusUnitDelayAndInit" />
            <ref role="Mso_u" node="2M92zfWTV_y" resolve="CtlBusDelayed" />
          </node>
          <node concept="MsoAp" id="Z2Xv5FRBAS" role="Msok5">
            <ref role="Mso_s" node="4p4xuWB680D" resolve="SensorDataCollection" />
            <ref role="Mso_u" node="2M92zfWTSAO" resolve="ControllerMainBusIn" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Yb5ft" id="4p4xuWB67VR" role="2IDCrN" />
    <node concept="2XIuhl" id="4p4xuWB67Wi" role="2IDCrN">
      <node concept="2ShzD6" id="4p4xuWB67Wk" role="2XIuhb">
        <property role="TrG5h" value="sensorDataCollection" />
        <node concept="24sZga" id="Z2Xv5FRBZL" role="24jtvR">
          <property role="TrG5h" value="PreScanProcess" />
          <ref role="1ueJO6" node="3AUo3sYYqx2" resolve="prescanProcess" />
        </node>
        <node concept="24sZga" id="Z2Xv5FRC0_" role="24jtvR">
          <property role="TrG5h" value="IdealSensorProcess" />
          <ref role="1ueJO6" node="3AUo3sYYq_X" resolve="idealSensorProcess" />
        </node>
        <node concept="24sZga" id="Z2Xv5FRC1r" role="24jtvR">
          <property role="TrG5h" value="SurroundingInfoCapture" />
          <ref role="1ueJO6" node="3AUo3sYYqJN" resolve="surroundingInfoCapture" />
        </node>
        <node concept="2YaWgg" id="Z2Xv5FRBZo" role="24jtvR" />
        <node concept="M1vd0" id="2M92zfWTSAc" role="24jtvR">
          <ref role="22ati1" node="3AUo3sYYsEB" resolve="prescanSimData" />
          <node concept="TU7Tm" id="2M92zfWTSAe" role="TU7Tn">
            <node concept="6$MA7" id="2M92zfWTSAg" role="6$MA4">
              <property role="TrG5h" value="PreScanSimData" />
              <ref role="6$MA3" to="cmup:2Puzg$LxGk_" resolve="default" />
            </node>
          </node>
        </node>
        <node concept="M1vd0" id="2M92zfWTSAt" role="24jtvR">
          <ref role="22ati1" node="3AUo3sYYszJ" resolve="vehStateLast" />
          <node concept="TU7Tm" id="2M92zfWTSAv" role="TU7Tn">
            <node concept="6$MA7" id="2M92zfWTSAx" role="6$MA4">
              <property role="TrG5h" value="VehicleStateLast" />
              <ref role="6$MA3" to="cmup:2Puzg$LxGk_" resolve="default" />
            </node>
          </node>
        </node>
        <node concept="M1vd0" id="2M92zfWTSAO" role="24jtvR">
          <ref role="22ati1" node="2bFLxpRxymB" resolve="controllerMainBus" />
          <node concept="TU7Tm" id="2M92zfWTSAQ" role="TU7Tn">
            <node concept="6$MA7" id="2M92zfWTSAS" role="6$MA4">
              <property role="TrG5h" value="ControllerMainBusIn" />
              <ref role="6$MA3" to="cmup:2Puzg$LxGk_" resolve="default" />
            </node>
          </node>
        </node>
        <node concept="2YaWgg" id="2M92zfWTV_L" role="24jtvR" />
        <node concept="M1vdf" id="2M92zfWTVA8" role="24jtvR">
          <ref role="22ati1" node="3AUo3sYYsEB" resolve="prescanSimData" />
          <node concept="TU7Tm" id="2M92zfWTVAa" role="TU7Tn">
            <node concept="6$MA7" id="2M92zfWTVAc" role="6$MA4">
              <property role="TrG5h" value="PreScanSimDataBus" />
              <ref role="6$MA3" to="cmup:2Puzg$LxGk_" resolve="default" />
            </node>
          </node>
        </node>
        <node concept="M1vdf" id="2M92zfWTVAH" role="24jtvR">
          <ref role="22ati1" node="2bFLxpRxxVv" resolve="idealSensorBus" />
          <node concept="TU7Tm" id="2M92zfWTVAJ" role="TU7Tn">
            <node concept="6$MA7" id="2M92zfWTVAL" role="6$MA4">
              <property role="TrG5h" value="IdealSensorBus" />
              <ref role="6$MA3" to="cmup:2Puzg$LxGk_" resolve="default" />
            </node>
          </node>
        </node>
        <node concept="M1vdf" id="Z2Xv5FRQ84" role="24jtvR">
          <ref role="22ati1" node="3AUo3sYYwDo" resolve="connectedBus" />
          <node concept="TU7Tm" id="Z2Xv5FRQ86" role="TU7Tn">
            <node concept="6$MA7" id="Z2Xv5FRQ88" role="6$MA4">
              <property role="TrG5h" value="ConnectedBus" />
              <ref role="6$MA3" to="cmup:2Puzg$LxGk_" resolve="default" />
            </node>
          </node>
        </node>
        <node concept="M1vdf" id="2M92zfWTVC9" role="24jtvR">
          <ref role="22ati1" node="2bFLxpRxymB" resolve="controllerMainBus" />
          <node concept="TU7Tm" id="2M92zfWTVCb" role="TU7Tn">
            <node concept="6$MA7" id="2M92zfWTVCd" role="6$MA4">
              <property role="TrG5h" value="ControllerMainBusOut" />
              <ref role="6$MA3" to="cmup:2Puzg$LxGk_" resolve="default" />
            </node>
          </node>
        </node>
        <node concept="2YaWgg" id="Z2Xv5FRC1R" role="24jtvR" />
        <node concept="2pBNOq" id="Z2Xv5FRC2K" role="24jtvR">
          <node concept="MsoAp" id="Z2Xv5FRC3e" role="2pBNOt">
            <ref role="Mso_s" node="Z2Xv5FRBZL" resolve="PreScanProcess" />
            <ref role="Mso_u" node="Z2Xv5FRBCw" resolve="PreScanSimData" />
          </node>
          <node concept="MvyNu" id="Z2Xv5FRC3g" role="2pBNO2">
            <ref role="MvyNv" node="2M92zfWTSAc" resolve="PreScanSimData" />
          </node>
        </node>
        <node concept="2pBNOq" id="Z2Xv5FRC5P" role="24jtvR">
          <node concept="MsoAp" id="Z2Xv5FRC6m" role="2pBNOt">
            <ref role="Mso_s" node="Z2Xv5FRBZL" resolve="PreScanProcess" />
            <ref role="Mso_u" node="Z2Xv5FRBCI" resolve="PreScanSimDataBus" />
          </node>
          <node concept="MvyNu" id="Z2Xv5FRC6o" role="2pBNO2">
            <ref role="MvyNv" node="2M92zfWTVA8" resolve="PreScanSimDataBus" />
          </node>
        </node>
        <node concept="2YaWgg" id="Z2Xv5FRC6s" role="24jtvR" />
        <node concept="2pBNOq" id="Z2Xv5FRC88" role="24jtvR">
          <node concept="MsoAp" id="Z2Xv5FRC8I" role="2pBNOt">
            <ref role="Mso_s" node="Z2Xv5FRC0_" resolve="IdealSensorProcess" />
            <ref role="Mso_u" node="Z2Xv5FRBNC" resolve="VehicleState" />
          </node>
          <node concept="MvyNu" id="Z2Xv5FRC8K" role="2pBNO2">
            <ref role="MvyNv" node="2M92zfWTSAt" resolve="VehicleStateLast" />
          </node>
        </node>
        <node concept="2pBNOq" id="Z2Xv5FRC9s" role="24jtvR">
          <node concept="MsoAp" id="Z2Xv5FRCa5" role="2pBNOt">
            <ref role="Mso_s" node="Z2Xv5FRC0_" resolve="IdealSensorProcess" />
            <ref role="Mso_u" node="Z2Xv5FRBNQ" resolve="IdealSensorBus" />
          </node>
          <node concept="MvyNu" id="Z2Xv5FRCa7" role="2pBNO2">
            <ref role="MvyNv" node="2M92zfWTVAH" resolve="IdealSensorBus" />
          </node>
        </node>
        <node concept="2pBNOq" id="Z2Xv5FRCaQ" role="24jtvR">
          <node concept="MsoAp" id="Z2Xv5FRCby" role="2pBNOt">
            <ref role="Mso_s" node="Z2Xv5FRC1r" resolve="SurroundingInfoCapture" />
            <ref role="Mso_u" node="Z2Xv5FRBYR" resolve="ConnectedBus" />
          </node>
          <node concept="MvyNu" id="Z2Xv5FRQ8T" role="2pBNO2">
            <ref role="MvyNv" node="Z2Xv5FRQ84" resolve="ConnectedBus" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Yb5ft" id="3AUo3sYYr3A" role="2IDCrN" />
    <node concept="2XIuhl" id="3AUo3sYYqx0" role="2IDCrN">
      <node concept="2ShzD6" id="3AUo3sYYqx2" role="2XIuhb">
        <property role="TrG5h" value="prescanProcess" />
        <node concept="M1vd0" id="Z2Xv5FRBCw" role="24jtvR">
          <ref role="22ati1" node="3AUo3sYYsEB" resolve="prescanSimData" />
          <node concept="TU7Tm" id="Z2Xv5FRBCx" role="TU7Tn">
            <node concept="6$MA7" id="Z2Xv5FRBCy" role="6$MA4">
              <property role="TrG5h" value="PreScanSimData" />
              <ref role="6$MA3" to="cmup:2Puzg$LxGk_" resolve="default" />
            </node>
          </node>
        </node>
        <node concept="M1vdf" id="Z2Xv5FRBCI" role="24jtvR">
          <ref role="22ati1" node="3AUo3sYYsEB" resolve="prescanSimData" />
          <node concept="TU7Tm" id="Z2Xv5FRBCK" role="TU7Tn">
            <node concept="6$MA7" id="Z2Xv5FRBCM" role="6$MA4">
              <property role="TrG5h" value="PreScanSimDataBus" />
              <ref role="6$MA3" to="cmup:2Puzg$LxGk_" resolve="default" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2Yb5ft" id="Z2Xv5FRBCX" role="2IDCrN" />
    <node concept="2XIuhl" id="3AUo3sYYq_V" role="2IDCrN">
      <node concept="2ShzD6" id="3AUo3sYYq_X" role="2XIuhb">
        <property role="TrG5h" value="idealSensorProcess" />
        <node concept="M1vd0" id="Z2Xv5FRBNC" role="24jtvR">
          <ref role="22ati1" node="3AUo3sYYszJ" resolve="vehStateLast" />
          <node concept="TU7Tm" id="Z2Xv5FRBND" role="TU7Tn">
            <node concept="6$MA7" id="Z2Xv5FRBNE" role="6$MA4">
              <property role="TrG5h" value="VehicleState" />
              <ref role="6$MA3" to="cmup:2Puzg$LxGk_" resolve="default" />
            </node>
          </node>
        </node>
        <node concept="M1vdf" id="Z2Xv5FRBNQ" role="24jtvR">
          <ref role="22ati1" node="2bFLxpRxxVv" resolve="idealSensorBus" />
          <node concept="TU7Tm" id="Z2Xv5FRBNS" role="TU7Tn">
            <node concept="6$MA7" id="Z2Xv5FRBNU" role="6$MA4">
              <property role="TrG5h" value="IdealSensorBus" />
              <ref role="6$MA3" to="cmup:2Puzg$LxGk_" resolve="default" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2Yb5ft" id="Z2Xv5FRBO5" role="2IDCrN" />
    <node concept="2XIuhl" id="3AUo3sYYqJL" role="2IDCrN">
      <node concept="2ShzD6" id="3AUo3sYYqJN" role="2XIuhb">
        <property role="TrG5h" value="surroundingInfoCapture" />
        <node concept="M1vdf" id="Z2Xv5FRBYR" role="24jtvR">
          <ref role="22ati1" node="3AUo3sYYwDo" resolve="connectedBus" />
          <node concept="TU7Tm" id="Z2Xv5FRBYS" role="TU7Tn">
            <node concept="6$MA7" id="Z2Xv5FRBYT" role="6$MA4">
              <property role="TrG5h" value="ConnectedBus" />
              <ref role="6$MA3" to="cmup:2Puzg$LxGk_" resolve="default" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2Yb5ft" id="3AUo3sYYqOJ" role="2IDCrN" />
    <node concept="2XIuhl" id="3AUo3sYYpVc" role="2IDCrN">
      <node concept="2ShzD6" id="4p4xuWB67Xv" role="2XIuhb">
        <property role="TrG5h" value="situationalAwareness" />
        <node concept="M1vd0" id="Z2Xv5FRA6C" role="24jtvR">
          <ref role="22ati1" node="3AUo3sYYsEB" resolve="prescanSimData" />
          <node concept="TU7Tm" id="Z2Xv5FRA6D" role="TU7Tn">
            <node concept="6$MA7" id="Z2Xv5FRA6E" role="6$MA4">
              <property role="TrG5h" value="PreScanSimDataBus" />
              <ref role="6$MA3" to="cmup:2Puzg$LxGk_" resolve="default" />
            </node>
          </node>
        </node>
        <node concept="M1vd0" id="Z2Xv5FRA6Q" role="24jtvR">
          <ref role="22ati1" node="2bFLxpRxxVv" resolve="idealSensorBus" />
          <node concept="TU7Tm" id="Z2Xv5FRA6S" role="TU7Tn">
            <node concept="6$MA7" id="Z2Xv5FRA6U" role="6$MA4">
              <property role="TrG5h" value="IdealSensorBus" />
              <ref role="6$MA3" to="cmup:2Puzg$LxGk_" resolve="default" />
            </node>
          </node>
        </node>
        <node concept="M1vd0" id="Z2Xv5FRA7d" role="24jtvR">
          <ref role="22ati1" node="3AUo3sYYwDo" resolve="connectedBus" />
          <node concept="TU7Tm" id="Z2Xv5FRA7f" role="TU7Tn">
            <node concept="6$MA7" id="Z2Xv5FRA7h" role="6$MA4">
              <property role="TrG5h" value="ConnectedBus" />
              <ref role="6$MA3" to="cmup:2Puzg$LxGk_" resolve="default" />
            </node>
          </node>
        </node>
        <node concept="M1vd0" id="Z2Xv5FRA7E" role="24jtvR">
          <ref role="22ati1" node="2bFLxpRxymB" resolve="controllerMainBus" />
          <node concept="TU7Tm" id="Z2Xv5FRA7G" role="TU7Tn">
            <node concept="6$MA7" id="Z2Xv5FRA7I" role="6$MA4">
              <property role="TrG5h" value="ControllerMainBusIn" />
              <ref role="6$MA3" to="cmup:2Puzg$LxGk_" resolve="default" />
            </node>
          </node>
        </node>
        <node concept="2YaWgg" id="Z2Xv5FRA7Z" role="24jtvR" />
        <node concept="M1vdf" id="Z2Xv5FRA8s" role="24jtvR">
          <ref role="22ati1" node="2bFLxpRxy7c" resolve="situationBus" />
          <node concept="TU7Tm" id="Z2Xv5FRA8u" role="TU7Tn">
            <node concept="6$MA7" id="Z2Xv5FRA8w" role="6$MA4">
              <property role="TrG5h" value="SituationBus" />
              <ref role="6$MA3" to="cmup:2Puzg$LxGk_" resolve="default" />
            </node>
          </node>
        </node>
        <node concept="M1vdf" id="Z2Xv5FRA97" role="24jtvR">
          <ref role="22ati1" node="2bFLxpRxymB" resolve="controllerMainBus" />
          <node concept="TU7Tm" id="Z2Xv5FRA99" role="TU7Tn">
            <node concept="6$MA7" id="Z2Xv5FRA9b" role="6$MA4">
              <property role="TrG5h" value="ControllerMainBusOut" />
              <ref role="6$MA3" to="cmup:2Puzg$LxGk_" resolve="default" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2Yb5ft" id="Z2Xv5FRA9z" role="2IDCrN" />
    <node concept="2XIuhl" id="4p4xuWB67Y9" role="2IDCrN">
      <node concept="2ShzD6" id="4p4xuWB67Yb" role="2XIuhb">
        <property role="TrG5h" value="featuredFunctions" />
        <node concept="M1vd0" id="Z2Xv5FRArk" role="24jtvR">
          <ref role="22ati1" node="2bFLxpRxy7c" resolve="situationBus" />
          <node concept="TU7Tm" id="Z2Xv5FRArl" role="TU7Tn">
            <node concept="6$MA7" id="Z2Xv5FRArm" role="6$MA4">
              <property role="TrG5h" value="SituationBus" />
              <ref role="6$MA3" to="cmup:2Puzg$LxGk_" resolve="default" />
            </node>
          </node>
        </node>
        <node concept="M1vd0" id="Z2Xv5FRAry" role="24jtvR">
          <ref role="22ati1" node="2bFLxpRxymB" resolve="controllerMainBus" />
          <node concept="TU7Tm" id="Z2Xv5FRAr$" role="TU7Tn">
            <node concept="6$MA7" id="Z2Xv5FRArA" role="6$MA4">
              <property role="TrG5h" value="ControllerMainBusIn" />
              <ref role="6$MA3" to="cmup:2Puzg$LxGk_" resolve="default" />
            </node>
          </node>
        </node>
        <node concept="2YaWgg" id="Z2Xv5FRArL" role="24jtvR" />
        <node concept="M1vdf" id="Z2Xv5FRAs2" role="24jtvR">
          <ref role="22ati1" node="3AUo3sYYxcg" resolve="featureReqBus" />
          <node concept="TU7Tm" id="Z2Xv5FRAs4" role="TU7Tn">
            <node concept="6$MA7" id="Z2Xv5FRAs6" role="6$MA4">
              <property role="TrG5h" value="FeatureReqBus" />
              <ref role="6$MA3" to="cmup:2Puzg$LxGk_" resolve="default" />
            </node>
          </node>
        </node>
        <node concept="M1vdf" id="Z2Xv5FRAsx" role="24jtvR">
          <ref role="22ati1" node="2bFLxpRxymB" resolve="controllerMainBus" />
          <node concept="TU7Tm" id="Z2Xv5FRAsz" role="TU7Tn">
            <node concept="6$MA7" id="Z2Xv5FRAs_" role="6$MA4">
              <property role="TrG5h" value="ControllerMainBusOut" />
              <ref role="6$MA3" to="cmup:2Puzg$LxGk_" resolve="default" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2Yb5ft" id="Z2Xv5FRAir" role="2IDCrN" />
    <node concept="2XIuhl" id="4p4xuWB67YT" role="2IDCrN">
      <node concept="2ShzD6" id="4p4xuWB67YV" role="2XIuhb">
        <property role="TrG5h" value="strategicArbitration" />
        <node concept="M1vd0" id="Z2Xv5FRAsR" role="24jtvR">
          <ref role="22ati1" node="3AUo3sYYxcg" resolve="featureReqBus" />
          <node concept="TU7Tm" id="Z2Xv5FRAsS" role="TU7Tn">
            <node concept="6$MA7" id="Z2Xv5FRAsT" role="6$MA4">
              <property role="TrG5h" value="FeatureReqBus" />
              <ref role="6$MA3" to="cmup:2Puzg$LxGk_" resolve="default" />
            </node>
          </node>
        </node>
        <node concept="M1vd0" id="Z2Xv5FRAt5" role="24jtvR">
          <ref role="22ati1" node="2bFLxpRxymB" resolve="controllerMainBus" />
          <node concept="TU7Tm" id="Z2Xv5FRAt7" role="TU7Tn">
            <node concept="6$MA7" id="Z2Xv5FRAt9" role="6$MA4">
              <property role="TrG5h" value="ControllerMainBusIn" />
              <ref role="6$MA3" to="cmup:2Puzg$LxGk_" resolve="default" />
            </node>
          </node>
        </node>
        <node concept="2YaWgg" id="Z2Xv5FRAtk" role="24jtvR" />
        <node concept="M1vdf" id="Z2Xv5FRAt_" role="24jtvR">
          <ref role="22ati1" node="2bFLxpRxxzg" resolve="arbitratedAcutationReq" />
          <node concept="TU7Tm" id="Z2Xv5FRAtB" role="TU7Tn">
            <node concept="6$MA7" id="Z2Xv5FRAtD" role="6$MA4">
              <property role="TrG5h" value="ArbitratedActuationReq" />
              <ref role="6$MA3" to="cmup:2Puzg$LxGk_" resolve="default" />
            </node>
          </node>
        </node>
        <node concept="M1vdf" id="Z2Xv5FRAuq" role="24jtvR">
          <ref role="22ati1" node="2bFLxpRxymB" resolve="controllerMainBus" />
          <node concept="TU7Tm" id="Z2Xv5FRAus" role="TU7Tn">
            <node concept="6$MA7" id="Z2Xv5FRAuu" role="6$MA4">
              <property role="TrG5h" value="ControllerMainBusOut" />
              <ref role="6$MA3" to="cmup:2Puzg$LxGk_" resolve="default" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2Yb5ft" id="Z2Xv5FRAvc" role="2IDCrN" />
    <node concept="2XIuhl" id="3AUo3sYYq9G" role="2IDCrN">
      <node concept="2ShzD6" id="3AUo3sYYq9I" role="2XIuhb">
        <property role="TrG5h" value="actuation" />
        <node concept="M1vd0" id="Z2Xv5FRACw" role="24jtvR">
          <ref role="22ati1" node="2bFLxpRxxzg" resolve="arbitratedAcutationReq" />
          <node concept="TU7Tm" id="Z2Xv5FRACx" role="TU7Tn">
            <node concept="6$MA7" id="Z2Xv5FRACy" role="6$MA4">
              <property role="TrG5h" value="ArbitratedActuationReq" />
              <ref role="6$MA3" to="cmup:2Puzg$LxGk_" resolve="default" />
            </node>
          </node>
        </node>
        <node concept="M1vd0" id="Z2Xv5FRACI" role="24jtvR">
          <ref role="22ati1" node="2bFLxpRxymB" resolve="controllerMainBus" />
          <node concept="TU7Tm" id="Z2Xv5FRACK" role="TU7Tn">
            <node concept="6$MA7" id="Z2Xv5FRACM" role="6$MA4">
              <property role="TrG5h" value="ControllerMainBusIn" />
              <ref role="6$MA3" to="cmup:2Puzg$LxGk_" resolve="default" />
            </node>
          </node>
        </node>
        <node concept="2YaWgg" id="Z2Xv5FRACX" role="24jtvR" />
        <node concept="M1vdf" id="Z2Xv5FRADe" role="24jtvR">
          <ref role="22ati1" node="2bFLxpRxyN9" resolve="accelCmd" />
          <node concept="TU7Tm" id="Z2Xv5FRADg" role="TU7Tn">
            <node concept="6$MA7" id="Z2Xv5FRADi" role="6$MA4">
              <property role="TrG5h" value="AccelCmd" />
              <ref role="6$MA3" to="cmup:2Puzg$LxGk_" resolve="default" />
            </node>
          </node>
        </node>
        <node concept="M1vdf" id="Z2Xv5FRADH" role="24jtvR">
          <ref role="22ati1" node="2bFLxpRxyGn" resolve="brakeCmd" />
          <node concept="TU7Tm" id="Z2Xv5FRADJ" role="TU7Tn">
            <node concept="6$MA7" id="Z2Xv5FRADL" role="6$MA4">
              <property role="TrG5h" value="BrakeCmd" />
              <ref role="6$MA3" to="cmup:2Puzg$LxGk_" resolve="default" />
            </node>
          </node>
        </node>
        <node concept="M1vdf" id="Z2Xv5FRAEi" role="24jtvR">
          <ref role="22ati1" node="2bFLxpRxy_J" resolve="steerCmd" />
          <node concept="TU7Tm" id="Z2Xv5FRAEk" role="TU7Tn">
            <node concept="6$MA7" id="Z2Xv5FRAEm" role="6$MA4">
              <property role="TrG5h" value="SteerCmd" />
              <ref role="6$MA3" to="cmup:2Puzg$LxGk_" resolve="default" />
            </node>
          </node>
        </node>
        <node concept="M1vdf" id="Z2Xv5FRAEX" role="24jtvR">
          <ref role="22ati1" node="2bFLxpRxymB" resolve="controllerMainBus" />
          <node concept="TU7Tm" id="Z2Xv5FRAEZ" role="TU7Tn">
            <node concept="6$MA7" id="Z2Xv5FRAF1" role="6$MA4">
              <property role="TrG5h" value="ControllerMainBusOut" />
              <ref role="6$MA3" to="cmup:2Puzg$LxGk_" resolve="default" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2Yb5ft" id="3AUo3sYYr8z" role="2IDCrN" />
    <node concept="2XIuhl" id="2M92zfWTSPX" role="2IDCrN">
      <node concept="2ShzD6" id="2M92zfWTSPZ" role="2XIuhb">
        <property role="TrG5h" value="ctlMainBusUnitDelayAndInit" />
        <node concept="M1vd0" id="2M92zfWTSXu" role="24jtvR">
          <ref role="22ati1" node="2bFLxpRxymB" resolve="controllerMainBus" />
          <node concept="TU7Tm" id="2M92zfWTSXv" role="TU7Tn">
            <node concept="6$MA7" id="2M92zfWTSXw" role="6$MA4">
              <property role="TrG5h" value="CtlBus" />
              <ref role="6$MA3" to="cmup:2Puzg$LxGk_" resolve="default" />
            </node>
          </node>
        </node>
        <node concept="M1vdf" id="2M92zfWTV_y" role="24jtvR">
          <ref role="22ati1" node="2bFLxpRxymB" resolve="controllerMainBus" />
          <node concept="TU7Tm" id="2M92zfWTV_$" role="TU7Tn">
            <node concept="6$MA7" id="2M92zfWTV_A" role="6$MA4">
              <property role="TrG5h" value="CtlBusDelayed" />
              <ref role="6$MA3" to="cmup:2Puzg$LxGk_" resolve="default" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2Yb5ft" id="2M92zfWTSB4" role="2IDCrN" />
    <node concept="2XIuhl" id="3AUo3sYYriw" role="2IDCrN">
      <node concept="2ShzD6" id="3AUo3sYYriy" role="2XIuhb">
        <property role="TrG5h" value="monitor" />
        <node concept="M1vd0" id="3AUo3sYYy7W" role="24jtvR">
          <ref role="22ati1" node="2bFLxpRxxIa" resolve="vehState" />
          <node concept="TU7Tm" id="3AUo3sYYy7X" role="TU7Tn">
            <node concept="6$MA7" id="3AUo3sYYy7Y" role="6$MA4">
              <property role="TrG5h" value="VehicleStateBus" />
              <ref role="6$MA3" to="cmup:2Puzg$LxGk_" resolve="default" />
            </node>
          </node>
        </node>
        <node concept="M1vd0" id="3AUo3sYYy8a" role="24jtvR">
          <ref role="22ati1" node="2bFLxpRxymB" resolve="controllerMainBus" />
          <node concept="TU7Tm" id="3AUo3sYYy8c" role="TU7Tn">
            <node concept="6$MA7" id="3AUo3sYYy8e" role="6$MA4">
              <property role="TrG5h" value="ControllerMainBus" />
              <ref role="6$MA3" to="cmup:2Puzg$LxGk_" resolve="default" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2Yb5ft" id="3AUo3sYYrnM" role="2IDCrN" />
    <node concept="2XIuhl" id="3AUo3sYYrxN" role="2IDCrN">
      <node concept="2ShzD6" id="3AUo3sYYrxP" role="2XIuhb">
        <property role="TrG5h" value="vehStateBusUnitDelayAndInit" />
        <node concept="M1vd0" id="3AUo3sYYy8p" role="24jtvR">
          <ref role="22ati1" node="2bFLxpRxxIa" resolve="vehState" />
          <node concept="TU7Tm" id="3AUo3sYYy8q" role="TU7Tn">
            <node concept="6$MA7" id="3AUo3sYYy8r" role="6$MA4">
              <property role="TrG5h" value="VehicleStateBus" />
              <ref role="6$MA3" to="cmup:2Puzg$LxGk_" resolve="default" />
            </node>
          </node>
        </node>
        <node concept="M1vdf" id="3AUo3sYYyul" role="24jtvR">
          <ref role="22ati1" node="3AUo3sYYszJ" resolve="vehStateLast" />
          <node concept="TU7Tm" id="3AUo3sYYyun" role="TU7Tn">
            <node concept="6$MA7" id="3AUo3sYYyup" role="6$MA4">
              <property role="TrG5h" value="VehicleStateBusDelayed" />
              <ref role="6$MA3" to="cmup:2Puzg$LxGk_" resolve="default" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2Yb5ft" id="3AUo3sYYyn0" role="2IDCrN" />
  </node>
  <node concept="3kJPYv" id="4$SuO9Gz6LZ">
    <property role="TrG5h" value="Matlab Settings" />
    <property role="2AxGpW" value="../../../../../../MATLAB_Lantian" />
  </node>
</model>

