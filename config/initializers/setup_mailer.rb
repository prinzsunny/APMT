ActionMailer::Base.delivery_method= :smtp
ActionMailer::Base.smtp_settings = {
    :address => "smtp.sendgrid.net",
    :port => 587,
    :domain => "apmt.herokuapp.com",
    :authentication => :plain,
    :user_name => "app27504181@heroku.com",
    :password => "4clojvcr",
    :domain => "heroku.com",
    :enable_starttls_auto => true
}