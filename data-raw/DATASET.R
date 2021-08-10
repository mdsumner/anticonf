
## -- anticonf
library(dplyr)
x <- tibble::as_tibble(tools::CRAN_package_db())
db <- x %>% filter(stringr::str_detect(Maintainer, "Ooms"))
urls <- select(db, BugReports) %>% filter(!is.na(BugReports))
u <- gsub("/issues", "", unlist(lapply(strsplit(urls$BugReports, "github.com/"), "[", 2)))
tt <- "https://raw.githubusercontent.com/{u}/master/configure"
l <- lapply(glue::glue(tt), function(a) {b <- try(readLines(a)); if (inherits(b, "try-error")) NULL else b})
names(l) <- unlist(lapply(strsplit(u, "/"), "[", 2))
bad <- unlist(lapply(l, is.null))
l <- l[!bad]
dir.create("./configure", showWarnings = FALSE)
for (i in seq_along(l)) writeLines(l[[i]], file.path("./configure", names(l)[i]))


## -- autoconf
dir.create("configure.ac", showWarnings = FALSE)
curl::curl_download("https://raw.githubusercontent.com/r-spatial/sf/master/configure.ac", "configure.ac/sf")
curl::curl_download("https://raw.githubusercontent.com/rspatial/terra/master/configure.ac", "configure.ac/terra")
curl::curl_download("https://raw.githubusercontent.com/cran/rgdal/master/configure.ac", "configure.ac/rgdal")

