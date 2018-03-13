function [] = save_fig(filename, fig)
%SAVE_PLOT Save plot to a file with name filename.

    % Set paper size
    fig.PaperUnits = 'inches';
    fig.PaperPosition = [0 0 6 3];
    fig.PaperSize = [6 3];
    % Wait for the figure to render
    drawnow;
    % And print to the file
    print(fig, filename, '-dpdf', '-r0');
end
