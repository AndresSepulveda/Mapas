close all
clear all
addpath('C:\Users\dgeo\m_map')
hres=load('coordenadas_2doart.txt');
lon=hres(1:end,2);
lat=hres(1:end,1);
whos lat lon
M=m_shaperead('C:\Users\dgeo\m_map\private\ne_110m_admin_0_countries');  
m_proj('miller','lat',82);
%m_gshhs_l('patch',[.8 .8 .8],'edgecolor','none');
m_coast('patch',[.8 .8 .8]);
%m_coast('color',[0 .6 0]);
m_line(lon,lat,'marker','.','color','r',...
          'linest','none','markerfacecolor','w','clip','point','MarkerSize',11);
m_line(-73.4,-45.1,'marker','.','color','b',...
          'linest','none','markerfacecolor','w','clip','point','MarkerSize',15);      
for k=1:length(M.ncst)
     m_line(M.ncst{k}(:,1),M.ncst{k}(:,2),'color',[0 0 0]); 
end;
m_grid('linestyle','none','box','fancy','tickdir','out');
%m_northarrow(-150,0,40,'type',4,'linewi',.5);
print -deps mapa_William_art2_final.eps
