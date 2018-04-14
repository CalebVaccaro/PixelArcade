//Maya ASCII 2017 scene
//Name: ArcadeM1.ma
//Last modified: Fri, Dec 22, 2017 07:51:44 PM
//Codeset: 1252
requires maya "2017";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2017";
fileInfo "version" "2017";
fileInfo "cutIdentifier" "201606150345-997974";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
createNode transform -n "pCube1";
	rename -uid "F531A91E-4205-EE2E-A227-F88A6958C7CF";
	setAttr ".t" -type "double3" 0 0.059613548625544022 0 ;
	setAttr ".s" -type "double3" 23.403296042726033 0.52549610454033624 23.868011815032645 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	rename -uid "E9FD74C6-40F1-AB7E-7740-ADB42A105AAF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.41036884486675262 0.49520303308963776 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 255 ".pt";
	setAttr ".pt[0:165]" -type "float3"  -1.8626451e-009 9.3132257e-010 1.4901161e-008 
		1.8626451e-009 9.3132257e-010 -7.4505806e-009 -1.8626451e-009 0 7.4505806e-009 1.8626451e-009 
		0 7.4505806e-009 -1.8626451e-009 0 -2.2351742e-008 1.8626451e-009 0 -7.4505806e-009 
		-1.8626451e-009 9.3132257e-010 7.4505806e-009 1.8626451e-009 9.3132257e-010 7.4505806e-009 
		-1.8626451e-009 0 7.4505806e-009 -1.8626451e-009 0 -2.2351742e-008 -1.8626451e-009 
		9.3132257e-010 7.4505806e-009 -1.8626451e-009 9.3132257e-010 1.4901161e-008 0 0 -7.4505806e-009 
		0 0 0 0 9.3132257e-010 1.4901161e-008 0 9.3132257e-010 7.4505806e-009 -1.8626451e-009 
		0 -2.2351742e-008 -1.8626451e-009 9.3132257e-010 7.4505806e-009 -1.8626451e-009 9.3132257e-010 
		-2.2351742e-008 0 9.3132257e-010 2.9802322e-008 1.8626451e-009 9.3132257e-010 7.4505806e-009 
		1.8626451e-009 0 -7.4505806e-009 0 0 0 -1.8626451e-009 0 -2.2351742e-008 -1.8626451e-009 
		0 7.4505806e-009 -1.8626451e-009 9.3132257e-010 7.4505806e-009 -1.8626451e-009 9.3132257e-010 
		7.4505806e-009 0 9.3132257e-010 -7.4505806e-009 1.8626451e-009 9.3132257e-010 7.4505806e-009 
		1.8626451e-009 0 7.4505806e-009 0 0 -7.4505806e-009 -1.8626451e-009 0 -7.4505806e-009 
		-1.8626451e-009 9.3132257e-010 1.4901161e-008 -1.8626451e-009 9.3132257e-010 1.4901161e-008 
		-1.8626451e-009 0 2.2351742e-008 -1.8626451e-009 0 2.2351742e-008 0 0 -7.4505806e-009 
		1.8626451e-009 0 7.4505806e-009 1.8626451e-009 9.3132257e-010 0 0 9.3132257e-010 
		2.2351742e-008 -1.8626451e-009 0 -2.2351742e-008 0 0 -2.2351742e-008 0 0 -2.9802322e-008 
		-1.8626451e-009 0 -2.9802322e-008 1.8626451e-009 0 -1.4901161e-008 1.8626451e-009 
		0 -7.4505806e-009 1.8626451e-009 0 0 1.8626451e-009 0 -2.2351742e-008 1.8626451e-009 
		0 -1.4901161e-008 1.8626451e-009 0 -1.4901161e-008 1.8626451e-009 0 -1.4901161e-008 
		1.8626451e-009 0 -2.2351742e-008 0 0 -2.2351742e-008 0 0 -2.2351742e-008 -1.8626451e-009 
		0 -2.2351742e-008 -1.8626451e-009 0 -2.2351742e-008 1.8626451e-009 0 0 1.8626451e-009 
		0 7.4505806e-009 -1.8626451e-009 0 1.4901161e-008 0 0 1.4901161e-008 0 0 -7.4505806e-009 
		0 0 -7.4505806e-009 0 0 -2.2351742e-008 0 0 -7.4505806e-009 0 0 -2.2351742e-008 0 
		0 -1.4901161e-008 0 0 -7.4505806e-009 0 0 -7.4505806e-009 0 0 -2.2351742e-008 0 0 
		-1.4901161e-008 0 0 -2.2351742e-008 0 0 -1.4901161e-008 0 0 -3.7252903e-008 0 0 -3.7252903e-008 
		0 0 -3.7252903e-008 0 0 -3.7252903e-008 0 0 -2.2351742e-008 0 0 -7.4505806e-009 0 
		0 7.4505806e-009 0 0 7.4505806e-009 9.3132257e-010 0 7.4505806e-009 1.8626451e-009 
		0 -2.2351742e-008 2.7939677e-009 0 2.2351742e-008 2.7939677e-009 0 -7.4505806e-009 
		1.8626451e-009 0 -2.9802322e-008 9.3132257e-010 0 -7.4505806e-009 -2.7939677e-009 
		0 7.4505806e-009 -1.8626451e-009 2.9802322e-008 1.4901161e-008 1.8626451e-009 0 -2.2351742e-008 
		9.3132257e-010 0 -2.2351742e-008 -9.3132257e-010 0 -2.2351742e-008 2.7939677e-009 
		0 -2.2351742e-008 2.7939677e-009 0 -2.2351742e-008 1.8626451e-009 0 -2.2351742e-008 
		9.3132257e-010 0 -2.2351742e-008 9.3132257e-010 9.3132257e-010 7.4505806e-009 9.3132257e-010 
		9.3132257e-010 -2.2351742e-008 -2.7939677e-009 0 7.4505806e-009 9.3132257e-010 9.3132257e-010 
		7.4505806e-009 9.3132257e-010 9.3132257e-010 1.4901161e-008 -1.8626451e-009 2.9802322e-008 
		-7.4505806e-009 9.3132257e-010 0 -7.4505806e-009 0 -1.4901161e-008 -2.2351742e-008 
		0 0 -2.2351742e-008 0 0 -2.2351742e-008 0 0 -2.2351742e-008 0 0 -2.2351742e-008 0 
		0 -2.2351742e-008 0 9.3132257e-010 7.4505806e-009 0 9.3132257e-010 -2.2351742e-008 
		-9.3132257e-010 -9.3132257e-010 7.4505806e-009 0 9.3132257e-010 7.4505806e-009 0 
		9.3132257e-010 1.4901161e-008 0 0 7.4505806e-009 0 0 -2.2351742e-008 0 0 2.2351742e-008 
		0 0 -7.4505806e-009 9.3132257e-010 0 -2.9802322e-008 9.3132257e-010 0 -7.4505806e-009 
		-9.3132257e-010 3.7252903e-009 7.4505806e-009 0 5.9604645e-008 7.4505806e-009 -9.3132257e-010 
		2.9802322e-008 0 1.8626451e-009 0 -2.2351742e-008 0 0 -2.2351742e-008 9.3132257e-010 
		0 -2.2351742e-008 -9.3132257e-010 0 1.4901161e-008 -1.8626451e-009 0 1.4901161e-008 
		0 0 -1.4901161e-008 0 0 1.4901161e-008 0 9.3132257e-010 2.2351742e-008 0 9.3132257e-010 
		2.2351742e-008 9.3132257e-010 -9.3132257e-010 7.4505806e-009 0 9.3132257e-010 7.4505806e-009 
		0 9.3132257e-010 0 0 0 0 0 0 -4.4703484e-008 -1.8626451e-009 0 -1.4901161e-008 -9.3132257e-010 
		0 7.4505806e-009 9.3132257e-010 0 0 -9.3132257e-010 0 1.4901161e-008 9.3132257e-010 
		3.7252903e-009 -7.4505806e-009 9.3132257e-010 5.9604645e-008 0 0 0 -1.4901161e-008 
		-9.3132257e-010 0 -2.2351742e-008 0 -2.9802322e-008 -1.4901161e-008 -9.3132257e-010 
		0 2.9802322e-008 0 0 7.4505806e-009 0 0 7.4505806e-009 0 0 1.4901161e-008 -1.8626451e-009 
		0 2.2351742e-008 -1.8626451e-009 9.3132257e-010 2.2351742e-008 -1.8626451e-009 9.3132257e-010 
		2.2351742e-008 -1.8626451e-009 9.3132257e-010 2.2351742e-008 -1.8626451e-009 9.3132257e-010 
		1.4901161e-008 -1.8626451e-009 9.3132257e-010 1.4901161e-008 -1.8626451e-009 0 1.4901161e-008 
		0 0 -2.2351742e-008 0 0 0 0 0 -7.4505806e-009 0 0 -2.9802322e-008 -1.8626451e-009 
		0 -7.4505806e-009 -1.8626451e-009 0 -7.4505806e-009 1.8626451e-009 -2.9802322e-008 
		-7.4505806e-009 0 0 1.4901161e-008 -1.8626451e-009 0 -2.2351742e-008 0 0 1.4901161e-008;
	setAttr ".pt[166:254]" -1.8626451e-009 0 2.2351742e-008 1.8626451e-009 2.9802322e-008 
		-2.2351742e-008 0 2.9802322e-008 -2.2351742e-008 -1.8626451e-009 2.9802322e-008 2.2351742e-008 
		-1.8626451e-009 2.9802322e-008 -2.9802322e-008 -1.8626451e-009 2.9802322e-008 1.4901161e-008 
		-1.8626451e-009 2.9802322e-008 -2.2351742e-008 -1.8626451e-009 2.9802322e-008 -2.2351742e-008 
		0 2.9802322e-008 -2.2351742e-008 1.8626451e-009 2.9802322e-008 -2.2351742e-008 0 
		2.9802322e-008 -2.2351742e-008 0 2.9802322e-008 -1.4901161e-008 0 2.9802322e-008 
		1.4901161e-008 1.8626451e-009 2.9802322e-008 -2.2351742e-008 1.8626451e-009 2.9802322e-008 
		-1.4901161e-008 1.8626451e-009 2.9802322e-008 -1.4901161e-008 1.8626451e-009 2.9802322e-008 
		7.4505806e-009 1.8626451e-009 2.9802322e-008 -2.2351742e-008 1.8626451e-009 2.9802322e-008 
		0 1.8626451e-009 2.9802322e-008 -1.4901161e-008 0 2.9802322e-008 -2.2351742e-008 
		0 2.9802322e-008 -4.4703484e-008 0 2.9802322e-008 -2.2351742e-008 9.3132257e-010 
		-1.8626451e-009 7.4505806e-009 -1.8626451e-009 -1.8626451e-009 7.4505806e-009 -1.8626451e-009 
		-1.8626451e-009 7.4505806e-009 -1.8626451e-009 -1.8626451e-009 7.4505806e-009 -1.8626451e-009 
		-1.8626451e-009 1.4901161e-008 -1.8626451e-009 -1.8626451e-009 -2.2351742e-008 -1.8626451e-009 
		-1.8626451e-009 -2.2351742e-008 -1.8626451e-009 -1.8626451e-009 -2.2351742e-008 9.3132257e-010 
		-1.8626451e-009 -2.2351742e-008 0 -1.8626451e-009 -2.2351742e-008 0 -1.8626451e-009 
		1.4901161e-008 -1.8626451e-009 -1.8626451e-009 2.2351742e-008 0 -1.8626451e-009 0 
		1.8626451e-009 -1.8626451e-009 -7.4505806e-009 1.8626451e-009 -1.8626451e-009 -7.4505806e-009 
		1.8626451e-009 -1.8626451e-009 0 1.8626451e-009 -1.8626451e-009 7.4505806e-009 1.8626451e-009 
		-1.8626451e-009 7.4505806e-009 0 -1.8626451e-009 7.4505806e-009 -1.8626451e-009 -1.8626451e-009 
		1.4901161e-008 0 -1.8626451e-009 0 0 -1.8626451e-009 7.4505806e-009 -1.8626451e-009 
		9.3132257e-010 1.4901161e-008 -1.8626451e-009 9.3132257e-010 1.4901161e-008 -1.8626451e-009 
		-1.8626451e-009 7.4505806e-009 -1.8626451e-009 -1.8626451e-009 7.4505806e-009 -1.8626451e-009 
		-1.8626451e-009 -2.2351742e-008 -1.8626451e-009 -1.8626451e-009 -2.2351742e-008 -1.8626451e-009 
		9.3132257e-010 7.4505806e-009 -1.8626451e-009 9.3132257e-010 7.4505806e-009 1.8626451e-009 
		9.3132257e-010 7.4505806e-009 1.8626451e-009 9.3132257e-010 -7.4505806e-009 1.8626451e-009 
		-1.8626451e-009 7.4505806e-009 1.8626451e-009 -1.8626451e-009 7.4505806e-009 -1.8626451e-009 
		9.3132257e-010 7.4505806e-009 -1.8626451e-009 -1.8626451e-009 7.4505806e-009 9.3132257e-010 
		-1.8626451e-009 -2.2351742e-008 9.3132257e-010 9.3132257e-010 7.4505806e-009 9.3132257e-010 
		9.3132257e-010 1.4901161e-008 9.3132257e-010 -1.8626451e-009 7.4505806e-009 0 -1.8626451e-009 
		0 0 9.3132257e-010 1.4901161e-008 1.8626451e-009 -1.8626451e-009 -7.4505806e-009 
		1.8626451e-009 9.3132257e-010 7.4505806e-009 0 9.3132257e-010 7.4505806e-009 0 -1.8626451e-009 
		7.4505806e-009 -1.8626451e-009 9.3132257e-010 7.4505806e-009 -1.8626451e-009 -1.8626451e-009 
		-2.2351742e-008 1.8626451e-009 9.3132257e-010 7.4505806e-009 1.8626451e-009 -1.8626451e-009 
		-7.4505806e-009 -1.8626451e-009 9.3132257e-010 1.4901161e-008 -1.8626451e-009 -1.8626451e-009 
		1.4901161e-008 1.8626451e-009 -1.8626451e-009 0 1.8626451e-009 9.3132257e-010 0 0 
		-1.8626451e-009 -2.2351742e-008 0 9.3132257e-010 7.4505806e-009 0 -1.8626451e-009 
		7.4505806e-009 0 9.3132257e-010 1.4901161e-008 0 -1.8626451e-009 1.4901161e-008 0 
		9.3132257e-010 2.2351742e-008 0 9.3132257e-010 0 0 -1.8626451e-009 0 -1.8626451e-009 
		-1.8626451e-009 2.2351742e-008 -1.8626451e-009 9.3132257e-010 2.2351742e-008 -1.8626451e-009 
		9.3132257e-010 1.4901161e-008 -1.8626451e-009 -1.8626451e-009 1.4901161e-008;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode deleteComponent -n "deleteComponent1";
	rename -uid "4DCA775A-4427-848D-9089-7FBB7483C037";
	setAttr ".dc" -type "componentList" 2 "f[82]" "f[86]";
