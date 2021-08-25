# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
env :PATH, ENV['PATH']
set :output, "log/cron.log"  #ログファイルの出力先を指定
set :environment, :development
#
# set :output, "/path/to/my/cron_log.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# every 1.days, at: '6:00 pm' do
# every :hour do
every 1.minute do
# DailyMailerのdaily_notificationメソッド実行
# ※.deliverを付けないと動かない！
  runner "DailyMailer.daily_notification.deliver"
end


# Learn more: http://github.com/javan/whenever