function [] = save_fig(filename, fig, size)
%SAVE_PLOT Save plot to a file with name filename.

    if nargin < 3
        size = [6 3];
    end

    % Set paper size
    fig.PaperUnits = 'inches';
    fig.PaperPosition = [0 0 size];
    fig.PaperSize = [size];

    % Wait for the figure to render
    drawnow;
    % And print to the file
    print(fig, filename, '-dpdf', '-r0');
end
