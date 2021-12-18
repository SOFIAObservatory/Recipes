pro plotIKTau,smoothFac=smoothFac

  if not keyword_set(smoothFac) then smoothFac=0

  fits_read,'iktau_feb2020_MRD.fits',im1,hd1
  fits_read,'/Users/emontiel/EXES--PostDoc/Data/AGBStars/ceres/hilo757cm-1/ceres_apr2019_MRD.fits',im2,hd2   

  ;expansion velocity factored in
  dopplerShift = 58.576693
  dopplerShift = dopplerShift/3.0d5
  dS = '58.576693'
  ;no expansion velocity
  dopplerShift2 = 77.576693
  dopplerShift2 = dopplerShift2/3.0d5
  dS2 = '77.576693'
  
  
  wv1 = im1[*,0]
  fx1 = smooth(im1[*,1]/median(im1[*,1],/even),smoothFac,/nan)
  at1 = im1[*,3]

  ;idx = where(wv1 ge 737 and wv1 le 741.5) 

  ;idx = where(wv1 ge 702.7 and wv1 le 742.1) 
  
  ;wv1 = wv1[idx]
  ;fx1 = fx1[idx]/median(fx1[idx],/even)
  ;at1 = at1[idx]


  wv2 = im2[*,0]
  fx2 = smooth(im2[*,1]/median(im2[*,1],/even),smoothFac,/nan)
  at2 = im2[*,3]


  ;idx2 = where(wv2 ge 737 and wv2 le 741.5)
  ;idx2 = where(wv2 ge 702.7 and wv2 le 742.1)

  ;wv2 = wv2[idx2]
  ;fx2 = fx2[idx2]/median(fx2[idx2],/even)
  ;at2 = at2[idx2]

  ;mc_interpspec,wv2,fx2,wv1,ffx2
  
  x0=737.0
  answer = ''
    
  readcol,'/Users/emontiel/EXES--PostDoc/Data/AGBStars/12C-16O2_700-800_700K_0.010000.sigma',wvnCO2,sigCO2,format='d,d'
  readcol,'/Users/emontiel/EXES--PostDoc/Data/AGBStars/1H2-16O_700-800_700K_0.010000.sigma',wvnH2O,sigH2O,format='d,d'
  readcol,'/Users/emontiel/EXES--PostDoc/Data/AGBStars/1H2-16O2_700-800_300K_0.010000.sigma',wvnH2O2,sigH2O2,format='d,d'
  readcol,'/Users/emontiel/EXES--PostDoc/Data/AGBStars/1H2-12C-16O_700-800_300K_0.010000.sigma',wvnH2CO,sigH2CO,format='d,d'
  readcol,'/Users/emontiel/EXES--PostDoc/Data/AGBStars/32S-16O2_700-800_300K_0.010000.sigma',wvnSO2,sigSO2,format='d,d'
  readcol,'/Users/emontiel/EXES--PostDoc/Data/AGBStars/1H-2H-16O_700-800_300K_0.010000.sigma',wvnHDO,sigHDO,format='d,d'

  
  readcol,'/Users/emontiel/EXES--PostDoc/Data/AGBStars/1H-12C-14N_700-800_700K_0.010000.sigma',wvnHCN,sigHCN,format='d,d'
  readcol,'/Users/emontiel/EXES--PostDoc/Data/AGBStars/1H-13C-14N_700-800_700K_0.010000.sigma',wvnH13CN,sigH13CN,format='d,d'
  readcol,'/Users/emontiel/EXES--PostDoc/Data/AGBStars/12C2-1H2_700-800_700K_0.010000.sigma',wvnC2H2,sigC2H2,format='d,d'
  readcol,'/Users/emontiel/EXES--PostDoc/Data/AGBStars/14N-1H3_700-800_300K_0.010000.sigma',wvnNH3,sigNH3,format='d,d'
  readcol,'/Users/emontiel/EXES--PostDoc/Data/AGBStars/28Si-32S_700-800_300K_0.010000.sigma',wvnSiS,sigSiS,format='d,d'
  ;readcol,'testO3_100K.txt',wvnO3,fxO3,format='d,d'
  

  TVLCT, 255, 255, 255, 254     ; White color
  TVLCT, 0, 0, 0, 253           ; Black color
  !P.Color = 253
  !P.Background = 254

  
  !P.Multi=[0,1,2]
  while (x0 le 784) do begin
     ;expansion velocity
     plot,im1[*,0],im1[*,1],/nodata,charsize=1.5,xrange=[x0,x0+1.0],/xsty,yrange=[0,1.5],/ysty,$
          xtitle='WVN [cm-1]',title='Shift: '+dS+' km s-1'

     
     ;oplot,wv1*(1+dopplerShift),fx1/ffx2,psym=10
     oplot,wv1*(1+dopplerShift),fx1,psym=10,thick=3
     oplot,wv2*(1+dopplerShift),smooth(fx2,0,/nan),color=150,psym=10,thick=3


        ;oplot,wv1,at1,color=254,linestyle=3
        ;oplot,wv2,at2,color=200,linestyle=3
     
     oplot,wv1*(1+dopplerShift),at1,color=250,linestyle=3,thick=3
     ;   oplot,wv2*(1+dopplerShift[1]),at2,color=254,linestyle=2

     ;   oplot,wvnHCN,fxHCN,color=100
     ;oplot,wvnC2H2,fxC2H2,color=25
     oplot,wvnHCN,gauss_smooth(exp(-3d18*sigHCN),2),color=25,thick=2,psym=10
     ;oplot,wvnH13CN,gauss_smooth(exp(-3d18*sigH13CN),2),color=225,thick=2,psym=10
     oplot,wvnC2H2,gauss_smooth(exp(-1d18*sigC2H2),2),color=50,thick=2,psym=10
     ;oplot,wvnH2O2,gauss_smooth(exp(-3.5d20*sigH2O2),2),color=50,thick=2,psym=10
     oplot,wvnH2O,gauss_smooth(exp(-1d20*sigH2O),2),color=100,thick=2,psym=10
     ;oplot,wvnHDO,gauss_smooth(exp(-1d21*sigHDO),2),color=200,thick=2,psym=10
     ;oplot,wvnH2CO,gauss_smooth(exp(-3.5d24*sigH2CO),2),color=150,thick=2,psym=10
     ;oplot,wvnSO2,gauss_smooth(exp(-1.5d24*sigSO2),2),psym=10,color=200,thick=2
     ;oplot,wvnCO2,gauss_smooth(exp(-1d19*sigCO2),2),color=200,thick=2,psym=10
     oplot,wvnNH3,gauss_smooth(exp(-1d21*sigNH3),2),color=225,thick=2,psym=10
     ;oplot,wvnO3,fxO3,color=100,thick=2
     
     ;no expansion velocity

     plot,im1[*,0],im1[*,1],/nodata,charsize=1.5,xrange=[x0,x0+1.0],/xsty,yrange=[-0.15,1.8],/ysty,$
          xtitle='WVN [cm-1]',title='Shift: '+dS2+' km s-1'

     ;oplot,wv1*(1+dopplerShift),fx1/ffx2,psym=10
     oplot,wv1*(1+dopplerShift2),fx1,psym=10,thick=3
     oplot,wv2*(1+dopplerShift2),fx2,color=150,psym=10,thick=3

     oplot,wv1*(1+dopplerShift2),at1,color=250,linestyle=3,thick=3

     ;oplot,wvnC2H2,fxC2H2,color=25
     oplot,wvnHCN,gauss_smooth(exp(-3d18*sigHCN),2),color=25,thick=2,psym=10
     ;oplot,wvnH13CN,gauss_smooth(exp(-3d18*sigH13CN),2),color=225,thick=2,psym=10
     oplot,wvnC2H2,gauss_smooth(exp(-1d18*sigC2H2),2),color=50,thick=2,psym=10
     ;oplot,wvnH2O2,gauss_smooth(exp(-3.5d20*sigH2O2),2),color=50,thick=2,psym=10
     oplot,wvnH2O,gauss_smooth(exp(-3d20*sigH2O),2),color=100,thick=2,psym=10
     ;oplot,wvnHDO,gauss_smooth(exp(-1d21*sigHDO),2),color=200,thick=2,psym=10
     ;oplot,wvnH2CO,gauss_smooth(exp(-3.5d24*sigH2CO),2),color=150,thick=2,psym=10
     ;oplot,wvnSO2,gauss_smooth(exp(-1.5d24*sigSO2),2),psym=10,color=200,thick=2
     ;oplot,wvnCO2,gauss_smooth(exp(-1d19*sigCO2),2),color=200,thick=2,psym=10
     oplot,wvnNH3,gauss_smooth(exp(-1d21*sigNH3),2),color=225,thick=2,psym=10
     ;oplot,wvnO3,fxO3,color=100,thick=2
     ;oplot,wvnCO2,fxCO2*1.4,color=225
       

     
     read,answer
     x0 = x0+0.25
     endwhile
  !P.Multi = [0,0,0]

end



;oplot,im1[*,0]*(1+dopplerShift),im1[*,3]*200.,color=254,linestyle=2
;oplot,wvnCO2,fxCO2*170.,color=200


;plot,wv1*(1+dopplerShift),fx1/ffx2,xrange=[736,740],/xsty,psym=10
;oplot,wv1*(1+dopplerShift),ffx2,color=225,linestyle=4            
;oplot,wv1*(1+dopplerShift),fx1,color=150,linestyle=4             
;oplot,wv1*(1+dopplerShift[0]),at1,color=254,linestyle=3
;oplot,wvnCO2,fxCO2,color=200                                     