% 
%  20200930 - Andres Sepulveda (andres.sepulveda@gmail.com)
%        Adapted from https://www.eoas.ubc.ca/~rich/map.html#9._Zoom_in_on_Prince_Edward_Island_to_co
%
% Missing: Add lines between corners of an area and a central point in the other area
%
win_start
    clf
    axes('position',[.35 .6 .37 .37]);
    m_proj('albers equal-area','lat',[15 -60],'long',[-90 -40],'rect','on');
    m_coast('patch',[0 1 0]);
    m_grid('linestyle','none','linewidth',2,'tickdir','out',...
           'xaxisloc','top','yaxisloc','right','fontsize',6);
    m_line(-73.525,-45.155,'marker','*','markersize',8,'color','r')
    
    axes('position',[.01 .1 .5 .7]);
    m_proj('albers equal-area','lat',[-41 -47],'long',[-76 -72],'rect','on');
    m_gshhs_h('patch',[.2 .8 .2]);
    m_grid('linestyle','none','linewidth',2,'tickdir','out',...
           'xaxisloc','top','fontsize',6);
    m_line(-73.525,-45.155,'marker','*','markersize',8,'color','r')
    
    axes('position',[.45 .05 .47 .47]);
    m_proj('albers equal-area','lat',[-45.18 -45.12],'long',[-73.56 -73.48],'rect','on');
    m_gshhs_f('patch',[.7 .9 .7]);
    m_grid('linestyle','none','linewidth',2,'tickdir','out',...
           'xaxisloc','top','yaxisloc','right','fontsize',6);
    m_ruler([.2 .7],.95,4);
    m_line(-73.525,-45.155,'marker','*','markersize',8,'color','r')
    
    m_text(-73.565,-45.187,'Las Huichas Island','color','k','fontweight','bold','fontsize',14);
    m_text(-73.575,-45.188,'*','color','r','fontweight','bold','fontsize',28);
    
