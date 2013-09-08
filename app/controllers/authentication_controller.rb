class AuthenticationController < ApplicationController
  # /canvas
  def canvas
    redirect_to "/auth/facebook?signed_request=#{request.params['signed_request']}&state=canvas"
  end

  # /auth/:provider/callback'
  def auth
    provider = params[:provider]
    puts "provider: #{provider}"
    puts "params: #{params.to_json}"
    render :json => {:provider => provider}.to_json
  end

  # /auth/failure
  def failure
    render :json => {:error => 'error'}.to_json
  end
end