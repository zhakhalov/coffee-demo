module.exports = (grunt) ->
  grunt.initConfig
    jade: compile:
      options: pretty: true 
      files: [
        src: "views/index.jade"
        dest: "public/index.html"
      ]
    coffee:
      compile:
        options:
          join: true
          sourceMap: true
          bare: true
          sourceMapDir: 'public/app' 
        files: 'public/dist/js/app.js': ["public/app/app.coffee"]
    concat: vendor: files: 'public/dist/js/vendor.js': [
        'public/bower_components/jquery/dist/jquery.js'
        'public/bower_components/bootstrap/dist/js/bootstrap.js'
        'public/bower_components/angular/angular.js'
      ]
    compass: dist: options: 
      config: 'public/scss/config.rb'
      basePath: 'public/scss'
    copy: css:
      src: 'public/scss/css/styles.css'
      dest: 'public/dist/css/styles.css'
        
    
  grunt.registerTask 'build', ['jade', 'coffee', 'concat:vendor', 'compass', 'copy:css' ]
		
  grunt.loadNpmTasks 'grunt-contrib-jade'
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-concat'
  grunt.loadNpmTasks 'grunt-contrib-compass'
  grunt.loadNpmTasks 'grunt-contrib-copy'