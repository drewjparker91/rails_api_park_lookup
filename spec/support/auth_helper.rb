module AuthHelper
  def token_auth
    token = 'SomeRandomToken'
    request.env['token'] = ActionController::HttpAuthentication::Token.encode_credentials(token)
  end
end