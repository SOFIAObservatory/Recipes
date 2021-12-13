pro plotIKTau,smoothFac=smoothFac,rebinFac=rebinFac;,CMB=CMB

  ;if not keyword_set(CMB) then CMB=0

  if not keyword_set(smoothFac) then smoothFac=0
  if not keyword_set(rebinFac) then rebinFac=0
  
  ;;;;;;
  ;rebin factors:
  ;1 | 2 | 4 | 5 | 10 | 20 | 25 | 50 | 100 | 277 | 554 | 1108 | 1385 | 2770 | 5540 | 6925 | 13850 | 27700 (18 divisors)
  ;;;;;;
  
  ;if CMB eq 0 then begin

  fits_read,'iktau_feb2020_MRD.fits',im1,hd1
  ;fits_read,'/Users/emontiel/EXES--PostDoc/Data/AGBStars/pallas/hilo724cm-1/pallas_apr2019_MRD.fits',im2,hd2   


  ;expansion velocity factored in
  dopplerShift =58.576693
  dopplerShift = dopplerShift/3.0d5
  dS = '58.576693'
  ;no expansion velocity
  dopplerShift2 = 77.576693
  dopplerShift2 = dopplerShift2/3.0d5
  dS2 ='77.576693'

  ;77.850279 seems to get center of H2O emission component aligned with synth spec
  ;77.576693 is output from calculating doppler shift for time of observation

  
  wv1 = im1[*,0]
  ;fx1 = smooth(im1[*,1]/median(im1[*,1],/even),smoothFac,/nan)
  fx1 = im1[*,1]/median(im1[*,1],/even)
  at1 = im1[*,3]
  
  if rebinFac ne 0 then begin
     wv1 = frebin(wv1,rebinFac)
     fx1 = frebin(fx1,rebinFac)
     at1 = frebin(at1,rebinFac)
  endif

  ;wv2 = im2[*,0]
  ;fx2 = smooth(im2[*,1]/median(im2[*,1],/even),smoothFac,/nan)
  ;at2 = im2[*,3]

     
  x0=1312
  answer = ''
     
  ;readcol,'synthC2H2_724.txt',wvnC2H2,fxC2H2,format='d,d'
  ;readcol,'synthHCN_724.txt',wvnHCN,fxHCN,format='d,d'
  ;readcol,'synthCO2_724.txt',wvnCO2,fxCO2,format='d,d'


  ;O-rich molecules
  readcol,'/Users/emontiel/EXES--PostDoc/Data/AGBStars/32S-16O2_1300-1400_300K_0.010000.sigma',wnSO2,sigSO2,format='d,d'
  readcol,'/Users/emontiel/EXES--PostDoc/Data/AGBStars/1H2-16O_1300-1400_300K_0.010000.sigma',wnH2O,sigH2O,format='d,d'
  readcol,'/Users/emontiel/EXES--PostDoc/Data/AGBStars/1H-2H-16O_1300-1400_300K_0.010000.sigma',wnHDO,sigHDO,format='d,d'
  readcol,'/Users/emontiel/EXES--PostDoc/Data/AGBStars/1H2-12C-16O_1300-1400_700K_0.010000.sigma',wnH2CO,sigH2CO,format='d,d'
  readcol,'/Users/emontiel/EXES--PostDoc/Data/AGBStars/31P-16O_1300-1400_700K_0.010000.sigma',wnPO,sigPO,format='d,d'
  readcol,'/Users/emontiel/EXES--PostDoc/Data/AGBStars/32S-16O3_1300-1400_300K_0.010000.sigma',wnSO3,sigSO3,format='d,d'
  readcol,'/Users/emontiel/EXES--PostDoc/Data/AGBStars/1H2-16O2_1300-1400_300K_0.010000.sigma',wnH2O2,sigH2O2,format='d,d'
  readcol,'/Users/emontiel/EXES--PostDoc/Data/AGBStars/1H-14N-16O3_1300-1400_300K_0.010000.sigma',wnHNO3,sigHNO3,format='d,d'
  readcol,'/Users/emontiel/EXES--PostDoc/Data/AGBStars/28Si-16O2_1300-1400_300K_0.010000.sigma',wnSiO2,sigSiO2,format='d,d'
  ;readcol,'/Users/emontiel/EXES--PostDoc/Data/AGBStars/28Si-16O_1300-1400_300K_0.010000.sigma',wnSiO,sigSiO,format='d,d'
  ;readcol,'/Users/emontiel/EXES--PostDoc/Data/AGBStars/48Ti-16O_1300-1400_700K_0.010000.sigma',wnTiO,sigTiO,format='d,d'
  ;readcol,'/Users/emontiel/EXES--PostDoc/Data/AGBStars/27Al-16O_1300-1400_700K_0.010000.sigma',wnAlO,sigAlO,format='d,d'
  ;readcol,'/Users/emontiel/EXES--PostDoc/Data/AGBStars/24Mg-16O_1300-1400_700K_0.010000.sigma',wnMgO,sigMgO,format='d,d'
  ;readcol,'/Users/emontiel/EXES--PostDoc/Data/AGBStars/40Ca-16O_1300-1400_700K_0.010000.sigma',wnCaO,sigCaO,format='d,d'

  ;C-rich molecules
  readcol,'/Users/emontiel/EXES--PostDoc/Data/AGBStars/1H-12C-14N_1300-1400_700K_0.010000.sigma',wnHCN,sigHCN,format='d,d'
  readcol,'/Users/emontiel/EXES--PostDoc/Data/AGBStars/12C2-1H2_1300-1400_700K_0.010000.sigma',wnC2H2,sigC2H2,format='d,d'
  readcol,'/Users/emontiel/EXES--PostDoc/Data/AGBStars/12C-32S_1300-1400_700K_0.010000.sigma',wnCS,sigCS,format='d,d'
  readcol,'/Users/emontiel/EXES--PostDoc/Data/AGBStars/12C-1H4_1300-1400_300K_0.010000.sigma',wnCH4,sigCH4,format='d,d'

  ;Misc molecules
  readcol,'/Users/emontiel/EXES--PostDoc/Data/AGBStars/31P-1H3_1300-1400_300K_0.010000.sigma',wnPH3,sigPH3,format='d,d'
  readcol,'/Users/emontiel/EXES--PostDoc/Data/AGBStars/28Si-1H4_1300-1400_300K_0.010000.sigma',wnSiH4,sigSiH4,format='d,d'
  readcol,'/Users/emontiel/EXES--PostDoc/Data/AGBStars/1H2-32S_1300-1400_2000K_0.010000.sigma',wnH2S,sigH2S,format='d,d'
  readcol,'/Users/emontiel/EXES--PostDoc/Data/AGBStars/12C-16O_1300-1400_2000K_0.010000.sigma',wnCO,sigCO,format='d,d'
  readcol,'/Users/emontiel/EXES--PostDoc/Data/AGBStars/14N-1H3_1300-1400_300K_0.010000.sigma',wnNH3,sigNH3,format='d,d'
  readcol,'/Users/emontiel/EXES--PostDoc/Data/AGBStars/23Na-35Cl_1300-1400_300K_0.010000.sigma',wnNaCl,sigNaCl,format='d,d'
  readcol,'/Users/emontiel/EXES--PostDoc/Data/AGBStars/28Si-32S_1300-1400_700K_0.010000.sigma',wnSiS,sigSiS,format='d,d'
  
  ;stop
  !P.Multi = [0,1,2]

   
  TVLCT, 255, 255, 255, 254     ; White color
  TVLCT, 0, 0, 0, 253           ; Black color
  !P.Color = 253
  !P.Background = 254

  
  while (x0 le 1359) do begin
     ;   idx = where(wv1 ge x0 and wv1 le x0+1.0)
     plot,im1[*,0],im1[*,1],/nodata,charsize=1.5,xrange=[x0,x0+1.0],/xsty,yrange=[0,1.9],/ysty,$
          xtitle='WVN [cm-1]',title='Shift: '+dS+' km s-1'

     ;oplot,wv1*(1+dopplerShift),fx1/ffx2,psym=10
     oplot,wv1*(1+dopplerShift),fx1,psym=10,thick=3
     ;oplot,wv2*(1+dopplerShift),smooth(fx2,0,/nan),color=150,psym=10


        ;oplot,wv1,at1,color=254,linestyle=3
        ;oplot,wv2,at2,color=200,linestyle=3
     
     oplot,wv1*(1+dopplerShift),at1,color=250,linestyle=3,thick=3
     ;   oplot,wv2*(1+dopplerShift[1]),at2,color=254,linestyle=2

     ;   oplot,wvnHCN,fxHCN,color=100
     ;   oplot,wvnC2H2,fxC2H2,color=25
     ;oplot,wvnCO2,fxCO2*1.4,color=200
     ;oplot,wnPH3,gauss_smooth(exp(-6d21*sigPH3),2),color=100
     ;oplot,wnSO2,gauss_smooth(exp(-3.5d19*sigSO2),2),color=100
     ;oplot,wnSiH4,gauss_smooth(exp(-6d21*sigSiH4),2),color=200
     ;oplot,wnHCN,gauss_smooth(exp(-1.0d19*sigHCN),2),color=25,thick=2,psym=10
     ;oplot,wnC2H2,gauss_smooth(exp(-1.0d19*sigC2H2),2),color=50,thick=2,psym=10
     oplot,wnH2O,gauss_smooth(exp(-2.5d21*sigH2O),2),color=100,thick=2,psym=10
     ;oplot,wnHDO,gauss_smooth(exp(-2.5d20*sigHDO),2),color=150,thick=2,psym=10 
     ;oplot,wnH2CO,gauss_smooth(exp(-5.0d18*sigH2CO),2),color=150,thick=2,psym=10
     ;oplot,wnSiO2,gauss_smooth(exp(-2.5d19*sigSiO2),2),color=150,thick=2,psym=10
     ;oplot,wnSO2,gauss_smooth(exp(-5.5d17*sigSO2),2),color=200,thick=2,psym=10
     ;oplot,wnCH4,gauss_smooth(exp(-3.2d21*sigCH4),2),color=150,thick=2,psym=10
     ;oplot,wnH2CO,gauss_smooth(exp(-9.5d18*sigH2CO),2),color=200,thick=2
     ;oplot,wnNH3,gauss_smooth(exp(-3.2d21*sigNH3),2),color=200,thick=2
     ;oplot,wnSiS,gauss_smooth(exp(-2.5d24*sigSiS),2),color=225,thick=2,psym=10
     ;oplot,wnH2O,gauss_smooth(exp(-2.5d21*sigH2O),2),color=100,thick=2
     ;oplot,wnH2S,gauss_smooth(exp(-1.5d20*sigH2S),2),color=225 ;,thick=2
     ;oplot,wnCS,gauss_smooth(exp(-5d21*sigCS),2),color=25,thick=2
     ;oplot,wnPO,gauss_smooth(exp(-3d28*sigPO),2),color=200
     ;oplot,wnSO3,gauss_smooth(exp(-5.0d19*sigSO3),2),color=200
     ;oplot,wnNaCl,gauss_smooth(exp(-1d26*sigNaCl),2),color=25,thick=2
     ;oplot,wnC2H2,gauss_smooth(exp(-1.0d19*sigC2H2),2),color=200,thick=2
     ;oplot,wnC2H2,fxC2H2,color=200
     
     ;gauss_smooth(exp(-9.5d17*sigSO2),2)
     ;oplot,wnH2O,gauss_smooth(exp(-2.5d21*sigH2O),2)*gauss_smooth(exp(-3d20*sigCH4),2)$
     ;      *gauss_smooth(exp(-3.0d20*sigNH3),2)*gauss_smooth(exp(-9.5d17*sigH2CO),2),color=100 ;,thick=2

     
     ;no expansion velocity

     plot,im1[*,0],im1[*,1],/nodata,charsize=1.5,xrange=[x0,x0+1.0],/xsty,yrange=[0,1.9],/ysty,$
          xtitle='WVN [cm-1]',title='Shift: '+dS2+' km s-1'

     ;oplot,wv1*(1+dopplerShift),fx1/ffx2,psym=10
     oplot,wv1*(1+dopplerShift2),fx1,psym=10,thick=3
     ;oplot,wv2*(1+dopplerShift2),fx2,color=150,psym=10

     oplot,wv1*(1+dopplerShift2),at1,color=250,linestyle=3,thick=3
     ;oplot,wnPH3,gauss_smooth(exp(-6d21*sigPH3),2),color=100
     ;oplot,wnSO2,gauss_smooth(exp(-3.5d19*sigSO2),2),color=100
     ;oplot,wnSiH4,gauss_smooth(exp(-6d21*sigSiH4),2),color=200
     ;oplot,wnHCN,gauss_smooth(exp(-1.0d19*sigHCN),2),color=25,thick=2,psym=10
     ;oplot,wnC2H2,gauss_smooth(exp(-1.0d19*sigC2H2),2),color=50,thick=2,psym=10
     oplot,wnH2O,gauss_smooth(exp(-2.5d21*sigH2O),2),color=100,thick=2,psym=10
     ;oplot,wnHDO,gauss_smooth(exp(-2.5d20*sigHDO),2),color=150,thick=2,psym=10 
     ;oplot,wnH2CO,gauss_smooth(exp(-5.0d18*sigH2CO),2),color=150,thick=2,psym=10
     ;oplot,wnSiO2,gauss_smooth(exp(-2.5d19*sigSiO2),2),color=150,thick=2,psym=10
     ;oplot,wnSO2,gauss_smooth(exp(-5.5d17*sigSO2),2),color=200,thick=2,psym=10
     ;oplot,wnCH4,gauss_smooth(exp(-3.2d21*sigCH4),2),color=150,thick=2,psym=10
     ;oplot,wnH2CO,gauss_smooth(exp(-9.5d18*sigH2CO),2),color=200,thick=2
     ;oplot,wnSiS,gauss_smooth(exp(-2.5d24*sigSiS),2),color=225,thick=2,psym=10
     ;oplot,wnH2O,gauss_smooth(exp(-2.5d21*sigH2O),2),color=100,thick=2
     ;oplot,wnH2S,gauss_smooth(exp(-1.5d20*sigH2S),2),color=225 ;,thick=2
     ;oplot,wnCS,gauss_smooth(exp(-5d21*sigCS),2),color=25,thick=2
     ;oplot,wnPO,gauss_smooth(exp(-3d28*sigPO),2),color=200
     ;oplot,wnSO3,gauss_smooth(exp(-5.0d19*sigSO3),2),color=200
     ;oplot,wnNaCl,gauss_smooth(exp(-1d26*sigNaCl),2),color=25,thick=2
     ;oplot,wnC2H2,gauss_smooth(exp(-1.0d19*sigC2H2),2),color=200,thick=2
     ;oplot,wnC2H2,fxC2H2,color=200
     
     ;gauss_smooth(exp(-9.5d17*sigSO2),2)
     ;oplot,wnH2O,gauss_smooth(exp(-2.5d21*sigH2O),2)*gauss_smooth(exp(-3d20*sigCH4),2)$
     ;      *gauss_smooth(exp(-3.0d20*sigNH3),2)*gauss_smooth(exp(-9.5d17*sigH2CO),2),color=100 ;,thick=2
     
     read,answer
     x0 = x0+0.25
  endwhile
  ;endif else begin

  ;   fits_read,'vxsgr_oct2018_CMB.fits',im1,hd1
  ;   fits_read,'vxsgr_apr2019_CMB.fits',im2,hd2
     
     
  ;   dopplerShift = [-30.3667889204,-85.552648]
  ;   dopplerShift = dopplerShift/3.0d5
  ;   answer = ''
     
  ;   for i=0,58 do begin
  ;      wv1 = im1[*,0,i]
  ;      fx1 = im1[*,1,i]/median(im1[*,1,i],/even)
  ;      at1 = im1[*,3,i]
     
  ;      wv2 = im2[*,0,i+3]
  ;      fx2 = im2[*,1,i+3]/median(im2[*,1,i+3],/even)
  ;      at2 = im2[*,3,i+3]

  ;      plot,wv1,fx1,/nodata,charsize=1.5,xtitle='WVN [cm-1]',xrange=[min(wv1)-0.1,max(wv2)+0.1],/xsty,$
  ;                                                                   yrange=[-0.1,3.0],/ysty

  ;      oplot,wv1,smooth(fx1,5,/nan),ps=10
  ;      oplot,wv2,smooth(fx2,5,/nan),color=150,ps=10

  ;      oplot,wv1,at1,color=254,linestyle=3
  ;      oplot,wv2,at2,color=200,linestyle=3
  ;      read,answer
  ;   endfor
     
  !P.Multi=[0,0,0]

  ;endelse
  ;stop
end



;oplot,im1[*,0]*(1+dopplerShift),im1[*,3]*200.,color=254,linestyle=2
;oplot,wvnCO2,fxCO2*170.,color=200


;plot,wv1*(1+dopplerShift),fx1/ffx2,xrange=[736,740],/xsty,psym=10
;oplot,wv1*(1+dopplerShift),ffx2,color=225,linestyle=4            
;oplot,wv1*(1+dopplerShift),fx1,color=150,linestyle=4             
;oplot,wv1*(1+dopplerShift[0]),at1,color=254,linestyle=3
;oplot,wvnCO2,fxCO2,color=200                                     
