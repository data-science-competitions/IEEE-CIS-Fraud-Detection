ci_get_job_name <- function(){
    tolower(paste0(Sys.getenv("TRAVIS_JOB_NAME"), Sys.getenv("APPVEYOR_JOB_NAME")))
}

show_error_log <- function(){
    if(is_travis())
        print("/home/travis/build/tidylab/boilerplate/boilerplate.Rcheck/00check.log")
}

is_travis <- function(){
    identical(Sys.getenv("TRAVIS"), "true")
}