createNode polyExtrudeFace -n "polyExtrudeFace12";
	rename -uid "556F7FD3-41CA-F0DE-606A-57AF1D8CB917";
	setAttr ".ics" -type "componentList" 1 "f[101]";
	setAttr ".ix" -type "matrix" 23.403296042726033 0 0 0 0 0.52549610454033624 0 0 0 0 23.868011815032645 0
		 0 0.059613548625544022 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -6.9951019 -0.070685744 13.098561 ;
	setAttr ".rs" 40514;
	setAttr ".lt" -type "double3" 0 0 1.1124142695562362 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -8.1957567944453569 -0.2031345036446241 13.09856124563729 ;
	setAttr ".cbx" -type "double3" -5.7944469538211338 0.061763021468599778 13.09856124563729 ;
createNode polyExtrudeFace -n "polyExtrudeFace11";
	rename -uid "9D7143A2-4EB0-65D3-FE66-A48A628DE14D";
	setAttr ".ics" -type "componentList" 2 "f[101]" "f[209]";
	setAttr ".ix" -type "matrix" 23.403296042726033 0 0 0 0 0.52549610454033624 0 0 0 0 23.868011815032645 0
		 0 0.059613548625544022 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -6.9951019 0.059613548 11.934006 ;
	setAttr ".rs" 34384;
	setAttr ".lt" -type "double3" 0 0 1.1645551956010074 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -8.1957567944453569 -0.2031345036446241 11.934005907516323 ;
	setAttr ".cbx" -type "double3" -5.7944469538211338 0.32236160089571214 11.934005907516323 ;
