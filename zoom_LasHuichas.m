win_start

    clf
%    axes('position',[.35 .6 .37 .37]);
%    m_proj('albers equal-area','lat',[40 60],'long',[-90 -50],'rect','on');
%    m_coast('patch',[0 1 0]);
%    m_grid('linestyle','none','linewidth',2,'tickdir','out',...
%           'xaxisloc','top','yaxisloc','right','fontsize',6);
%    m_text(-69,51,'Standard coastline','color','r','fontweight','bold');
%    m_ruler([.5 .9],.8,3,'fontsize',8)
    
    axes('position',[.1 .1 .4 .8]);
    m_proj('albers equal-area','lat',[-60 -15],'long',[-80 -60],'rect','on');
    m_gshhs_c('patch',[.2 .8 .2]);
    m_grid('linestyle','none','linewidth',2,'tickdir','out',...
           'xaxisloc','top','fontsize',6);
    m_text(-75,-30,'South America','color','k','fontweight','bold');
    m_line(-73.56,-45.18,'marker','o','linewi',2,'linest','none','color','r','markersize',8);
    m_ruler([.5 .9],.8,2,'fontsize',8);
      

    axes('position',[.55 .35 .37 .37]);
    m_proj('albers equal-area','lat',[-45.18 -45.135],'long',[-73.56 -73.49],'rect','on');
    m_gshhs_f('patch',[.7 .9 .7]);
    m_grid('linestyle','none','linewidth',2,'tickdir','out',...
           'xaxisloc','top','yaxisloc','right','fontsize',6);
    m_text(-73.54,-45.15,'Isla Las Huichas','color','k','fontweight','bold');
    m_ruler([.5 .8],.2,3,'fontsize',8);

