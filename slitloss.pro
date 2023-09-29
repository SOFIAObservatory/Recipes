function slitloss, psfsize=psfsize, slitwidth=slitwidth,slitheight=slitheight, woffset=woffset, hoffset=hoffset, draw=draw, g=g

;  if n_params() eq 0 then begin
;  print,'slitloss, psfsize=psfsize,
;  slitwidth=slitwidth,slitheight=slitheight, woffset=woffset,
;  hoffset=hoffset, draw = draw'
;  retall
;endif

  if not(keyword_set(psfsize)) then psfsize= 2.0
  if not(keyword_set(slitwidth)) then slitwidth= 2.4
  if not(keyword_set(slitheight)) then slitheight= 40.0
  if not(keyword_set(woffset)) then woffset= 0.0
  if not(keyword_set(hoffset)) then hoffset= 0.0

; grid scale is 0.1" per pixel  
  g=gaussian_function([psfsize,psfsize]*10,width=1001, maximum=1.0)

  x1=500-round(slitwidth*10)+round(woffset*10)
  x2=500+round(slitwidth*10)+round(woffset*10)
  y1=500-round(slitheight*10)+round(hoffset*10)
  y2=500+round(slitheight*10)+round(hoffset*10)

  if keyword_set(draw) then draw_flag = 1 else draw_flag = 0

  if draw_flag then begin
  display,/asp,g
  oplot, lines=3, [x1,x2],[1,1]*y1
  oplot, lines=3, [x1,x2],[1,1]*y2
  oplot, lines=3, [1,1]*x1,[y1,y2]
  oplot, lines=3, [1,1]*x2,[y1,y2]
endif else begin
endelse
    
  thruput = total(g(x1:x2,y1:y2))/total(g)

  print, "The throughput factor of the slit is: " 
  return, thruput
  
end