createNode polyExtrudeFace -n "polyExtrudeFace10";
	rename -uid "60CD3921-4EEB-97A6-EB2E-5895ADC66C59";
	setAttr ".ics" -type "componentList" 1 "f[285]";
	setAttr ".ix" -type "matrix" 23.403296042726033 0 0 0 0 0.52549610454033624 0 0 0 0 23.868011815032645 0
		 0 0.059613548625544022 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.60827422 6.4782853 -10.990526 ;
	setAttr ".rs" 36940;
	setAttr ".lt" -type "double3" 2.1555651783752058e-016 0 1.6903412688383874 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -5.8160759270647562 5.3101103307811819 -10.990526658541043 ;
	setAttr ".cbx" -type "double3" 7.0326243292796349 7.6464605510138188 -10.990526658541043 ;
createNode polySplit -n "polySplit5";
	rename -uid "14FE7286-4AD3-DC67-9753-EFA8721CAFD9";
	setAttr -s 2 ".e[0:1]"  0.885346 0.31675601;
	setAttr -s 2 ".d[0:1]"  -2147483084 -2147483085;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit4";
	rename -uid "4322C0A8-4F69-237C-672C-F7B49AA9C3D9";
	setAttr -s 2 ".e[0:1]"  0.85954201 0.70376599;
	setAttr -s 2 ".d[0:1]"  -2147483082 -2147483085;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit3";
	rename -uid "4F1D6944-4345-570E-6237-3DAE1FF5FFB7";
	setAttr -s 2 ".e[0:1]"  0.27640599 0.433698;
	setAttr -s 2 ".d[0:1]"  -2147483088 -2147483118;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit2";
	rename -uid "DEBEE89E-4BE5-5D72-171C-A3B801028CCA";
	setAttr -s 2 ".e[0:1]"  0.79689199 0.31197599;
	setAttr -s 2 ".d[0:1]"  -2147483088 -2147483116;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit1";
	rename -uid "3A4834C6-4772-E5CA-9195-B5BF6857B6EA";
	setAttr -s 2 ".e[0:1]"  0.60540599 0.84145802;
	setAttr -s 2 ".d[0:1]"  -2147483120 -2147483114;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	rename -uid "1CC2D984-417F-E975-2543-00B5CE6AEA05";
	setAttr ".ics" -type "componentList" 1 "f[123]";
	setAttr ".ix" -type "matrix" 23.403296042726033 0 0 0 0 0.52549610454033624 0 0 0 0 23.868011815032645 0
		 0 0.059613548625544022 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.0222698 4.3223634 -10.10172 ;
	setAttr ".rs" 46667;
	setAttr ".lt" -type "double3" 2.2204460492503131e-016 -4.7889170022404757e-015 0.64641504994945953 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -7.878198926630426 4.3223635215503924 -11.477305056618812 ;
	setAttr ".cbx" -type "double3" 5.8336592106452123 4.3223635215503924 -8.7261342084627085 ;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	rename -uid "D2338A66-44E7-44D2-F48C-95A22498B0B2";
	setAttr ".ics" -type "componentList" 1 "f[89]";
	setAttr ".ix" -type "matrix" 23.403296042726033 0 0 0 0 0.52549610454033624 0 0 0 0 23.868011815032645 0
		 0 0.059613548625544022 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -6.9951019 4.3223634 -9.9071245 ;
	setAttr ".rs" 32789;
	setAttr ".lt" -type "double3" 2.6645352591003757e-015 -7.674101561465016e-016 0.95131905606565426 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -8.1957567944453569 4.3223635215503924 -11.477305056618812 ;
	setAttr ".cbx" -type "double3" -5.7944469538211338 4.3223635215503924 -8.3369435232965419 ;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	rename -uid "36CDE030-47BB-C710-6CEA-CA8218B4D577";
	setAttr ".ics" -type "componentList" 1 "f[92]";
	setAttr ".ix" -type "matrix" 23.403296042726033 0 0 0 0 0.52549610454033624 0 0 0 0 23.868011815032645 0
		 0 0.059613548625544022 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.4922729 6.3223634 -11.477304 ;
	setAttr ".rs" 52975;
	setAttr ".lt" -type "double3" 0 0 0.48677917204771148 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -8.1957567944453569 4.3223635215503924 -11.477305056618812 ;
	setAttr ".cbx" -type "double3" 11.180302616993639 8.3223629364443816 -11.477304345296631 ;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	rename -uid "F5D89B1A-4FF3-4DA0-06F0-4C8D8C216115";
	setAttr ".ics" -type "componentList" 1 "f[105]";
	setAttr ".ix" -type "matrix" 23.403296042726033 0 0 0 0 0.52549610454033624 0 0 0 0 23.868011815032645 0
		 0 0.059613548625544022 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -9.0315943 6.3223634 -11.477305 ;
	setAttr ".rs" 40410;
	setAttr ".lt" -type "double3" 0 0 1.0077040898400451 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -11.14861225313955 4.3223635215503924 -11.477305056618812 ;
	setAttr ".cbx" -type "double3" -6.914577096197835 8.3223629364443816 -11.477305056618812 ;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	rename -uid "C8BBD951-4E50-BB74-E4D6-298F8CF1D9B1";
	setAttr ".ics" -type "componentList" 1 "f[70]";
	setAttr ".ix" -type "matrix" 23.403296042726033 0 0 0 0 0.52549610454033624 0 0 0 0 23.868011815032645 0
		 0 0.059613548625544022 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -8.3910046 5.3223634 -11.477305 ;
	setAttr ".rs" 44781;
	setAttr ".lt" -type "double3" 0 0 1.6950640401780106 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -11.14861225313955 4.3223635215503924 -11.477305056618812 ;
	setAttr ".cbx" -type "double3" -5.6333970492140271 6.3223634795734558 -11.477305056618812 ;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "3BA987E3-4534-6EAA-F353-B38AFD88E320";
	setAttr ".ics" -type "componentList" 20 "f[0]" "f[2]" "f[4:5]" "f[7]" "f[9]" "f[11]" "f[13:14]" "f[18]" "f[22]" "f[26]" "f[31]" "f[35]" "f[96]" "f[101]" "f[109]" "f[114]" "f[129]" "f[134]" "f[149]" "f[154]";
	setAttr ".ix" -type "matrix" 23.403296042726033 0 0 0 0 0.52549610454033624 0 0 0 0 23.868011815032645 0
		 0 0.059613548625544022 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -0.070685722 0 ;
	setAttr ".rs" 53807;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -11.701648021363017 -0.2031345036446241 -11.934005907516323 ;
	setAttr ".cbx" -type "double3" 11.701648021363017 0.061763052790608425 11.934005907516323 ;
