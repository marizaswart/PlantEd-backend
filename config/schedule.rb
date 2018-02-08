# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
every 1.minute do
  #runner 'UserPlant.all.each {|plant| plant.send_notification}'
  system "cd /Users/thomas/CraftAcademy/student_work_18/PlantEd-backend && bundle exec bin/rails runner -e development 'UserPlant.all.each {|plant| plant.send_notification}'"
end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever
