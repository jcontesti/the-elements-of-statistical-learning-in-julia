function plot_gaussian_scatter(X, Y, Ŷ)
    
    # Create plot for training data (X matrix)
    training_plot = scatter(
        X[:,2], 
        X[:,3], 
        group = Y,
        palette = training_palette,
        ticks = false,
        legend = false,
        framestyle = :box,
    )

    # Prepare data to show the decision boundary
    # @TODO is there any more convenient way to do it?
    step = 0.01
    x1 = range(minimum(X[:,2]), maximum(X[:,2]), step=step)
    x2 = range(minimum(X[:,3]), maximum(X[:,3]), step=step)

    # Add the decision boundary at Ŷ = 0.5
    contour!(
        training_plot,
        x1, 
        x2,
        Ŷ,
        levels = [0.5],
        color = :black,
    )
    
end