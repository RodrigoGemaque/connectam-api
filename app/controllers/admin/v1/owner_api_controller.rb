module Admin::V1
  class OwnerApiController < ApplicationController
    include AuthenticableOwner
  end
end

