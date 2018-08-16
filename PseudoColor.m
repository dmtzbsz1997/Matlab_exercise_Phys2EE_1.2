function PseudoColor(x,y,z)

% PSEUDOCOLOR  Function to plot a pseudocolour contour
% plot, with colours appropriate to the Waves and Optics
% exercise sets.

  colormap(jet);
  pcolor(x,y,z);
  shading interp;
  caxis([-0.1, +0.1]);
  axis equal;
  colorbar;
  
  
  return;