module Admin::V1
  class OwnerApiController < ApplicationController
    include AuthenticableOwner
    include Authenticable
  end
end

