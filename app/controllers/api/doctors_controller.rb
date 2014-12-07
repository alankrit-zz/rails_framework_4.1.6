module Api
  class DoctorsController < ApplicationController
    protect_from_forgery with: :null_session, :if => Proc.new { |c| c.request.format == 'application/json'}
    respond_to :json

  end
end
