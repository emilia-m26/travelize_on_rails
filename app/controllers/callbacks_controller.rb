class CallbacksController < Devise::OmniauthCallbacksController
    def github
        @traveler = Traveler.from_omniauth(request.env["omniauth.auth"])
        sign_in_and_redirect @traveler
    end 
end 