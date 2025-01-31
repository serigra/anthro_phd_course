


cv_plot <- function(data = data){
  
  # cv plot
  p <- 
    ggplot2::ggplot(data, aes(x = start_date, y =  activity,
                              xend = end_date, yend = activity,
                              colour = chapter)
    ) +
    # background shaded bands
    # ggplot2::geom_rect(data = date_range_df, ggplot2::aes(xmin = start,
    #                                                       xmax = end,
    #                                                       ymin = -Inf,
    #                                                       ymax = Inf),
    #                    inherit.aes=FALSE,
    #                    alpha = 0.4,
    #                    fill = colour_stripe) +
    ggplot2::geom_segment(lineend = 'round', size = 5.5) +
    ggplot2::scale_y_discrete("") +
    scale_x_date(date_breaks = '1 year', date_labels = "%Y", limits = as.Date(c('2007-01-01','2023-12-31'))) +
    xlab('') + 
    ggplot2::theme_minimal() +
    ggplot2::scale_colour_manual(values = wesanderson::wes_palette("Darjeeling1")) +
    ggplot2::theme(text = element_text(family = "sans"),
                   axis.text.x = element_text(angle = 45, vjust = -0.1, size = 12),
                   axis.text.y.left = element_text(face = ifelse(activity == chapter, yes = "bold", no = "plain"), size = 14),
                   panel.grid.minor.x = element_blank(),
                   panel.grid.minor.y = element_blank(),
                   panel.grid.major.y = element_blank(),
                   legend.position = "none")
  
  return(p)
  
}