createNode polySplitRing -n "polySplitRing11";
	rename -uid "2AE62B46-4668-DBA5-FF98-1FA255C8E10A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 20 "e[4:5]" "e[8:9]" "e[15]" "e[18]" "e[22]" "e[25]" "e[28]" "e[36]" "e[40]" "e[48]" "e[56]" "e[62]" "e[187]" "e[196]" "e[213]" "e[223]" "e[254]" "e[264]" "e[295]" "e[305]";
	setAttr ".ix" -type "matrix" 23.403296042726033 0 0 0 0 0.52549610454033624 0 0 0 0 23.868011815032645 0
		 0 0.059613548625544022 0 1;
	setAttr ".wt" 0.50409042835235596;
	setAttr ".dr" no;
	setAttr ".re" 196;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing10";
	rename -uid "0BB248D6-4C13-B8B5-AFBB-EAAF155341BB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 20 "e[66:67]" "e[70]" "e[72]" "e[76]" "e[78]" "e[80]" "e[82]" "e[84]" "e[88]" "e[90:91]" "e[95]" "e[98]" "e[159]" "e[185]" "e[211]" "e[225]" "e[252]" "e[266]" "e[293]" "e[307]";
	setAttr ".ix" -type "matrix" 23.403296042726033 0 0 0 0 0.52549610454033624 0 0 0 0 23.868011815032645 0
		 0 0.059613548625544022 0 1;
	setAttr ".wt" 0.89185810089111328;
	setAttr ".dr" no;
	setAttr ".re" 159;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing9";
	rename -uid "DE02E2CC-4002-FD3F-404B-3DB0C9A662E1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 21 "e[37]" "e[51]" "e[65]" "e[75]" "e[119]" "e[134]" "e[176]" "e[247]" "e[249]" "e[251]" "e[253]" "e[255]" "e[259]" "e[261]" "e[263]" "e[265]" "e[267]" "e[275]" "e[277]" "e[279]" "e[283]";
	setAttr ".ix" -type "matrix" 23.403296042726033 0 0 0 0 0.52549610454033624 0 0 0 0 23.868011815032645 0
		 0 0.059613548625544022 0 1;
	setAttr ".wt" 0.66737949848175049;
	setAttr ".dr" no;
	setAttr ".re" 263;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing8";
	rename -uid "00FD3BA0-4575-D7A8-1352-EEBD3AD2A77C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 21 "e[37]" "e[51]" "e[65]" "e[75]" "e[119]" "e[134]" "e[176]" "e[206]" "e[208]" "e[210]" "e[212]" "e[214]" "e[218]" "e[220]" "e[222]" "e[224]" "e[226]" "e[234]" "e[236]" "e[238]" "e[242]";
	setAttr ".ix" -type "matrix" 23.403296042726033 0 0 0 0 0.52549610454033624 0 0 0 0 23.868011815032645 0
		 0 0.059613548625544022 0 1;
	setAttr ".wt" 0.6850237250328064;
	setAttr ".dr" no;
	setAttr ".re" 222;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing7";
	rename -uid "9411C443-4638-19FA-7D4C-00A20F9FFCD4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 20 "e[37]" "e[51]" "e[65]" "e[75]" "e[119]" "e[134]" "e[157:158]" "e[160]" "e[168]" "e[170]" "e[176]" "e[180]" "e[182]" "e[184]" "e[186]" "e[188]" "e[192]" "e[194]" "e[198]" "e[200]";
	setAttr ".ix" -type "matrix" 23.403296042726033 0 0 0 0 0.52549610454033624 0 0 0 0 23.868011815032645 0
		 0 0.059613548625544022 0 1;
	setAttr ".wt" 0.12393181771039963;
	setAttr ".re" 157;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing6";
	rename -uid "0B409911-4DF5-DDC0-BD34-4798DCD38CE4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 17 "e[12:14]" "e[16]" "e[32]" "e[37]" "e[44]" "e[51]" "e[59]" "e[65]" "e[73]" "e[75]" "e[87]" "e[89]" "e[106]" "e[116]" "e[119]" "e[134]" "e[136]";
	setAttr ".ix" -type "matrix" 23.403296042726033 0 0 0 0 0.52549610454033624 0 0 0 0 23.868011815032645 0
		 0 0.059613548625544022 0 1;
	setAttr ".wt" 0.1322435587644577;
	setAttr ".re" 12;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyMergeVert -n "polyMergeVert3";
	rename -uid "E36FB1E7-474D-CD7D-EB3E-7B82709C9201";
	setAttr ".ics" -type "componentList" 3 "vtx[49]" "vtx[56]" "vtx[60]";
	setAttr ".ix" -type "matrix" 23.403296042726033 0 0 0 0 0.52549610454033624 0 0 0 0 23.868011815032645 0
		 0 0.059613548625544022 0 1;
	setAttr ".d" 1e-006;
