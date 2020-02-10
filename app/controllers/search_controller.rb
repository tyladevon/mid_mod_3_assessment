class SearchController < ApplicationController
  def index
    render locals: {
      members: MemberInfo.new(params[:house]).members_get
    }
  end
end
