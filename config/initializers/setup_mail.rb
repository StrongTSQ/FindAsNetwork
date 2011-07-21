ActionMailer::Base.smtp_settings = {
  :address            => 'smtp.gmail.com',
  :port               => 587,
  :domain             => '', #you can also use google.com
  :user_name          => 'StrongTSQ',
  :password           => 'tsqoooooooo',
  :authentication     => :plain,
  :enable_starttls_auto => true
}