createNode polyTweak -n "polyTweak3";
	rename -uid "CAFCE322-45EF-D9B2-0AFC-43A03891607D";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk";
	setAttr ".tk[60]" -type "float3" 0 0.15546608 0 ;
createNode polyTweakUV -n "polyTweakUV3";
	rename -uid "18D430BB-43C0-25C4-1435-F5B1684066D1";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[72]" -type "float2" -1.6352058e-006 -5.9376466e-006 ;
	setAttr ".uvtk[77]" -type "float2" -5.394142e-007 -3.2835032e-006 ;
	setAttr ".uvtk[81]" -type "float2" -5.0419981e-006 1.7642538e-005 ;
	setAttr ".uvtk[82]" -type "float2" -3.2192927e-006 -1.3700057e-005 ;
createNode polyMergeVert -n "polyMergeVert2";
	rename -uid "0A7E94E0-45B5-34EF-B1C7-82AED6005C29";
	setAttr ".ics" -type "componentList" 3 "vtx[49]" "vtx[52]" "vtx[61]";
	setAttr ".ix" -type "matrix" 23.403296042726033 0 0 0 0 0.52549610454033624 0 0 0 0 23.868011815032645 0
		 0 0.059613548625544022 0 1;
	setAttr ".d" 1e-006;
createNode polyTweak -n "polyTweak2";
	rename -uid "0433E1DA-4FEC-91C6-0FDD-A787761692D3";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk";
	setAttr ".tk[61]" -type "float3" 0 0.15546608 0 ;
