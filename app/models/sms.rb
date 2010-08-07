require 'clickatell'

class SMS
  def create(recipient, message_text)
    api.send_message(recipient, message_text)
  end
  
  private
    def api
      @api ||= Clickatell::API.authenticate(
        AppConfig.clickatell_api_id,
        AppConfig.clickatell_username,
        AppConfig.clickatell_password
      )
    end
end

