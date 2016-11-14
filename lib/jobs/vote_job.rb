module Jobs
  class VoteJob

    def self.perform
      browser = Watir::Browser.new
      browser.goto 'https://www.wishpond.com/lp/1764371/entries/129622379'

      email_address = FFaker::Internet.email.to_s
      email_field = browser.forms.first.inputs.last
      email_field.click

      email_field.send_keys email_address

      browser.buttons[1].click

      # 'http://wshe.es/aYIOYdqe'
      #   generated_email = FFaker::Internet.email
      # "vote":"/api/pages_v1/social_campaigns/1764371/votes"
    end
  end
end
