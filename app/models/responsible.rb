class Responsible < ApplicationRecord
  email_format_regex = URI::MailTo::EMAIL_REGEXP
  validates :email, format: { with: email_format_regex }
end
