
#' get TIC and retention time from scans list of ft file
#'
#' @description TIC: total ion chromatogram.
#' @param ft Scans list of ft file
#'
#' @return A data.frame of TIC, relative TIC and retention time
#' @export
#'
#' @examples
#' a <- readAllScanMS2("demo.FT2")
#' b <- getTIC(a)
getTIC <- function(ft) {
  tic <- as.data.frame(t(sapply(ft, function(x) {
    return (c(
      RetentionTime = x$retentionTime,
      TIC = x$TIC
    ))
  })))
  maxTIC <- max(tic$TIC)
  tic$RelativeTic <- tic$TIC / maxTIC * 100
  return(tic)
}

#' Plot TIC of MS1 or MS2
#'
#' @param tic A data.frame of TIC and retention time
#'
#' @return a ggplot2 object
#' @importFrom ggplot2 scale_y_log10
#' @export
#'
#' @examples
#' a <- readAllScanMS2("demo.FT2")
#' b <- getTIC(a)
#' plotTIC(b)
plotTIC <- function(tic) {
  return(
    ggplot2::ggplot(
      tic,
      ggplot2::aes(x = RetentionTime,
                   ymax = RelativeTic,
                   ymin = 0)
    ) +
      ggplot2::geom_linerange(size = 0.2) +
      ggplot2::scale_x_continuous(breaks = seq(0, 200, by = 10)) +
      ggplot2::scale_y_continuous(
        breaks = seq(0, 100, by = 25)
      ) +
      ggplot2::theme(
        panel.grid = ggplot2::element_blank(),
        panel.background = ggplot2::element_blank(),
        legend.key = ggplot2::element_blank(),
        panel.border = ggplot2::element_rect(
          fill = NA,
          color = "grey10",
          linetype = 1,
          size = 0.5
        ),
        text = ggplot2::element_text(size = 15)
      ) +
      ggplot2::xlab("Retention Time (Min)") +
      ggplot2::ylab("Relative TIC")
  )
}