createNode polyTweakUV -n "polyTweakUV2";
	rename -uid "3EE39652-482D-6AF8-F138-FF82B16187D7";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[71]" -type "float2" 1.6351686e-006 -5.9374311e-006 ;
	setAttr ".uvtk[72]" -type "float2" -3.2746145e-006 -1.1869123e-005 ;
	setAttr ".uvtk[82]" -type "float2" -3.9399756e-006 -1.9536352e-005 ;
	setAttr ".uvtk[83]" -type "float2" 3.1289626e-006 -1.2980869e-005 ;
createNode polyMergeVert -n "polyMergeVert1";
	rename -uid "C4F15BEB-42AE-082C-6DB0-72AE93BE1886";
	setAttr ".ics" -type "componentList" 3 "vtx[52]" "vtx[59:60]" "vtx[63]";
	setAttr ".ix" -type "matrix" 23.403296042726033 0 0 0 0 0.52549610454033624 0 0 0 0 23.868011815032645 0
		 0 0.059613548625544022 0 1;
	setAttr ".d" 1e-006;
createNode polyTweak -n "polyTweak1";
	rename -uid "15B8BB12-4175-A7DB-67E7-E2A1CA930821";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[60]" -type "float3" 0 0.15546608 0 ;
	setAttr ".tk[63]" -type "float3" 0 0.15546608 0 ;
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "B7D7678E-420E-55F8-F5E3-02A2650AD9A4";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[71]" -type "float2" 3.274637e-006 -1.1869163e-005 ;
	setAttr ".uvtk[78]" -type "float2" 1.110223e-016 -1.3317996e-006 ;
	setAttr ".uvtk[80]" -type "float2" 4.3969612e-006 1.5935177e-005 ;
	setAttr ".uvtk[83]" -type "float2" 5.1355669e-006 -1.3303214e-005 ;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "A4BF08AA-46B6-9400-7ED7-98BCDDF4E09C";
	setAttr ".ics" -type "componentList" 8 "f[1]" "f[6]" "f[10]" "f[19:21]" "f[27]" "f[29]" "f[32]" "f[34]";
	setAttr ".ix" -type "matrix" 23.403296042726033 0 0 0 0 0.52549610454033624 0 0 0 0 23.868011815032645 0
		 0 0.059613548625544022 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 4.3223624 0 ;
	setAttr ".rs" 43631;
	setAttr ".lt" -type "double3" 0 0 4 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -11.701648021363017 4.3223625192461155 -11.934005907516323 ;
	setAttr ".cbx" -type "double3" 11.701648021363017 4.3223625192461155 11.934005907516323 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "7E6B9719-4E62-26FA-4936-EDB7A3B58C09";
	setAttr ".ics" -type "componentList" 1 "f[28]";
	setAttr ".ix" -type "matrix" 23.403296042726033 0 0 0 0 0.52549610454033624 0 0 0 0 23.868011815032645 0
		 0 0.059613548625544022 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.01584553 0.32236159 -8.3369436 ;
	setAttr ".rs" 39933;
	setAttr ".lt" -type "double3" 0 -9.0631849461546224e-016 3.9183043653708149 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -11.14861225313955 0.32236160089571214 -11.477304345296631 ;
	setAttr ".cbx" -type "double3" 11.180303314466213 0.32236160089571214 -5.1965830569575457 ;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "8B010106-4284-9C9C-09B2-AEB8ACFB0376";
	setAttr ".ics" -type "componentList" 8 "f[1]" "f[6]" "f[10]" "f[19:21]" "f[27]" "f[29]" "f[32]" "f[34]";
	setAttr ".ix" -type "matrix" 23.403296042726033 0 0 0 0 0.52549610454033624 0 0 0 0 23.868011815032645 0
		 0 0.059613548625544022 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.32236159 0 ;
	setAttr ".rs" 49861;
	setAttr ".lt" -type "double3" 0 -9.8111474138446057e-016 4 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -11.701648021363017 0.32236160089571214 -11.934005907516323 ;
	setAttr ".cbx" -type "double3" 11.701648021363017 0.32236160089571214 11.934005907516323 ;
