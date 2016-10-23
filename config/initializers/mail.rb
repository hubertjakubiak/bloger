ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "gmail.com",
  :user_name            => "hubert@admail.pl",
  :password             => "123iksemxmam",
  :authentication       => "plain",
  :enable_starttls_auto => true
}