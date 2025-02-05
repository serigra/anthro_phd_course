
cv_plot_hc <- function(data = data){

hchart(data,
       type = "xrange",
       hcaes(x = start_date, x2 = end_date, 
             y = cat, name = activity,
             group = chapter),color = levels(d.cv.hc$chapter.col),
) %>% 
  hc_xAxis(
    title = FALSE, type = "datetime",
    labels = list(style = list(fontSize = "16px"))
  ) %>% 
  hc_yAxis(
    title = FALSE, labels = list(style = list(fontSize = "16px")),
    categories = data$activity) %>%
  hc_plotOptions(xrange = list(pointWidth = 40, grouping = FALSE, colorByPoint = FALSE),
                 enableMouseTracking = FALSE, 
                 column = list(dataLabels = list(enabled = TRUE))) 
}
