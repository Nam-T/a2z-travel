module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_account

    def connect
      self.current_account = find_verified_account
    end

    private

    def find_verified_account
      if verified_account = Account.find_by(id: cookies.signed['account.id'])
        verified_account
      else
        reject_unauthorized_connection
      end
    end
  end
end
