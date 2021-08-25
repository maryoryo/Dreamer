class DailyMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.daily_mailer.daily_notification.subject
  #
  def daily_notification
    # @greeting = "Hi"

    # mail to: "to@example.org"
    # default to: -> { User.pluck(:email) }
    mail to: ENV['TOMAIL'], subject: "Dreamerです。"
  end
end
