// This shows a full config file!
module.exports = function (grunt) {
    grunt.initConfig({
        watch: {
            files: 'images/css/fontastic.css',
            tasks: ['sass']
        },
        sass: {
            dev: {
                files: {
                    'images/vendor/bootstrap/css/bootstrap.min.css': 'images/css/fontastic.css'
                }
            }
        },
        browserSync: {
            dev: {
                bsFiles: {
                    src : [
                        'images/vendor/bootstrap/css/bootstrap.min.css',
                        'WebRoot/main.jsp'
                    ]
                },
                options: {
                    watchTask: true,
                    server: './app'
                }
            }
        }
    });

    // load npm tasks
    grunt.loadNpmTasks('grunt-contrib-sass');
    grunt.loadNpmTasks('grunt-contrib-watch');
    grunt.loadNpmTasks('grunt-browser-sync');

    // define default task
    grunt.registerTask('default', ['browserSync', 'watch']);
};