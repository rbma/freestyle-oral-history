'use strict'

config = require '../config'
changed = require 'gulp-changed'
gulp = require 'gulp'
gulpif = require 'gulp-if'
browserSync = require 'browser-sync'

gulp.task 'fonts', ->

    return gulp.src(config.fonts.src)
        .pipe(changed(config.fonts.dest))
        .pipe(gulp.dest(config.fonts.dest))
        .pipe(gulpif(browserSync.active, browserSync.reload({
            stream: true
            once: true
            })))