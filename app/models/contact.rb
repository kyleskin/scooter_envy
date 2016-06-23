class Contact < MailForm::Base
  attribute :name,     :validate => true
  attribute :email,    :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message,  :validate => true
  attribute :nickname, :captcha => true

  def headers
    {
      :subject => "Scooter Envy Inquiry",
      :to => "scooterenvydesigns@gmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end