createNode polySplitRing -n "polySplitRing5";
	rename -uid "0214E439-4C68-1400-6AED-88BEB75C8686";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[29]" "e[31]" "e[33]" "e[35]" "e[44]" "e[53]" "e[55]" "e[57]";
	setAttr ".ix" -type "matrix" 23.403296042726033 0 0 0 0 0.52549610454033624 0 0 0 0 23.868011815032645 0
		 0 0.059613548625544022 0 1;
	setAttr ".wt" 0.2754366397857666;
	setAttr ".re" 31;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing4";
	rename -uid "1A17291E-4FA2-6DD5-48AA-3981BC29E032";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[6:7]" "e[14]" "e[22]" "e[29]" "e[31]" "e[33]" "e[35]";
	setAttr ".ix" -type "matrix" 23.403296042726033 0 0 0 0 0.52549610454033624 0 0 0 0 23.868011815032645 0
		 0 0.059613548625544022 0 1;
	setAttr ".wt" 0.025992913171648979;
	setAttr ".re" 6;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing3";
	rename -uid "236F982E-41C2-E81E-2775-F8A6F393759F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[6:7]" "e[10:11]" "e[14]" "e[18]" "e[22]" "e[26]";
	setAttr ".ix" -type "matrix" 23.403296042726033 0 0 0 0 0.52549610454033624 0 0 0 0 23.868011815032645 0
		 0 0.059613548625544022 0 1;
	setAttr ".wt" 0.98086553812026978;
	setAttr ".dr" no;
	setAttr ".re" 6;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing2";
	rename -uid "8CEBB3BE-48D9-EA63-FA35-0FB775770FAC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[12:13]" "e[15]" "e[17]";
	setAttr ".ix" -type "matrix" 23.403296042726033 0 0 0 0 0.52549610454033624 0 0 0 0 23.868011815032645 0
		 0 0.059613548625544022 0 1;
	setAttr ".wt" 0.97718429565429688;
	setAttr ".dr" no;
	setAttr ".re" 12;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing1";
	rename -uid "02ACFEE5-4A52-09AB-7EE4-E79694CB41BC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:3]";
	setAttr ".ix" -type "matrix" 23.403296042726033 0 0 0 0 0.52549610454033624 0 0 0 0 23.868011815032645 0
		 0 0.059613548625544022 0 1;
	setAttr ".wt" 0.023630674928426743;
	setAttr ".re" 1;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyCube -n "polyCube1";
	rename -uid "2693338E-4FEF-6560-0C98-7C856A83079C";
	setAttr ".cuv" 4;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "deleteComponent1.og" "pCubeShape1.i";
