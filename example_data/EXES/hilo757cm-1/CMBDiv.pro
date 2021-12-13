pro CMBDiv,smoothFac=smoothFac,order=order,pow=pow

  if not keyword_set(smoothFac) then smoothFac = 0
  if not keyword_set(order) then order = 0
  if not keyword_set(pow)   then pow = 0.65

  ;Only 1 R Leo file so no CMB
  fits_read,'rleo_oct2018_SPC.fits',im1,hd1

  ;Ceres 
  fits_read,'/Users/emontiel/EXES--PostDoc/Data/AGBStars/ceres/hilo757cm-1/ceres_apr2019_CMB.fits',im2,hd2

  ;CO2 & H2O models
  readcol,'/Users/emontiel/EXES--PostDoc/Data/AGBStars/12C-16O2_700-800_700K_0.010000.sigma',wnCO2,sigCO2,format='d,d'
  readcol,'/Users/emontiel/EXES--PostDoc/Data/AGBStars/1H2-16O_700-800_700K_0.010000.sigma',wvnH2O,sigH2O,format='d,d'

  ;expansion velocity factored in
  dopplerShift = -29.6902198268
  dopplerShift = dopplerShift/3.0d5
  dS = '-29.6902198268'
  ;no expansion velocity
  dopplerShift2 = -22.351221
  dopplerShift2 = dopplerShift2/3.0d5
  dS2 = '-22.351221'
  
  
  wv1 = im1[*,0,order]*(1+dopplerShift2)
  at1 = im1[*,3,order]
  
  wv2 = im2[*,0,order+1]*(1+dopplerShift2)
  at2 = im2[*,3,order+1]

  x1 = min(wv2)
  x2 = max(wv1)

  idx1 = where(wv1 ge x1 and wv1 le x2,ct1)
  idx2 = where(wv2 ge x1 and wv2 le x2,ct2)

  fx1 = smooth(im1[idx1,1,order]/median(im1[idx1,1,order],/even),smoothFac,/nan)
  fx2 = smooth(im2[idx2,1,order+1]/median(im2[idx2,1,order+1],/even),smoothFac,/nan)

  mc_interpspec,wv2[idx2],fx2,wv1[idx1],ffx2

  plot,wv1[idx1],fx1/(ffx2^pow),psym=10,xrange=[x1-.15,x2+.15],/xsty
  oplot,wv1[idx1],fx1,color=150,linestyle=3
  oplot,wv1[idx1],ffx2^pow,color=100,linestyle=3
  oplot,wv1[idx1],at1[idx1],color=254,linestyle=2

  oplot,wnCO2,gauss_smooth(exp(-1d19*sigCO2),2),color=200
  oplot,wvnH2O,gauss_smooth(exp(-3d20*sigH2O),2),color=50

  
end
