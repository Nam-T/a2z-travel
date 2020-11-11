module Request
  module JsonHelpers
    def json
      @json ||= Hashie::Mash.new JSON.parse(response.body)
    end
  end
  module VariableHelpers
  end

  module DeviseAuthHelpers
    def prepare_password_reset_token(administrator, redirect_url, params = nil)
      params ||= { email: administrator.email, redirect_url: redirect_url }
      post :create, params: params

      mail = ActionMailer::Base.deliveries.last
      administrator.reload

      mail_reset_token = mail.body.match(/reset_password_token=(.*)\"/)[1]

      mail_reset_token
    end

    def prepare_confirm_token(account, redirect_url, _params = nil)
      account.send_confirmation_instructions(redirect_url: redirect_url)
      mail = ActionMailer::Base.deliveries.last
      mail.body.parts.first.body.raw_source.match(/confirmation_token=([^&]*)\"/)[1]
    end
  end

  module DataHelpers
    def prepare_csv(headers, datas)
      filepath = Tempfile.new.path
      CSV.open(filepath, 'wb') do |csv|
        csv << headers
        datas.each do |data|
          csv << data
        end
      end
      filepath
    end
  end
end