connectAttr "polyTweakUV3.uvtk[0]" "pCubeShape1.uvst[0].uvtw";
connectAttr "polyExtrudeFace12.out" "deleteComponent1.ig";
connectAttr "polyExtrudeFace11.out" "polyExtrudeFace12.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace12.mp";
connectAttr "polyExtrudeFace10.out" "polyExtrudeFace11.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace11.mp";
connectAttr "polySplit5.out" "polyExtrudeFace10.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace10.mp";
connectAttr "polySplit4.out" "polySplit5.ip";
connectAttr "polySplit3.out" "polySplit4.ip";
connectAttr "polySplit2.out" "polySplit3.ip";
connectAttr "polySplit1.out" "polySplit2.ip";
connectAttr "polyExtrudeFace9.out" "polySplit1.ip";
connectAttr "polyExtrudeFace8.out" "polyExtrudeFace9.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace9.mp";
connectAttr "polyExtrudeFace7.out" "polyExtrudeFace8.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace8.mp";
connectAttr "polyExtrudeFace6.out" "polyExtrudeFace7.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace7.mp";
connectAttr "polyExtrudeFace5.out" "polyExtrudeFace6.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace6.mp";
connectAttr "polyExtrudeFace4.out" "polyExtrudeFace5.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace5.mp";
connectAttr "polySplitRing11.out" "polyExtrudeFace4.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace4.mp";
connectAttr "polySplitRing10.out" "polySplitRing11.ip";
connectAttr "pCubeShape1.wm" "polySplitRing11.mp";
connectAttr "polySplitRing9.out" "polySplitRing10.ip";
connectAttr "pCubeShape1.wm" "polySplitRing10.mp";
connectAttr "polySplitRing8.out" "polySplitRing9.ip";
connectAttr "pCubeShape1.wm" "polySplitRing9.mp";
connectAttr "polySplitRing7.out" "polySplitRing8.ip";
connectAttr "pCubeShape1.wm" "polySplitRing8.mp";
connectAttr "polySplitRing6.out" "polySplitRing7.ip";
connectAttr "pCubeShape1.wm" "polySplitRing7.mp";
connectAttr "polyMergeVert3.out" "polySplitRing6.ip";
connectAttr "pCubeShape1.wm" "polySplitRing6.mp";
connectAttr "polyTweak3.out" "polyMergeVert3.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert3.mp";
connectAttr "polyTweakUV3.out" "polyTweak3.ip";
connectAttr "polyMergeVert2.out" "polyTweakUV3.ip";
connectAttr "polyTweak2.out" "polyMergeVert2.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert2.mp";
connectAttr "polyTweakUV2.out" "polyTweak2.ip";
connectAttr "polyMergeVert1.out" "polyTweakUV2.ip";
connectAttr "polyTweak1.out" "polyMergeVert1.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert1.mp";
connectAttr "polyTweakUV1.out" "polyTweak1.ip";
connectAttr "polyExtrudeFace3.out" "polyTweakUV1.ip";
connectAttr "polyExtrudeFace2.out" "polyExtrudeFace3.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace1.out" "polyExtrudeFace2.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace2.mp";
connectAttr "polySplitRing5.out" "polyExtrudeFace1.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polySplitRing4.out" "polySplitRing5.ip";
connectAttr "pCubeShape1.wm" "polySplitRing5.mp";
connectAttr "polySplitRing3.out" "polySplitRing4.ip";
connectAttr "pCubeShape1.wm" "polySplitRing4.mp";
connectAttr "polySplitRing2.out" "polySplitRing3.ip";
connectAttr "pCubeShape1.wm" "polySplitRing3.mp";
connectAttr "polySplitRing1.out" "polySplitRing2.ip";
connectAttr "pCubeShape1.wm" "polySplitRing2.mp";
connectAttr "polyCube1.out" "polySplitRing1.ip";
connectAttr "pCubeShape1.wm" "polySplitRing1.mp";
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
// End of ArcadeM1.ma
