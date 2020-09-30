% Example showing the default coastline and all of the different resolutions
% of GSHHS coastlines as we zoom in on a section of Prince Edward Island.
win_start
    clf
    axes('position',[.35 .6 .37 .37]);
    m_proj('albers equal-area','lat',[15 -60],'long',[-90 -40],'rect','on');
    m_coast('patch',[0 1 0]);
    m_grid('linestyle','none','linewidth',2,'tickdir','out',...
           'xaxisloc','top','yaxisloc','right','fontsize',6);
%    m_text(-69,51,'Standard coastline','color','r','fontweight','bold');
%    m_ruler([.5 .9],.8,3,'fontsize',8)
    
    axes('position',[.01 .1 .5 .7]);
    m_proj('albers equal-area','lat',[-41 -47],'long',[-76 -72],'rect','on');
    m_gshhs_h('patch',[.2 .8 .2]);
    m_grid('linestyle','none','linewidth',2,'tickdir','out',...
           'xaxisloc','top','fontsize',6);
%    m_text(-80,52.5,'GSHHS\_C (crude)','color','m','fontweight','bold');
%    m_ruler([.5 .9],.8,2,'fontsize',8);
           
    axes('position',[.45 .05 .47 .47]);
    m_proj('albers equal-area','lat',[-45.18 -45.12],'long',[-73.56 -73.48],'rect','on');
    m_gshhs_f('patch',[.7 .9 .7]);
    m_grid('linestyle','none','linewidth',2,'tickdir','out',...
           'xaxisloc','top','yaxisloc','right','fontsize',6);
%    m_text(-63.95,46.56,'GSHHS\_F (full)','color','m','fontweight','bold');
    m_ruler([.2 .7],.95,4);

%    axes('position',[.1 .1 .9 .9]);
%    line([.3 .5],[.7 .6])