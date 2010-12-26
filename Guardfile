# A sample Guardfile
# More info at http://github.com/guard/guard#readme

guard 'test' do
   watch('^app/models/(.*)\.rb')                       { |m| "test/unit/#{m[1]}_test.rb" }
   watch('^app/controllers/(.*)\.rb')                  { |m| "test/functional/#{m[1]}_test.rb" }
   watch('^app/controllers/application_controller.rb') { "test/functional" }
   watch('^app/controllers/application_controller.rb') { "test/integration" }
   watch('^app/views/(.*)\.rb')                        { "test/integration" }
   watch('^lib/(.*)\.rb')                              { |m| "test/lib/#{m[1]}_test.rb" }
   watch('^test/(.*)_test.rb')
   watch('^test/factories.rb')                         { "test/unit" }
   watch('^test/test_helper.rb')                       { "test" }
 end